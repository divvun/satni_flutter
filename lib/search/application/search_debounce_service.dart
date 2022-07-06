// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

// Project imports:
import 'package:satni/search/index.dart';

class SearchDebounceService {
  SearchDebounceService(this.ref) {
    _searchTerms
        .distinct()
        .debounce((_) => TimerStream(true, const Duration(milliseconds: 500)))
        .listen((text) {
      ref.read(searchProvider.notifier).updateSearchText(text);
    });
  }

  ProviderRef ref;

  // Input stream (search terms)
  final _searchTerms = BehaviorSubject<String>();

  void searchStem(String searchString) {
    _searchTerms.add(searchString);
  }

  void dispose() {
    _searchTerms.close();
  }
}

final searchDebounceServiceProvider = Provider<SearchDebounceService>((ref) {
  return SearchDebounceService(ref);
});
