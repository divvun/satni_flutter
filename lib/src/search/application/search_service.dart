// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

// Project imports:
import 'package:satni/src/search/domain/search_notifier.dart';
import '../../common_providers/satni_service_provider.dart';
import '../../filter/application/filter_notifier.dart';

final searchControllerProvider =
    StateNotifierProvider.autoDispose<SearchController, AsyncValue<Stems>>(
        (ref) => SearchController(ref));

class SearchController extends StateNotifier<AsyncValue<Stems>> {
  SearchController(this._ref) : super(const AsyncData(Stems())) {
    getStems();
  }

  final AutoDisposeStateNotifierProviderRef<SearchController, AsyncValue<Stems>>
      _ref;

  void getStems() async {
    final search = _ref.watch(searchProvider);
    final filter = _ref.watch(filterProvider);
    final satniSearchRepository = _ref.watch(satniServiceProvider);
    if (search.searchText.isNotEmpty) {
      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        return await satniSearchRepository.getStems(
            search.searchText,
            search.searchMode.name,
            filter.wantedSrcLangs,
            filter.wantedTargetLangs,
            filter.wantedDicts);
      });
    }
  }

  void fetchMoreStems() async {
    final satniSearchRepository = _ref.watch(satniServiceProvider);
    state = await AsyncValue.guard(() async {
      return await satniSearchRepository.fetchMoreStems();
    });
  }
}
