// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'concept.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Concept _$$_ConceptFromJson(Map<String, dynamic> json) => _$_Concept(
      lang: json['lang'] as String,
      definition: json['definition'] as String? ?? '',
      explanation: json['explanation'] as String? ?? '',
      terms: (json['terms'] as List<dynamic>)
          .map((e) => Term.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ConceptToJson(_$_Concept instance) =>
    <String, dynamic>{
      'lang': instance.lang,
      'definition': instance.definition,
      'explanation': instance.explanation,
      'terms': instance.terms,
    };
