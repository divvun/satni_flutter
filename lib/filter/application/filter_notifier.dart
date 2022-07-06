// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/filter/index.dart';

class FilterNotifier extends StateNotifier<Filter> {
  FilterNotifier() : super(Filter());

  void updateSrcLangs(List<String> srcLangs) {
    state = state.copyWith(wantedSrcLangs: srcLangs);
  }

  void updateTargetLangs(List<String> targetLangs) {
    state = state.copyWith(wantedTargetLangs: targetLangs);
  }

  void updateDicts(List<String> dicts) {
    state = state.copyWith(wantedDicts: dicts);
  }
}

final filterProvider =
    StateNotifierProvider<FilterNotifier, Filter>((ref) => FilterNotifier());
