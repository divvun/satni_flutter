// Package imports:
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/filter/index.dart';
import 'package:satni/graphql_api.dart';
import 'package:satni/search/index.dart';

final stemNotifierProvider =
    StateNotifierProvider.autoDispose<StemNotifier, StemState>(
        (AutoDisposeStateNotifierProviderRef<StemNotifier, StemState> ref) {
  print('stemNotifierProvider');
  final search = ref.watch(searchProvider);
  final filter = ref.watch(filterProvider);

  final queryOptions = WatchQueryOptions(
    document: ALL_LEMMAS_QUERY_DOCUMENT,
    variables: AllLemmasArguments(
      inputValue: search.searchText,
      searchMode: search.searchMode.name,
      srcLangs: filter.wantedSrcLangs,
      targetLangs: filter.wantedTargetLangs,
      wantedDicts: filter.wantedDicts,
    ).toJson(),
  );
  return StemNotifier(queryOptions, search.searchText);
});
