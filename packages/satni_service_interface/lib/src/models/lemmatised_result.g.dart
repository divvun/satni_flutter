// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'lemmatised_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LemmatisedResult _$$_LemmatisedResultFromJson(Map<String, dynamic> json) =>
    _$_LemmatisedResult(
      language: json['language'] as String,
      wordforms:
          (json['wordforms'] as List<dynamic>).map((e) => e as String).toList(),
      analyses: (json['analyses'] as List<dynamic>)
          .map((e) => LemmatiserAnalysis.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LemmatisedResultToJson(_$_LemmatisedResult instance) =>
    <String, dynamic>{
      'language': instance.language,
      'wordforms': instance.wordforms,
      'analyses': instance.analyses,
    };
