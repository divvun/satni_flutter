// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stemhits.freezed.dart';
part 'stemhits.g.dart';

@freezed
class StemHits with _$StemHits {
  const factory StemHits({required String dictname, @Default(0) int dicthits}) =
      _StemHits;

  factory StemHits.fromJson(Map<String, dynamic> json) =>
      _$StemHitsFromJson(json);
}
