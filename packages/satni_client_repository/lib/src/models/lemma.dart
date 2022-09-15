import 'package:freezed_annotation/freezed_annotation.dart';

import 'spurious_attribute.dart';

part 'lemma.freezed.dart';
part 'lemma.g.dart';

@freezed
class Lemma with _$Lemma {
  const factory Lemma({
    required String lemma,
    required String presentationLemma,
    required String pos,
    required List<SpuriousAttribute> spuriosAttributes,
  }) = _Lemma;

  factory Lemma.fromJson(Map<String, dynamic> json) => _$LemmaFromJson(json);
}
