// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import '../domain/filter.dart';

class FilterNotifier extends StateNotifier<Filter> {
  FilterNotifier() : super(Filter());

  void updateLangGroup(
      String langGroup, List<Map<String, String>> availableDicts) {
    switch (langGroup) {
      case 'satniSmiNonsmi':
        final src = [
          'sma',
          'sme',
          'smj',
          'smn',
          'sms',
        ];
        final target = [
          'eng',
          'fin',
          'nob',
          'nno',
          'swe',
          'lat',
        ];

        state = _makeFilter(src, target, availableDicts);
        break;
      case 'smenob':
        final src = ['sme'];
        final target = ['nob'];
        state = _makeFilter(src, target, availableDicts);
        break;
      case 'smefin':
        final src = ['sme'];
        final target = ['fin'];
        state = _makeFilter(src, target, availableDicts);
        break;
      case 'smesmn':
        final src = ['sme'];
        final target = ['smn'];
        state = _makeFilter(src, target, availableDicts);
        break;
      case 'smanob':
        final src = ['sma'];
        final target = ['nob'];
        state = _makeFilter(src, target, availableDicts);
        break;
      case 'finnob':
        final src = ['fin'];
        final target = ['nob'];
        state = _makeFilter(src, target, availableDicts);
        break;

      default:
        state = Filter();
        break;
    }
  }

  void updateSrcLangs(List<String> srcLangs) {
    state = state.copyWith(wantedSrcLangs: srcLangs);
  }

  void updateTargetLangs(List<String> targetLangs) {
    state = state.copyWith(wantedTargetLangs: targetLangs);
  }

  void updateDicts(List<String> dicts) {
    state = state.copyWith(wantedDicts: dicts);
  }

  Filter _makeFilter(List<String> src, List<String> target,
      List<Map<String, String>> availableDicts) {
    return Filter(
      wantedSrcLangs: src,
      wantedTargetLangs: target,
      wantedDicts: availableDicts
          .where((dict) =>
              dict['name'] == 'termwiki' ||
              (src.contains(dict['src']) && target.contains(dict['target'])))
          .map((dict) => '${dict['name']}')
          .toList(),
    );
  }
}

final filterProvider =
    StateNotifierProvider<FilterNotifier, Filter>((ref) => FilterNotifier());
