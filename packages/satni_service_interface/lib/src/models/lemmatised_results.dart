// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'lemmatised_result.dart';

part 'lemmatised_results.freezed.dart';
part 'lemmatised_results.g.dart';

@freezed
class LemmatisedResults with _$LemmatisedResults {
  factory LemmatisedResults({
    required List<LemmatisedResult> lemmatised,
  }) = _LemmatisedResults;

  factory LemmatisedResults.fromJson(Map<String, dynamic> json) =>
      _$LemmatisedResultsFromJson(json);
}
