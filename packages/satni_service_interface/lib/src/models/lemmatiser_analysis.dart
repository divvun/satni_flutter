// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lemmatiser_analysis.freezed.dart';
part 'lemmatiser_analysis.g.dart';

@freezed
class LemmatiserAnalysis with _$LemmatiserAnalysis {
  factory LemmatiserAnalysis({
    required String analysis,
    required double weight,
  }) = _LemmatiserAnalysis;

  factory LemmatiserAnalysis.fromJson(Map<String, dynamic> json) =>
      _$LemmatiserAnalysisFromJson(json);
}
