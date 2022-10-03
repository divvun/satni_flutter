// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Term _$$_TermFromJson(Map<String, dynamic> json) => _$_Term(
      status: json['status'] as String?,
      sanctioned: json['sanctioned'] as bool,
      note: json['note'] as String?,
      source: json['source'] as String?,
      expression: Lemma.fromJson(json['expression'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TermToJson(_$_Term instance) => <String, dynamic>{
      'status': instance.status,
      'sanctioned': instance.sanctioned,
      'note': instance.note,
      'source': instance.source,
      'expression': instance.expression,
    };
