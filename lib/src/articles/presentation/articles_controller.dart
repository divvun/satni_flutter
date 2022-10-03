// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import '../../common_providers/satni_service_provider.dart';
import '../../filter/application/filter_notifier.dart';

final articlesControllerProvider = StateNotifierProvider.autoDispose
    .family<ArticlesController, AsyncValue<List<Article>>, String>(
        (ref, lemma) {
  return ArticlesController(lemma, ref);
});

class ArticlesController extends StateNotifier<AsyncValue<List<Article>>> {
  ArticlesController(this._lemma, this._ref)
      : super(const AsyncValue.loading()) {
    init();
  }

  final String _lemma;
  final AutoDisposeStateNotifierProviderRef<ArticlesController,
      AsyncValue<List<Article>>> _ref;

  void init() async {
    final filter = _ref.watch(filterProvider);
    final satniSearchRepository = _ref.watch(satniServiceProvider);

    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return await satniSearchRepository.getArticles(
        _lemma,
        filter.wantedSrcLangs,
        filter.wantedTargetLangs,
        filter.wantedDicts,
      );
    });
  }
}
