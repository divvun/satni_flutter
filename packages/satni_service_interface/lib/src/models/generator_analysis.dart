// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generator_analysis.freezed.dart';
part 'generator_analysis.g.dart';

@freezed
class GeneratorAnalysis with _$GeneratorAnalysis {
  factory GeneratorAnalysis({
    required String wordform,
    required double weight,
  }) = _GeneratorAnalysis;

  factory GeneratorAnalysis.fromJson(Map<String, dynamic> json) =>
      _$GeneratorAnalysisFromJson(json);
}
