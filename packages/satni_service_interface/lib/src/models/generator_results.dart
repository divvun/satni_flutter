// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'generator_result.dart';

part 'generator_results.freezed.dart';
part 'generator_results.g.dart';

@freezed
class GeneratorResults with _$GeneratorResults {
  factory GeneratorResults({
    required List<GeneratorResult> generated,
  }) = _GeneratorResults;

  factory GeneratorResults.fromJson(Map<String, dynamic> json) =>
      _$GeneratorResultsFromJson(json);
}
