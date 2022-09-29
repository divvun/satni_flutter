// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../../common_providers/satni_service_provider.dart';
import '../../filter/application/filter_notifier.dart';
import '../domain/articles.dart';

final articlesControllerProvider = StateNotifierProvider.autoDispose
    .family<ArticlesController, AsyncValue<Articles>, String>((ref, lemma) {
  return ArticlesController(lemma, ref);
});

class ArticlesController extends StateNotifier<AsyncValue<Articles>> {
  ArticlesController(this._lemma, this._ref)
      : super(const AsyncValue.loading()) {
    init();
  }

  final String _lemma;
  final AutoDisposeStateNotifierProviderRef _ref;

  void init() async {
    final filter = _ref.watch(filterProvider);
    final satniSearchRepository = _ref.watch(satniServiceProvider);

    state = const AsyncValue.loading();
    try {
      final terms = await satniSearchRepository.getTerms(
        _lemma,
        filter.wantedSrcLangs,
        filter.wantedTargetLangs,
      );
      final dicts = await satniSearchRepository.getDicts(
        _lemma,
        filter.wantedSrcLangs,
        filter.wantedTargetLangs,
        filter.wantedDicts,
      );

      state = AsyncValue.data(Articles(terms, dicts));
    } catch (e) {
      state = AsyncValue.error(e);
    }
  }
}
