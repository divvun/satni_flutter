// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'dict_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DictEntry _$$_DictEntryFromJson(Map<String, dynamic> json) => _$_DictEntry(
      dictName: json['dictName'] as String,
      srcLang: json['srcLang'] as String,
      targetLang: json['targetLang'] as String,
      lookupLemmas: (json['lookupLemmas'] as List<dynamic>)
          .map((e) => Lemma.fromJson(e as Map<String, dynamic>))
          .toList(),
      translationGroups: (json['translationGroups'] as List<dynamic>)
          .map((e) => TranslationGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DictEntryToJson(_$_DictEntry instance) =>
    <String, dynamic>{
      'dictName': instance.dictName,
      'srcLang': instance.srcLang,
      'targetLang': instance.targetLang,
      'lookupLemmas': instance.lookupLemmas,
      'translationGroups': instance.translationGroups,
    };
