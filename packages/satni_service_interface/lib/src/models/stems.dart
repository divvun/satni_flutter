// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'stem.dart';

part 'stems.freezed.dart';
part 'stems.g.dart';

@freezed
class Stems with _$Stems {
  const factory Stems(
      {@Default(<Stem>[]) List<Stem> stemList,
      @Default(false) bool hasNextPage,
      @Default(0) int totalCount}) = _Stems;

  factory Stems.fromJson(Map<String, dynamic> json) => _$StemsFromJson(json);
}
