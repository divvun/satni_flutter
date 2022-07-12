// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HasStem$Query$StemType _$HasStem$Query$StemTypeFromJson(
        Map<String, dynamic> json) =>
    HasStem$Query$StemType()..stem = json['stem'] as String;

Map<String, dynamic> _$HasStem$Query$StemTypeToJson(
        HasStem$Query$StemType instance) =>
    <String, dynamic>{
      'stem': instance.stem,
    };

HasStem$Query _$HasStem$QueryFromJson(Map<String, dynamic> json) =>
    HasStem$Query()
      ..hasStem = (json['hasStem'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : HasStem$Query$StemType.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$HasStem$QueryToJson(HasStem$Query instance) =>
    <String, dynamic>{
      'hasStem': instance.hasStem?.map((e) => e?.toJson()).toList(),
    };

AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemType
    _$AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemTypeFromJson(
            Map<String, dynamic> json) =>
        AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemType()
          ..stem = json['stem'] as String
          ..srclangs = (json['srclangs'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList()
          ..targetlangs = (json['targetlangs'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList();

Map<String,
    dynamic> _$AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemTypeToJson(
        AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemType instance) =>
    <String, dynamic>{
      'stem': instance.stem,
      'srclangs': instance.srclangs,
      'targetlangs': instance.targetlangs,
    };

AllLemmas$Query$StemTypeConnection$StemTypeEdge
    _$AllLemmas$Query$StemTypeConnection$StemTypeEdgeFromJson(
            Map<String, dynamic> json) =>
        AllLemmas$Query$StemTypeConnection$StemTypeEdge()
          ..node = json['node'] == null
              ? null
              : AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemType
                  .fromJson(json['node'] as Map<String, dynamic>);

Map<String, dynamic> _$AllLemmas$Query$StemTypeConnection$StemTypeEdgeToJson(
        AllLemmas$Query$StemTypeConnection$StemTypeEdge instance) =>
    <String, dynamic>{
      'node': instance.node?.toJson(),
    };

AllLemmas$Query$StemTypeConnection$PageInfo
    _$AllLemmas$Query$StemTypeConnection$PageInfoFromJson(
            Map<String, dynamic> json) =>
        AllLemmas$Query$StemTypeConnection$PageInfo()
          ..endCursor = json['endCursor'] as String?
          ..hasNextPage = json['hasNextPage'] as bool;

Map<String, dynamic> _$AllLemmas$Query$StemTypeConnection$PageInfoToJson(
        AllLemmas$Query$StemTypeConnection$PageInfo instance) =>
    <String, dynamic>{
      'endCursor': instance.endCursor,
      'hasNextPage': instance.hasNextPage,
    };

AllLemmas$Query$StemTypeConnection _$AllLemmas$Query$StemTypeConnectionFromJson(
        Map<String, dynamic> json) =>
    AllLemmas$Query$StemTypeConnection()
      ..totalCount = json['totalCount'] as int?
      ..edges = (json['edges'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : AllLemmas$Query$StemTypeConnection$StemTypeEdge.fromJson(
                  e as Map<String, dynamic>))
          .toList()
      ..pageInfo = AllLemmas$Query$StemTypeConnection$PageInfo.fromJson(
          json['pageInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$AllLemmas$Query$StemTypeConnectionToJson(
        AllLemmas$Query$StemTypeConnection instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'edges': instance.edges.map((e) => e?.toJson()).toList(),
      'pageInfo': instance.pageInfo.toJson(),
    };

AllLemmas$Query _$AllLemmas$QueryFromJson(Map<String, dynamic> json) =>
    AllLemmas$Query()
      ..stemList = json['stemList'] == null
          ? null
          : AllLemmas$Query$StemTypeConnection.fromJson(
              json['stemList'] as Map<String, dynamic>);

Map<String, dynamic> _$AllLemmas$QueryToJson(AllLemmas$Query instance) =>
    <String, dynamic>{
      'stemList': instance.stemList?.toJson(),
    };

Generated$Query$GeneratorResultType$GeneratorAnalysis
    _$Generated$Query$GeneratorResultType$GeneratorAnalysisFromJson(
            Map<String, dynamic> json) =>
        Generated$Query$GeneratorResultType$GeneratorAnalysis()
          ..wordform = json['wordform'] as String
          ..weight = (json['weight'] as num).toDouble();

Map<String, dynamic>
    _$Generated$Query$GeneratorResultType$GeneratorAnalysisToJson(
            Generated$Query$GeneratorResultType$GeneratorAnalysis instance) =>
        <String, dynamic>{
          'wordform': instance.wordform,
          'weight': instance.weight,
        };

Generated$Query$GeneratorResultType
    _$Generated$Query$GeneratorResultTypeFromJson(Map<String, dynamic> json) =>
        Generated$Query$GeneratorResultType()
          ..paradigmTemplate = json['paradigmTemplate'] as String
          ..analyses = (json['analyses'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Generated$Query$GeneratorResultType$GeneratorAnalysis
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$Generated$Query$GeneratorResultTypeToJson(
        Generated$Query$GeneratorResultType instance) =>
    <String, dynamic>{
      'paradigmTemplate': instance.paradigmTemplate,
      'analyses': instance.analyses?.map((e) => e?.toJson()).toList(),
    };

Generated$Query _$Generated$QueryFromJson(Map<String, dynamic> json) =>
    Generated$Query()
      ..generated = (json['generated'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Generated$Query$GeneratorResultType.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Generated$QueryToJson(Generated$Query instance) =>
    <String, dynamic>{
      'generated': instance.generated?.map((e) => e?.toJson()).toList(),
    };

DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaType
    _$DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaTypeFromJson(
            Map<String, dynamic> json) =>
        DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaType()
          ..lemma = json['lemma'] as String
          ..presentationLemma = json['presentationLemma'] as String
          ..language = json['language'] as String
          ..pos = json['pos'] as String?
          ..dialect = json['dialect'] as String?
          ..country = json['country'] as String?;

Map<String, dynamic>
    _$DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaTypeToJson(
            DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaType
                instance) =>
        <String, dynamic>{
          'lemma': instance.lemma,
          'presentationLemma': instance.presentationLemma,
          'language': instance.language,
          'pos': instance.pos,
          'dialect': instance.dialect,
          'country': instance.country,
        };

DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge
    _$DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdgeFromJson(
            Map<String, dynamic> json) =>
        DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge()
          ..node = json['node'] == null
              ? null
              : DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaType
                  .fromJson(json['node'] as Map<String, dynamic>);

Map<String, dynamic>
    _$DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdgeToJson(
            DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge
                instance) =>
        <String, dynamic>{
          'node': instance.node?.toJson(),
        };

DictArticles$Query$DictEntryType$LemmaTypeConnection
    _$DictArticles$Query$DictEntryType$LemmaTypeConnectionFromJson(
            Map<String, dynamic> json) =>
        DictArticles$Query$DictEntryType$LemmaTypeConnection()
          ..edges = (json['edges'] as List<dynamic>)
              .map((e) => e == null
                  ? null
                  : DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$DictArticles$Query$DictEntryType$LemmaTypeConnectionToJson(
            DictArticles$Query$DictEntryType$LemmaTypeConnection instance) =>
        <String, dynamic>{
          'edges': instance.edges.map((e) => e?.toJson()).toList(),
        };

DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaType
    _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaTypeFromJson(
            Map<String, dynamic> json) =>
        DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaType()
          ..lemma = json['lemma'] as String
          ..presentationLemma = json['presentationLemma'] as String
          ..language = json['language'] as String
          ..pos = json['pos'] as String?
          ..dialect = json['dialect'] as String?
          ..country = json['country'] as String?;

Map<String, dynamic>
    _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaTypeToJson(
            DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaType
                instance) =>
        <String, dynamic>{
          'lemma': instance.lemma,
          'presentationLemma': instance.presentationLemma,
          'language': instance.language,
          'pos': instance.pos,
          'dialect': instance.dialect,
          'country': instance.country,
        };

DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge
    _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdgeFromJson(
            Map<String, dynamic> json) =>
        DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge()
          ..node = json['node'] == null
              ? null
              : DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaType
                  .fromJson(json['node'] as Map<String, dynamic>);

Map<String, dynamic>
    _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdgeToJson(
            DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge
                instance) =>
        <String, dynamic>{
          'node': instance.node?.toJson(),
        };

DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection
    _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnectionFromJson(
            Map<String, dynamic> json) =>
        DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection()
          ..edges = (json['edges'] as List<dynamic>)
              .map((e) => e == null
                  ? null
                  : DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnectionToJson(
            DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection
                instance) =>
        <String, dynamic>{
          'edges': instance.edges.map((e) => e?.toJson()).toList(),
        };

DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType
    _$DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionTypeFromJson(
            Map<String, dynamic> json) =>
        DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType()
          ..restriction = json['restriction'] as String?
          ..attributes = json['attributes'] as String?;

Map<String, dynamic>
    _$DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionTypeToJson(
            DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType
                instance) =>
        <String, dynamic>{
          'restriction': instance.restriction,
          'attributes': instance.attributes,
        };

DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType
    _$DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupTypeFromJson(
            Map<String, dynamic> json) =>
        DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType()
          ..example = json['example'] as String
          ..translation = json['translation'] as String;

Map<String, dynamic>
    _$DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupTypeToJson(
            DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType
                instance) =>
        <String, dynamic>{
          'example': instance.example,
          'translation': instance.translation,
        };

DictArticles$Query$DictEntryType$TranslationGroupType
    _$DictArticles$Query$DictEntryType$TranslationGroupTypeFromJson(
            Map<String, dynamic> json) =>
        DictArticles$Query$DictEntryType$TranslationGroupType()
          ..translationLemmas = json['translationLemmas'] == null
              ? null
              : DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection
                  .fromJson(json['translationLemmas'] as Map<String, dynamic>)
          ..restriction = json['restriction'] == null
              ? null
              : DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType
                  .fromJson(json['restriction'] as Map<String, dynamic>)
          ..exampleGroups = (json['exampleGroups'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$DictArticles$Query$DictEntryType$TranslationGroupTypeToJson(
            DictArticles$Query$DictEntryType$TranslationGroupType instance) =>
        <String, dynamic>{
          'translationLemmas': instance.translationLemmas?.toJson(),
          'restriction': instance.restriction?.toJson(),
          'exampleGroups':
              instance.exampleGroups?.map((e) => e?.toJson()).toList(),
        };

DictArticles$Query$DictEntryType _$DictArticles$Query$DictEntryTypeFromJson(
        Map<String, dynamic> json) =>
    DictArticles$Query$DictEntryType()
      ..dictName = json['dictName'] as String
      ..srcLang = json['srcLang'] as String
      ..targetLang = json['targetLang'] as String
      ..lookupLemmas = json['lookupLemmas'] == null
          ? null
          : DictArticles$Query$DictEntryType$LemmaTypeConnection.fromJson(
              json['lookupLemmas'] as Map<String, dynamic>)
      ..translationGroups = (json['translationGroups'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : DictArticles$Query$DictEntryType$TranslationGroupType.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DictArticles$Query$DictEntryTypeToJson(
        DictArticles$Query$DictEntryType instance) =>
    <String, dynamic>{
      'dictName': instance.dictName,
      'srcLang': instance.srcLang,
      'targetLang': instance.targetLang,
      'lookupLemmas': instance.lookupLemmas?.toJson(),
      'translationGroups':
          instance.translationGroups.map((e) => e?.toJson()).toList(),
    };

DictArticles$Query _$DictArticles$QueryFromJson(Map<String, dynamic> json) =>
    DictArticles$Query()
      ..dictEntryList = (json['dictEntryList'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DictArticles$Query$DictEntryType.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DictArticles$QueryToJson(DictArticles$Query instance) =>
    <String, dynamic>{
      'dictEntryList': instance.dictEntryList?.map((e) => e?.toJson()).toList(),
    };

Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysis
    _$Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysisFromJson(
            Map<String, dynamic> json) =>
        Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysis()
          ..analysis = json['analysis'] as String
          ..weight = (json['weight'] as num).toDouble();

Map<String,
    dynamic> _$Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysisToJson(
        Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysis instance) =>
    <String, dynamic>{
      'analysis': instance.analysis,
      'weight': instance.weight,
    };

Lemmatised$Query$LemmatiserResultType
    _$Lemmatised$Query$LemmatiserResultTypeFromJson(
            Map<String, dynamic> json) =>
        Lemmatised$Query$LemmatiserResultType()
          ..language = json['language'] as String
          ..wordforms = (json['wordforms'] as List<dynamic>)
              .map((e) => e as String?)
              .toList()
          ..analyses = (json['analyses'] as List<dynamic>)
              .map((e) => e == null
                  ? null
                  : Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysis
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$Lemmatised$Query$LemmatiserResultTypeToJson(
        Lemmatised$Query$LemmatiserResultType instance) =>
    <String, dynamic>{
      'language': instance.language,
      'wordforms': instance.wordforms,
      'analyses': instance.analyses.map((e) => e?.toJson()).toList(),
    };

Lemmatised$Query _$Lemmatised$QueryFromJson(Map<String, dynamic> json) =>
    Lemmatised$Query()
      ..lemmatised = (json['lemmatised'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Lemmatised$Query$LemmatiserResultType.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Lemmatised$QueryToJson(Lemmatised$Query instance) =>
    <String, dynamic>{
      'lemmatised': instance.lemmatised?.map((e) => e?.toJson()).toList(),
    };

TermArticles$Query$ConceptType$TermType$LemmaType
    _$TermArticles$Query$ConceptType$TermType$LemmaTypeFromJson(
            Map<String, dynamic> json) =>
        TermArticles$Query$ConceptType$TermType$LemmaType()
          ..lemma = json['lemma'] as String
          ..presentationLemma = json['presentationLemma'] as String
          ..language = json['language'] as String
          ..pos = json['pos'] as String?
          ..dialect = json['dialect'] as String?
          ..country = json['country'] as String?;

Map<String, dynamic> _$TermArticles$Query$ConceptType$TermType$LemmaTypeToJson(
        TermArticles$Query$ConceptType$TermType$LemmaType instance) =>
    <String, dynamic>{
      'lemma': instance.lemma,
      'presentationLemma': instance.presentationLemma,
      'language': instance.language,
      'pos': instance.pos,
      'dialect': instance.dialect,
      'country': instance.country,
    };

TermArticles$Query$ConceptType$TermType
    _$TermArticles$Query$ConceptType$TermTypeFromJson(
            Map<String, dynamic> json) =>
        TermArticles$Query$ConceptType$TermType()
          ..note = json['note'] as String?
          ..source = json['source'] as String?
          ..status = json['status'] as String?
          ..expression = json['expression'] == null
              ? null
              : TermArticles$Query$ConceptType$TermType$LemmaType.fromJson(
                  json['expression'] as Map<String, dynamic>);

Map<String, dynamic> _$TermArticles$Query$ConceptType$TermTypeToJson(
        TermArticles$Query$ConceptType$TermType instance) =>
    <String, dynamic>{
      'note': instance.note,
      'source': instance.source,
      'status': instance.status,
      'expression': instance.expression?.toJson(),
    };

TermArticles$Query$ConceptType _$TermArticles$Query$ConceptTypeFromJson(
        Map<String, dynamic> json) =>
    TermArticles$Query$ConceptType()
      ..name = json['name'] as String
      ..collections = (json['collections'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList()
      ..definition = json['definition'] as String?
      ..explanation = json['explanation'] as String?
      ..terms = (json['terms'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : TermArticles$Query$ConceptType$TermType.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TermArticles$Query$ConceptTypeToJson(
        TermArticles$Query$ConceptType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'collections': instance.collections,
      'definition': instance.definition,
      'explanation': instance.explanation,
      'terms': instance.terms.map((e) => e?.toJson()).toList(),
    };

TermArticles$Query _$TermArticles$QueryFromJson(Map<String, dynamic> json) =>
    TermArticles$Query()
      ..conceptList = (json['conceptList'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : TermArticles$Query$ConceptType.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$TermArticles$QueryToJson(TermArticles$Query instance) =>
    <String, dynamic>{
      'conceptList': instance.conceptList?.map((e) => e?.toJson()).toList(),
    };

HasStemArguments _$HasStemArgumentsFromJson(Map<String, dynamic> json) =>
    HasStemArguments(
      stem: json['stem'] as String,
      targetLangs: (json['targetLangs'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
      wantedDicts: (json['wantedDicts'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$HasStemArgumentsToJson(HasStemArguments instance) =>
    <String, dynamic>{
      'stem': instance.stem,
      'targetLangs': instance.targetLangs,
      'wantedDicts': instance.wantedDicts,
    };

AllLemmasArguments _$AllLemmasArgumentsFromJson(Map<String, dynamic> json) =>
    AllLemmasArguments(
      inputValue: json['inputValue'] as String,
      searchMode: json['searchMode'] as String,
      srcLangs:
          (json['srcLangs'] as List<dynamic>).map((e) => e as String?).toList(),
      targetLangs: (json['targetLangs'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
      wantedDicts: (json['wantedDicts'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
      after: json['after'] as String?,
    );

Map<String, dynamic> _$AllLemmasArgumentsToJson(AllLemmasArguments instance) =>
    <String, dynamic>{
      'inputValue': instance.inputValue,
      'searchMode': instance.searchMode,
      'srcLangs': instance.srcLangs,
      'targetLangs': instance.targetLangs,
      'wantedDicts': instance.wantedDicts,
      'after': instance.after,
    };

GeneratedArguments _$GeneratedArgumentsFromJson(Map<String, dynamic> json) =>
    GeneratedArguments(
      origform: json['origform'] as String,
      language: json['language'] as String,
      paradigmTemplates: (json['paradigmTemplates'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$GeneratedArgumentsToJson(GeneratedArguments instance) =>
    <String, dynamic>{
      'origform': instance.origform,
      'language': instance.language,
      'paradigmTemplates': instance.paradigmTemplates,
    };

DictArticlesArguments _$DictArticlesArgumentsFromJson(
        Map<String, dynamic> json) =>
    DictArticlesArguments(
      lemma: json['lemma'] as String,
      srcLangs:
          (json['srcLangs'] as List<dynamic>).map((e) => e as String?).toList(),
      targetLangs: (json['targetLangs'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
      wantedDicts: (json['wantedDicts'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$DictArticlesArgumentsToJson(
        DictArticlesArguments instance) =>
    <String, dynamic>{
      'lemma': instance.lemma,
      'srcLangs': instance.srcLangs,
      'targetLangs': instance.targetLangs,
      'wantedDicts': instance.wantedDicts,
    };

LemmatisedArguments _$LemmatisedArgumentsFromJson(Map<String, dynamic> json) =>
    LemmatisedArguments(
      lookupString: json['lookupString'] as String,
    );

Map<String, dynamic> _$LemmatisedArgumentsToJson(
        LemmatisedArguments instance) =>
    <String, dynamic>{
      'lookupString': instance.lookupString,
    };

TermArticlesArguments _$TermArticlesArgumentsFromJson(
        Map<String, dynamic> json) =>
    TermArticlesArguments(
      lemma: json['lemma'] as String,
      srcLangs:
          (json['srcLangs'] as List<dynamic>).map((e) => e as String?).toList(),
      targetLangs: (json['targetLangs'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$TermArticlesArgumentsToJson(
        TermArticlesArguments instance) =>
    <String, dynamic>{
      'lemma': instance.lemma,
      'srcLangs': instance.srcLangs,
      'targetLangs': instance.targetLangs,
    };
