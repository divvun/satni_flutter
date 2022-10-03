// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'term.dart';

part 'concept.freezed.dart';
part 'concept.g.dart';

@freezed
class Concept with _$Concept {
  const factory Concept({
    required String name,
    @Default([]) List<String> collections,
    @Default('') String definition,
    @Default('') String explanation,
    required List<Term> terms,
  }) = _Concept;

  factory Concept.fromJson(Map<String, dynamic> json) =>
      _$ConceptFromJson(json);
}
