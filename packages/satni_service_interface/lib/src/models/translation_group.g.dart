// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'translation_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TranslationGroup _$$_TranslationGroupFromJson(Map<String, dynamic> json) =>
    _$_TranslationGroup(
      translationLemmas: (json['translationLemmas'] as List<dynamic>)
          .map((e) => Lemma.fromJson(e as Map<String, dynamic>))
          .toList(),
      restriction: json['restriction'] == null
          ? null
          : Restriction.fromJson(json['restriction'] as Map<String, dynamic>),
      exampleGroups: (json['exampleGroups'] as List<dynamic>?)
          ?.map((e) => ExampleGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TranslationGroupToJson(_$_TranslationGroup instance) =>
    <String, dynamic>{
      'translationLemmas': instance.translationLemmas,
      'restriction': instance.restriction,
      'exampleGroups': instance.exampleGroups,
    };
