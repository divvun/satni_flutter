// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lemmatised_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LemmatisedResults _$$_LemmatisedResultsFromJson(Map<String, dynamic> json) =>
    _$_LemmatisedResults(
      lemmatised: (json['lemmatised'] as List<dynamic>)
          .map((e) => LemmatisedResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LemmatisedResultsToJson(
        _$_LemmatisedResults instance) =>
    <String, dynamic>{
      'lemmatised': instance.lemmatised,
    };
