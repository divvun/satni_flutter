// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'lemma.dart';
import 'translation_group.dart';

part 'dict_entry.freezed.dart';
part 'dict_entry.g.dart';

@freezed
class DictEntry with _$DictEntry {
  const factory DictEntry({
    required String dictName,
    required String srcLang,
    required String targetLang,
    required List<Lemma> lookupLemmas,
    required List<TranslationGroup> translationGroups,
  }) = _DictEntry;

  factory DictEntry.fromJson(Map<String, dynamic> json) =>
      _$DictEntryFromJson(json);
}
