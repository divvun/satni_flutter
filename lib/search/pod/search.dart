import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni/api.dart';
import 'package:satni/filter/pod/filter.dart';
import 'package:satni/graphql_api.dart';

import '../models/models.dart';

class SearchNotifier extends StateNotifier<Search> {
  SearchNotifier() : super(Search());

  void updateSearchText(String searchText) {
    state = state.copyWith(searchText: searchText);
  }
}

final searchProvider =
    StateNotifierProvider<SearchNotifier, Search>((ref) => SearchNotifier());

final stemProvider = FutureProvider<AllLemmas$Query>((ref) async {
  final search = ref.watch(searchProvider);
  final filter = ref.watch(filterProvider);

  final stems = await getStems(search.searchText, search.searchMode,
      filter.wantedSrcLangs, filter.wantedTargetLangs, filter.wantedDicts);
  return stems;
});
