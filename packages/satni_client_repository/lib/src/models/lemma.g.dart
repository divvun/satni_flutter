// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'lemma.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lemma _$$_LemmaFromJson(Map<String, dynamic> json) => _$_Lemma(
      lemma: json['lemma'] as String,
      presentationLemma: json['presentationLemma'] as String,
      pos: json['pos'] as String,
      spuriosAttributes: (json['spuriosAttributes'] as List<dynamic>)
          .map((e) => SpuriousAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LemmaToJson(_$_Lemma instance) => <String, dynamic>{
      'lemma': instance.lemma,
      'presentationLemma': instance.presentationLemma,
      'pos': instance.pos,
      'spuriosAttributes': instance.spuriosAttributes,
    };
