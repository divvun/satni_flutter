// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'lemmatiser_analysis.dart';

part 'lemmatised_result.freezed.dart';
part 'lemmatised_result.g.dart';

@freezed
class LemmatisedResult with _$LemmatisedResult {
  factory LemmatisedResult({
    required String language,
    required List<String> wordforms,
    required List<LemmatiserAnalysis> analyses,
  }) = _LemmatisedResult;

  factory LemmatisedResult.fromJson(Map<String, dynamic> json) =>
      _$LemmatisedResultFromJson(json);
}
