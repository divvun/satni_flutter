// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'multi_lang_concept.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MultiLangConcept _$$_MultiLangConceptFromJson(Map<String, dynamic> json) =>
    _$_MultiLangConcept(
      name: json['name'] as String,
      collections: (json['collections'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      concepts: (json['concepts'] as List<dynamic>)
          .map((e) => Concept.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MultiLangConceptToJson(_$_MultiLangConcept instance) =>
    <String, dynamic>{
      'name': instance.name,
      'collections': instance.collections,
      'concepts': instance.concepts,
    };
