// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generator_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeneratorResult _$$_GeneratorResultFromJson(Map<String, dynamic> json) =>
    _$_GeneratorResult(
      paradigmTemplate: json['paradigmTemplate'] as String,
      analyses: (json['analyses'] as List<dynamic>)
          .map((e) => GeneratorAnalysis.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GeneratorResultToJson(_$_GeneratorResult instance) =>
    <String, dynamic>{
      'paradigmTemplate': instance.paradigmTemplate,
      'analyses': instance.analyses,
    };
