// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import 'package:satni/graphql_api.dart';
import 'package:satni/graphql_provider.dart';
import 'package:satni/search/search.dart';

class StemNotifier extends StateNotifier<StemState> {
  StemNotifier(this._queryOptions) : super(const StemState.loading()) {
    fetchStems();
  }

  late QueryResult result;

  final QueryOptions _queryOptions;

  void fetchStems() async {
    state = const StemState.loading();
    try {
      result = await client.query(_queryOptions);

      state = StemState.success(
          AllLemmas$Query.fromJson(result.data ?? {'stemList': []}));
    } catch (e) {
      state = StemState.error('fetchStem error $e');
    }
  }

  void fetchMoreStems(String endCursor) async {
    state = StemState.loadingMore(
        AllLemmas$Query.fromJson(result.data ?? {'stemList': []}));
    try {
      result = await client.fetchMore(
        FetchMoreOptions.partial(
          variables: {'after': endCursor},
          updateQuery: (existingStems, newStems) => {
            'stemList': {
              'pageInfo': newStems!['stemList']['pageInfo'],
              'edges': [
                ...existingStems!['stemList']['edges'],
                ...newStems['stemList']['edges'],
              ],
              'totalCount': newStems['stemList']['totalCount']
            }
          },
        ),
        originalOptions: _queryOptions,
        previousResult: result,
      );
      state = StemState.success(
          AllLemmas$Query.fromJson(result.data ?? {'stemList': []}));
    } catch (e) {
      state = StemState.error('fetchMoreStems error $e');
    }
  }
}
