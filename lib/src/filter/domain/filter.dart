// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

@freezed
class Filter with _$Filter {
  factory Filter({
    @Default([
      'eng',
      'fin',
      'lat',
      'nno',
      'nob',
      'sma',
      'smj',
      'sme',
      'smn',
      'sms',
      'swe',
    ])
        List<String> wantedSrcLangs,
    @Default([
      'eng',
      'fin',
      'lat',
      'nno',
      'nob',
      'sma',
      'smj',
      'sme',
      'smn',
      'sms',
      'swe',
    ])
        List<String> wantedTargetLangs,
    @Default([
      'termwiki',
      'gtsmenob',
      'gtnobsme',
      'gtnobsma',
      'gtsmanob',
      'gtsmefin',
      'gtfinsme',
      'gtsmesmn',
      'gtsmnsme',
      'gtfinsmn',
      'gtsmnfin',
      'gtfinnob',
      'sammallahtismefin',
      'sammallahtifinsme',
    ])
        List<String> wantedDicts,
  }) = _Filter;
}
