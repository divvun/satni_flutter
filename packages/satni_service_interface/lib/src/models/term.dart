import 'package:freezed_annotation/freezed_annotation.dart';

import 'lemma.dart';
part 'term.freezed.dart';
part 'term.g.dart';

@freezed
class Term with _$Term {
  const factory Term({
    String? status,
    @Default(false) sanctioned,
    String? note,
    String? source,
    required Lemma expression,
  }) = _Term;

  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);
}
