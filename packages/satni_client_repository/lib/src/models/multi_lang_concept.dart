import 'package:freezed_annotation/freezed_annotation.dart';

import 'concept.dart';
part 'multi_lang_concept.freezed.dart';
part 'multi_lang_concept.g.dart';

@freezed
class MultiLangConcept with _$MultiLangConcept {
  const factory MultiLangConcept({
    required String name,
    List<String>? collections,
    required List<Concept> concepts,
  }) = _MultiLangConcept;

  factory MultiLangConcept.fromJson(Map<String, dynamic> json) =>
      _$MultiLangConceptFromJson(json);
}
