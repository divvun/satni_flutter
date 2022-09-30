// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'stem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stem _$$_StemFromJson(Map<String, dynamic> json) => _$_Stem(
      stem: json['stem'] as String,
      searchStem: json['searchStem'] as String,
      srclang: json['srclang'] as String,
      targetlangs: (json['targetlangs'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      dicts: (json['dicts'] as List<dynamic>?)
              ?.map((e) => StemHits.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_StemToJson(_$_Stem instance) => <String, dynamic>{
      'stem': instance.stem,
      'searchStem': instance.searchStem,
      'srclang': instance.srclang,
      'targetlangs': instance.targetlangs,
      'dicts': instance.dicts,
    };
