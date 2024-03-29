// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'search.dart';

class SearchNotifier extends StateNotifier<Search> {
  SearchNotifier() : super(Search());

  void updateSearchText(String searchText) {
    state = state.copyWith(searchText: searchText);
  }

  void updateSearchMode(SearchModes searchMode) {
    state = state.copyWith(searchMode: searchMode);
  }
}

final searchProvider =
    StateNotifierProvider<SearchNotifier, Search>((ref) => SearchNotifier());
