// Package imports:
import 'package:graphql/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/api.dart';
import 'package:satni/filter/pod/filter.dart';
import 'package:satni/graphql_api.dart';
import 'package:satni/search/search.dart';

// Project imports:

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
