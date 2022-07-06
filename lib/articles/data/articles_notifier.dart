// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/api.dart';
import 'package:satni/articles/index.dart';
import 'package:satni/filter/models/filter.dart';
import 'package:satni/filter/pod/filter.dart';

final articlesProvider = StateNotifierProvider.family<ArticlesNotifier,
    AsyncValue<Articles>, String>((ref, lemma) {
  final filter = ref.watch(filterProvider);

  return ArticlesNotifier(lemma, filter);
});

class ArticlesNotifier extends StateNotifier<AsyncValue<Articles>> {
  ArticlesNotifier(String lemma, Filter filter)
      : _filter = filter,
        _lemma = lemma,
        super(const AsyncValue.loading()) {
    init();
  }
  final Filter _filter;
  final String _lemma;
  void init() async {
    state = const AsyncValue.loading();
    try {
      final terms = await getTerms(
          _lemma, _filter.wantedSrcLangs, _filter.wantedTargetLangs);
      final dicts = await getDicts(_lemma, _filter.wantedSrcLangs,
          _filter.wantedTargetLangs, _filter.wantedDicts);

      state = AsyncValue.data(Articles(terms, dicts));
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
