import 'package:freezed_annotation/freezed_annotation.dart';

import 'example_group.dart';
import 'lemma.dart';
import 'restriction.dart';

// import 'spurious_attribute.dart';

part 'translation_group.freezed.dart';
part 'translation_group.g.dart';

@freezed
class TranslationGroup with _$TranslationGroup {
  const factory TranslationGroup({
    required List<Lemma> translationLemmas,
    Restriction? restriction,
    List<ExampleGroup>? exampleGroups,
  }) = _TranslationGroup;

  factory TranslationGroup.fromJson(Map<String, dynamic> json) =>
      _$TranslationGroupFromJson(json);
}
