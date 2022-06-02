// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import 'package:satni/graphql_api.dart';
import 'package:satni/graphql_provider.dart';
import 'package:satni/search/search.dart';

class StemNotifier extends StateNotifier<StemState> {
  StemNotifier(this._queryOptions, this._searchText)
      : super(const StemState.initial()) {
    print('constructing stemnotifier $_searchText');
    observableQuery = client.watchQuery(_queryOptions);
    if (_searchText.isNotEmpty) {
      observableQuery.fetchResults();
      listenToStream();
    }
  }

  late ObservableQuery observableQuery;
  String oldEndcursor = '';

  final WatchQueryOptions _queryOptions;
  final String _searchText;

  @override
  void dispose() {
    observableQuery.close();
    super.dispose();
  }

  void listenToStream() {
    print('fetchStems');
    observableQuery.stream.listen((QueryResult result) {
      if (result.isLoading && result.data == null) {
        state = const StemState.loading();
      }

      if (!result.isLoading && result.data != null) {
        state = StemState.success(
            AllLemmas$Query.fromJson(result.data ?? {'stemList': []}));
      }

      final exception = result.exception;

      if (exception != null) {
        state = StemState.error(exception.toString());
      } else {
        final f = AllLemmas$Query.fromJson(result.data ?? {'stemList': []});
        print(
            'query event! ${f.stemList!.edges.length}/${f.stemList!.totalCount}');
      }
    });
  }

  void fetchMoreStems(String endCursor) async {
    print('fetchMore $oldEndcursor');
    if (endCursor != oldEndcursor) {
      print('new endcursor $endCursor');
      oldEndcursor = endCursor;
      state = StemState.loadingMore(AllLemmas$Query.fromJson(
          observableQuery.latestResult!.data ?? {'stemList': []}));

      observableQuery.fetchMore(FetchMoreOptions.partial(
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
      ));
    }
  }
}
