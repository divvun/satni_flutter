// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/articles/index.dart';
import 'package:satni/filter/index.dart';

final articlesServiceProvider = StateNotifierProvider.family<ArticlesService,
    AsyncValue<Articles>, String>((ref, lemma) {
  return ArticlesService(lemma, ref);
});

class ArticlesService extends StateNotifier<AsyncValue<Articles>> {
  ArticlesService(this._lemma, this._ref) : super(const AsyncValue.loading()) {
    init();
  }

  final String _lemma;
  final StateNotifierProviderRef _ref;

  void init() async {
    final filter = _ref.watch(filterProvider);
    final termFetcherRepository = _ref.watch(termFetcherRepositoryProvider);
    final dictFetcherRepository = _ref.watch(dictFetcherRepositoryProvider);

    state = const AsyncValue.loading();
    try {
      final terms = await termFetcherRepository.getTerms(
          _lemma, filter.wantedSrcLangs, filter.wantedTargetLangs);
      final dicts = await dictFetcherRepository.getDicts(_lemma,
          filter.wantedSrcLangs, filter.wantedTargetLangs, filter.wantedDicts);

      state = AsyncValue.data(Articles(terms, dicts));
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
