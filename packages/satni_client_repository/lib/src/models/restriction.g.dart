// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'restriction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restriction _$$_RestrictionFromJson(Map<String, dynamic> json) =>
    _$_Restriction(
      restriction: json['restriction'] as String,
      attributes: (json['attributes'] as List<dynamic>?)
              ?.map(
                  (e) => SpuriousAttribute.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RestrictionToJson(_$_Restriction instance) =>
    <String, dynamic>{
      'restriction': instance.restriction,
      'attributes': instance.attributes,
    };
