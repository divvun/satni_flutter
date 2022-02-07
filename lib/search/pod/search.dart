import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/models.dart';

class SearchNotifier extends StateNotifier<Search> {
  SearchNotifier() : super(Search());

  void updateSearchText(String searchText) {
    state = state.copyWith(searchText: searchText);
  }
}

final searchProvider =
    StateNotifierProvider<SearchNotifier, Search>((ref) => SearchNotifier());
