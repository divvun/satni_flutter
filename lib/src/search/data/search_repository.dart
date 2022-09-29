// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import '../../filter/application/filter_notifier.dart';
import '../../graphql/graphql_provider.dart';
import '../../graphql/queries/all_lemmas.graphql.dart';
import '../domain/search_notifier.dart';
import '../domain/search_state.dart';

class SearchRepository extends StateNotifier<SearchState> {
  SearchRepository(this._queryOptions, this._searchText, this._client)
      : super(const SearchState.initial()) {
    print('constructing stemnotifier $_searchText');
    observableQuery = _client.watchQuery$AllLemmas(_queryOptions);
    if (_searchText.isNotEmpty) {
      state = const SearchState.loading();
      observableQuery.fetchResults();
      listenToStream();
    }
  }

  late ObservableQuery observableQuery;
  String oldEndcursor = '';

  final GraphQLClient _client;
  final WatchOptions$Query$AllLemmas _queryOptions;
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
        state = const SearchState.loading();
      }

      if (!result.isLoading && result.data != null) {
        state = SearchState.success(result.parsedData as Query$AllLemmas);
      }

      final exception = result.exception;

      if (exception != null) {
        state = SearchState.error(exception.toString());
      } else {
        final f = result.parsedData as Query$AllLemmas;
        print('query event! '
            '${f.stemList!.edges.length}/${f.stemList!.totalCount}');
      }
    });
  }

  void fetchMoreStems(String endCursor) async {
    print('fetchMore $oldEndcursor');
    if (endCursor != oldEndcursor) {
      print('new endcursor $endCursor');
      oldEndcursor = endCursor;
      state = SearchState.loadingMore(
          observableQuery.latestResult!.parsedData as Query$AllLemmas);

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

final searchRepositoryProvider = StateNotifierProvider.autoDispose<
        SearchRepository, SearchState>(
    (AutoDisposeStateNotifierProviderRef<SearchRepository, SearchState> ref) {
  print('stemNotifierProvider');
  final search = ref.watch(searchProvider);
  final filter = ref.watch(filterProvider);

  final result = client.query$AllLemmas(Options$Query$AllLemmas(
      variables: Variables$Query$AllLemmas(
    inputValue: search.searchText,
    searchMode: search.searchMode.name,
    srcLangs: filter.wantedSrcLangs,
    targetLangs: filter.wantedTargetLangs,
    wantedDicts: filter.wantedDicts,
  )));

  final queryOptions = WatchOptions$Query$AllLemmas(
    variables: Variables$Query$AllLemmas(
      inputValue: search.searchText,
      searchMode: search.searchMode.name,
      srcLangs: filter.wantedSrcLangs,
      targetLangs: filter.wantedTargetLangs,
      wantedDicts: filter.wantedDicts,
    ),
  );
  return SearchRepository(queryOptions, search.searchText, client);
});
