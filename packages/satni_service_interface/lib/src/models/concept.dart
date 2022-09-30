import 'package:freezed_annotation/freezed_annotation.dart';

import 'term.dart';
part 'concept.freezed.dart';
part 'concept.g.dart';

@freezed
class Concept with _$Concept {
  const factory Concept({
    required String lang,
    @Default('') String definition,
    @Default('') String explanation,
    required List<Term> terms,
  }) = _Concept;

  factory Concept.fromJson(Map<String, dynamic> json) =>
      _$ConceptFromJson(json);
}
