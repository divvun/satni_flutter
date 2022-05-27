// Package imports:
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/filter/pod/filter.dart';
import 'package:satni/graphql_api.dart';
import 'package:satni/search/search.dart';

final stemNotifierProvider = StateNotifierProvider<StemNotifier, StemState>(
    (StateNotifierProviderRef<StemNotifier, StemState> ref) {
  print('stemNotifierProvider');
  final search = ref.watch(searchProvider);
  final filter = ref.watch(filterProvider);

  final QueryOptions queryOptions = QueryOptions(
    document: ALL_LEMMAS_QUERY_DOCUMENT,
    variables: AllLemmasArguments(
      inputValue: search.searchText,
      searchMode: search.searchMode.name,
      srcLangs: filter.wantedSrcLangs,
      targetLangs: filter.wantedTargetLangs,
      wantedDicts: filter.wantedDicts,
    ).toJson(),
  );
  return StemNotifier(queryOptions);
});
