// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'stems.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stems _$$_StemsFromJson(Map<String, dynamic> json) => _$_Stems(
      stemList: (json['stemList'] as List<dynamic>?)
              ?.map((e) => Stem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Stem>[],
      hasNextPage: json['hasNextPage'] as bool? ?? false,
      totalCount: json['totalCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_StemsToJson(_$_Stems instance) => <String, dynamic>{
      'stemList': instance.stemList,
      'hasNextPage': instance.hasNextPage,
      'totalCount': instance.totalCount,
    };
