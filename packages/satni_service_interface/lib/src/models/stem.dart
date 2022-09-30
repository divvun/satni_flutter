// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'stemhits.dart';

part 'stem.freezed.dart';
part 'stem.g.dart';

@freezed
class Stem with _$Stem {
  const factory Stem(
      {required String stem,
      required String searchStem,
      required String srclang,
      required List<String> targetlangs,
      @Default([]) List<StemHits> dicts}) = _Stem;

  factory Stem.fromJson(Map<String, dynamic> json) => _$StemFromJson(json);
}
