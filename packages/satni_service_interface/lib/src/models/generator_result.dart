// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'generator_analysis.dart';

part 'generator_result.freezed.dart';
part 'generator_result.g.dart';

@freezed
class GeneratorResult with _$GeneratorResult {
  factory GeneratorResult({
    required String paradigmTemplate,
    required List<GeneratorAnalysis> analyses,
  }) = _GeneratorResult;

  factory GeneratorResult.fromJson(Map<String, dynamic> json) =>
      _$GeneratorResultFromJson(json);
}
