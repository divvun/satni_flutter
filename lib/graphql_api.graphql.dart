// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class HasStem$Query$StemType extends JsonSerializable with EquatableMixin {
  HasStem$Query$StemType();

  factory HasStem$Query$StemType.fromJson(Map<String, dynamic> json) =>
      _$HasStem$Query$StemTypeFromJson(json);

  late String stem;

  @override
  List<Object?> get props => [stem];
  @override
  Map<String, dynamic> toJson() => _$HasStem$Query$StemTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HasStem$Query extends JsonSerializable with EquatableMixin {
  HasStem$Query();

  factory HasStem$Query.fromJson(Map<String, dynamic> json) =>
      _$HasStem$QueryFromJson(json);

  List<HasStem$Query$StemType?>? hasStem;

  @override
  List<Object?> get props => [hasStem];
  @override
  Map<String, dynamic> toJson() => _$HasStem$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemType
    extends JsonSerializable with EquatableMixin {
  AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemType();

  factory AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemType.fromJson(
          Map<String, dynamic> json) =>
      _$AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemTypeFromJson(json);

  late String stem;

  List<String?>? srclangs;

  List<String?>? targetlangs;

  @override
  List<Object?> get props => [stem, srclangs, targetlangs];
  @override
  Map<String, dynamic> toJson() =>
      _$AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllLemmas$Query$StemTypeConnection$StemTypeEdge extends JsonSerializable
    with EquatableMixin {
  AllLemmas$Query$StemTypeConnection$StemTypeEdge();

  factory AllLemmas$Query$StemTypeConnection$StemTypeEdge.fromJson(
          Map<String, dynamic> json) =>
      _$AllLemmas$Query$StemTypeConnection$StemTypeEdgeFromJson(json);

  AllLemmas$Query$StemTypeConnection$StemTypeEdge$StemType? node;

  @override
  List<Object?> get props => [node];
  @override
  Map<String, dynamic> toJson() =>
      _$AllLemmas$Query$StemTypeConnection$StemTypeEdgeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllLemmas$Query$StemTypeConnection$PageInfo extends JsonSerializable
    with EquatableMixin {
  AllLemmas$Query$StemTypeConnection$PageInfo();

  factory AllLemmas$Query$StemTypeConnection$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$AllLemmas$Query$StemTypeConnection$PageInfoFromJson(json);

  String? endCursor;

  late bool hasNextPage;

  @override
  List<Object?> get props => [endCursor, hasNextPage];
  @override
  Map<String, dynamic> toJson() =>
      _$AllLemmas$Query$StemTypeConnection$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllLemmas$Query$StemTypeConnection extends JsonSerializable
    with EquatableMixin {
  AllLemmas$Query$StemTypeConnection();

  factory AllLemmas$Query$StemTypeConnection.fromJson(
          Map<String, dynamic> json) =>
      _$AllLemmas$Query$StemTypeConnectionFromJson(json);

  int? totalCount;

  late List<AllLemmas$Query$StemTypeConnection$StemTypeEdge?> edges;

  late AllLemmas$Query$StemTypeConnection$PageInfo pageInfo;

  @override
  List<Object?> get props => [totalCount, edges, pageInfo];
  @override
  Map<String, dynamic> toJson() =>
      _$AllLemmas$Query$StemTypeConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AllLemmas$Query extends JsonSerializable with EquatableMixin {
  AllLemmas$Query();

  factory AllLemmas$Query.fromJson(Map<String, dynamic> json) =>
      _$AllLemmas$QueryFromJson(json);

  AllLemmas$Query$StemTypeConnection? stemList;

  @override
  List<Object?> get props => [stemList];
  @override
  Map<String, dynamic> toJson() => _$AllLemmas$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Generated$Query$GeneratorResultType$GeneratorAnalysis
    extends JsonSerializable with EquatableMixin {
  Generated$Query$GeneratorResultType$GeneratorAnalysis();

  factory Generated$Query$GeneratorResultType$GeneratorAnalysis.fromJson(
          Map<String, dynamic> json) =>
      _$Generated$Query$GeneratorResultType$GeneratorAnalysisFromJson(json);

  String? wordform;

  double? weight;

  @override
  List<Object?> get props => [wordform, weight];
  @override
  Map<String, dynamic> toJson() =>
      _$Generated$Query$GeneratorResultType$GeneratorAnalysisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Generated$Query$GeneratorResultType extends JsonSerializable
    with EquatableMixin {
  Generated$Query$GeneratorResultType();

  factory Generated$Query$GeneratorResultType.fromJson(
          Map<String, dynamic> json) =>
      _$Generated$Query$GeneratorResultTypeFromJson(json);

  String? paradigmTemplate;

  List<Generated$Query$GeneratorResultType$GeneratorAnalysis?>? analyses;

  @override
  List<Object?> get props => [paradigmTemplate, analyses];
  @override
  Map<String, dynamic> toJson() =>
      _$Generated$Query$GeneratorResultTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Generated$Query extends JsonSerializable with EquatableMixin {
  Generated$Query();

  factory Generated$Query.fromJson(Map<String, dynamic> json) =>
      _$Generated$QueryFromJson(json);

  List<Generated$Query$GeneratorResultType?>? generated;

  @override
  List<Object?> get props => [generated];
  @override
  Map<String, dynamic> toJson() => _$Generated$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaType
    extends JsonSerializable with EquatableMixin {
  DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaType();

  factory DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaType.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaTypeFromJson(
          json);

  late String lemma;

  late String presentationLemma;

  late String language;

  String? pos;

  String? dialect;

  String? country;

  @override
  List<Object?> get props =>
      [lemma, presentationLemma, language, pos, dialect, country];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaTypeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge
    extends JsonSerializable with EquatableMixin {
  DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge();

  factory DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdgeFromJson(
          json);

  DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge$LemmaType?
      node;

  @override
  List<Object?> get props => [node];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdgeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType$LemmaTypeConnection
    extends JsonSerializable with EquatableMixin {
  DictArticles$Query$DictEntryType$LemmaTypeConnection();

  factory DictArticles$Query$DictEntryType$LemmaTypeConnection.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryType$LemmaTypeConnectionFromJson(json);

  late List<DictArticles$Query$DictEntryType$LemmaTypeConnection$LemmaTypeEdge?>
      edges;

  @override
  List<Object?> get props => [edges];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryType$LemmaTypeConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaType
    extends JsonSerializable with EquatableMixin {
  DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaType();

  factory DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaType.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaTypeFromJson(
          json);

  late String lemma;

  late String presentationLemma;

  late String language;

  String? pos;

  String? dialect;

  String? country;

  @override
  List<Object?> get props =>
      [lemma, presentationLemma, language, pos, dialect, country];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaTypeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge
    extends JsonSerializable with EquatableMixin {
  DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge();

  factory DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdgeFromJson(
          json);

  DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge$LemmaType?
      node;

  @override
  List<Object?> get props => [node];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdgeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection
    extends JsonSerializable with EquatableMixin {
  DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection();

  factory DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnectionFromJson(
          json);

  late List<
          DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection$LemmaTypeEdge?>
      edges;

  @override
  List<Object?> get props => [edges];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnectionToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType
    extends JsonSerializable with EquatableMixin {
  DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType();

  factory DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionTypeFromJson(
          json);

  String? restriction;

  String? attributes;

  @override
  List<Object?> get props => [restriction, attributes];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionTypeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType
    extends JsonSerializable with EquatableMixin {
  DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType();

  factory DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupTypeFromJson(
          json);

  late String example;

  late String translation;

  @override
  List<Object?> get props => [example, translation];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupTypeToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType$TranslationGroupType
    extends JsonSerializable with EquatableMixin {
  DictArticles$Query$DictEntryType$TranslationGroupType();

  factory DictArticles$Query$DictEntryType$TranslationGroupType.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryType$TranslationGroupTypeFromJson(json);

  DictArticles$Query$DictEntryType$TranslationGroupType$LemmaTypeConnection?
      translationLemmas;

  DictArticles$Query$DictEntryType$TranslationGroupType$RestrictionType?
      restriction;

  List<DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType?>?
      exampleGroups;

  @override
  List<Object?> get props => [translationLemmas, restriction, exampleGroups];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryType$TranslationGroupTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query$DictEntryType extends JsonSerializable
    with EquatableMixin {
  DictArticles$Query$DictEntryType();

  factory DictArticles$Query$DictEntryType.fromJson(
          Map<String, dynamic> json) =>
      _$DictArticles$Query$DictEntryTypeFromJson(json);

  late String dictName;

  late String srcLang;

  late String targetLang;

  DictArticles$Query$DictEntryType$LemmaTypeConnection? lookupLemmas;

  late List<DictArticles$Query$DictEntryType$TranslationGroupType?>
      translationGroups;

  @override
  List<Object?> get props =>
      [dictName, srcLang, targetLang, lookupLemmas, translationGroups];
  @override
  Map<String, dynamic> toJson() =>
      _$DictArticles$Query$DictEntryTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DictArticles$Query extends JsonSerializable with EquatableMixin {
  DictArticles$Query();

  factory DictArticles$Query.fromJson(Map<String, dynamic> json) =>
      _$DictArticles$QueryFromJson(json);

  List<DictArticles$Query$DictEntryType?>? dictEntryList;

  @override
  List<Object?> get props => [dictEntryList];
  @override
  Map<String, dynamic> toJson() => _$DictArticles$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysis
    extends JsonSerializable with EquatableMixin {
  Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysis();

  factory Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysis.fromJson(
          Map<String, dynamic> json) =>
      _$Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysisFromJson(json);

  late String analysis;

  late double weight;

  @override
  List<Object?> get props => [analysis, weight];
  @override
  Map<String, dynamic> toJson() =>
      _$Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysisToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Lemmatised$Query$LemmatiserResultType extends JsonSerializable
    with EquatableMixin {
  Lemmatised$Query$LemmatiserResultType();

  factory Lemmatised$Query$LemmatiserResultType.fromJson(
          Map<String, dynamic> json) =>
      _$Lemmatised$Query$LemmatiserResultTypeFromJson(json);

  late String language;

  late List<String?> wordforms;

  late List<Lemmatised$Query$LemmatiserResultType$LemmatiserAnalysis?> analyses;

  @override
  List<Object?> get props => [language, wordforms, analyses];
  @override
  Map<String, dynamic> toJson() =>
      _$Lemmatised$Query$LemmatiserResultTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Lemmatised$Query extends JsonSerializable with EquatableMixin {
  Lemmatised$Query();

  factory Lemmatised$Query.fromJson(Map<String, dynamic> json) =>
      _$Lemmatised$QueryFromJson(json);

  List<Lemmatised$Query$LemmatiserResultType?>? lemmatised;

  @override
  List<Object?> get props => [lemmatised];
  @override
  Map<String, dynamic> toJson() => _$Lemmatised$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TermArticles$Query$ConceptType$TermType$LemmaType extends JsonSerializable
    with EquatableMixin {
  TermArticles$Query$ConceptType$TermType$LemmaType();

  factory TermArticles$Query$ConceptType$TermType$LemmaType.fromJson(
          Map<String, dynamic> json) =>
      _$TermArticles$Query$ConceptType$TermType$LemmaTypeFromJson(json);

  late String lemma;

  late String presentationLemma;

  late String language;

  String? pos;

  String? dialect;

  String? country;

  @override
  List<Object?> get props =>
      [lemma, presentationLemma, language, pos, dialect, country];
  @override
  Map<String, dynamic> toJson() =>
      _$TermArticles$Query$ConceptType$TermType$LemmaTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TermArticles$Query$ConceptType$TermType extends JsonSerializable
    with EquatableMixin {
  TermArticles$Query$ConceptType$TermType();

  factory TermArticles$Query$ConceptType$TermType.fromJson(
          Map<String, dynamic> json) =>
      _$TermArticles$Query$ConceptType$TermTypeFromJson(json);

  String? note;

  String? source;

  String? status;

  TermArticles$Query$ConceptType$TermType$LemmaType? expression;

  @override
  List<Object?> get props => [note, source, status, expression];
  @override
  Map<String, dynamic> toJson() =>
      _$TermArticles$Query$ConceptType$TermTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TermArticles$Query$ConceptType extends JsonSerializable
    with EquatableMixin {
  TermArticles$Query$ConceptType();

  factory TermArticles$Query$ConceptType.fromJson(Map<String, dynamic> json) =>
      _$TermArticles$Query$ConceptTypeFromJson(json);

  late String name;

  List<String?>? collections;

  String? definition;

  String? explanation;

  late List<TermArticles$Query$ConceptType$TermType?> terms;

  @override
  List<Object?> get props =>
      [name, collections, definition, explanation, terms];
  @override
  Map<String, dynamic> toJson() => _$TermArticles$Query$ConceptTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TermArticles$Query extends JsonSerializable with EquatableMixin {
  TermArticles$Query();

  factory TermArticles$Query.fromJson(Map<String, dynamic> json) =>
      _$TermArticles$QueryFromJson(json);

  List<TermArticles$Query$ConceptType?>? conceptList;

  @override
  List<Object?> get props => [conceptList];
  @override
  Map<String, dynamic> toJson() => _$TermArticles$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HasStemArguments extends JsonSerializable with EquatableMixin {
  HasStemArguments(
      {required this.stem,
      required this.targetLangs,
      required this.wantedDicts});

  @override
  factory HasStemArguments.fromJson(Map<String, dynamic> json) =>
      _$HasStemArgumentsFromJson(json);

  late String stem;

  late List<String?> targetLangs;

  late List<String?> wantedDicts;

  @override
  List<Object?> get props => [stem, targetLangs, wantedDicts];
  @override
  Map<String, dynamic> toJson() => _$HasStemArgumentsToJson(this);
}

final HAS_STEM_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'HasStem'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'stem')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'targetLangs')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'wantedDicts')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'hasStem'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'exact'),
                  value: VariableNode(name: NameNode(value: 'stem'))),
              ArgumentNode(
                  name: NameNode(value: 'targetLangs'),
                  value: VariableNode(name: NameNode(value: 'targetLangs'))),
              ArgumentNode(
                  name: NameNode(value: 'wantedDicts'),
                  value: VariableNode(name: NameNode(value: 'wantedDicts')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'stem'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ]))
      ]))
]);

class HasStemQuery extends GraphQLQuery<HasStem$Query, HasStemArguments> {
  HasStemQuery({required this.variables});

  @override
  final DocumentNode document = HAS_STEM_QUERY_DOCUMENT;

  @override
  final String operationName = 'HasStem';

  @override
  final HasStemArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  HasStem$Query parse(Map<String, dynamic> json) =>
      HasStem$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AllLemmasArguments extends JsonSerializable with EquatableMixin {
  AllLemmasArguments(
      {required this.inputValue,
      required this.searchMode,
      required this.srcLangs,
      required this.targetLangs,
      required this.wantedDicts,
      this.after});

  @override
  factory AllLemmasArguments.fromJson(Map<String, dynamic> json) =>
      _$AllLemmasArgumentsFromJson(json);

  late String inputValue;

  late String searchMode;

  late List<String?> srcLangs;

  late List<String?> targetLangs;

  late List<String?> wantedDicts;

  final String? after;

  @override
  List<Object?> get props =>
      [inputValue, searchMode, srcLangs, targetLangs, wantedDicts, after];
  @override
  Map<String, dynamic> toJson() => _$AllLemmasArgumentsToJson(this);
}

final ALL_LEMMAS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AllLemmas'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'inputValue')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'searchMode')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'srcLangs')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'targetLangs')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'wantedDicts')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'after')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'stemList'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'first'),
                  value: IntValueNode(value: '100')),
              ArgumentNode(
                  name: NameNode(value: 'search'),
                  value: VariableNode(name: NameNode(value: 'inputValue'))),
              ArgumentNode(
                  name: NameNode(value: 'mode'),
                  value: VariableNode(name: NameNode(value: 'searchMode'))),
              ArgumentNode(
                  name: NameNode(value: 'srcLangs'),
                  value: VariableNode(name: NameNode(value: 'srcLangs'))),
              ArgumentNode(
                  name: NameNode(value: 'targetLangs'),
                  value: VariableNode(name: NameNode(value: 'targetLangs'))),
              ArgumentNode(
                  name: NameNode(value: 'wantedDicts'),
                  value: VariableNode(name: NameNode(value: 'wantedDicts'))),
              ArgumentNode(
                  name: NameNode(value: 'after'),
                  value: VariableNode(name: NameNode(value: 'after')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'edges'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'node'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'stem'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'srclangs'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'targetlangs'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'endCursor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'hasNextPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class AllLemmasQuery extends GraphQLQuery<AllLemmas$Query, AllLemmasArguments> {
  AllLemmasQuery({required this.variables});

  @override
  final DocumentNode document = ALL_LEMMAS_QUERY_DOCUMENT;

  @override
  final String operationName = 'AllLemmas';

  @override
  final AllLemmasArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AllLemmas$Query parse(Map<String, dynamic> json) =>
      AllLemmas$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GeneratedArguments extends JsonSerializable with EquatableMixin {
  GeneratedArguments(
      {required this.origform,
      required this.language,
      required this.partOfSpeech});

  @override
  factory GeneratedArguments.fromJson(Map<String, dynamic> json) =>
      _$GeneratedArgumentsFromJson(json);

  late String origform;

  late String language;

  late String partOfSpeech;

  @override
  List<Object?> get props => [origform, language, partOfSpeech];
  @override
  Map<String, dynamic> toJson() => _$GeneratedArgumentsToJson(this);
}

final GENERATED_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Generated'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'origform')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'language')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'partOfSpeech')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'generated'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'origform'),
                  value: VariableNode(name: NameNode(value: 'origform'))),
              ArgumentNode(
                  name: NameNode(value: 'language'),
                  value: VariableNode(name: NameNode(value: 'language'))),
              ArgumentNode(
                  name: NameNode(value: 'partOfSpeech'),
                  value: VariableNode(name: NameNode(value: 'partOfSpeech')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'paradigmTemplate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'analyses'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'wordform'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'weight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class GeneratedQuery extends GraphQLQuery<Generated$Query, GeneratedArguments> {
  GeneratedQuery({required this.variables});

  @override
  final DocumentNode document = GENERATED_QUERY_DOCUMENT;

  @override
  final String operationName = 'Generated';

  @override
  final GeneratedArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Generated$Query parse(Map<String, dynamic> json) =>
      Generated$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DictArticlesArguments extends JsonSerializable with EquatableMixin {
  DictArticlesArguments(
      {required this.lemma,
      required this.srcLangs,
      required this.targetLangs,
      required this.wantedDicts});

  @override
  factory DictArticlesArguments.fromJson(Map<String, dynamic> json) =>
      _$DictArticlesArgumentsFromJson(json);

  late String lemma;

  late List<String?> srcLangs;

  late List<String?> targetLangs;

  late List<String?> wantedDicts;

  @override
  List<Object?> get props => [lemma, srcLangs, targetLangs, wantedDicts];
  @override
  Map<String, dynamic> toJson() => _$DictArticlesArgumentsToJson(this);
}

final DICT_ARTICLES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'DictArticles'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lemma')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'srcLangs')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'targetLangs')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'wantedDicts')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'dictEntryList'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'exact'),
                  value: VariableNode(name: NameNode(value: 'lemma'))),
              ArgumentNode(
                  name: NameNode(value: 'srcLangs'),
                  value: VariableNode(name: NameNode(value: 'srcLangs'))),
              ArgumentNode(
                  name: NameNode(value: 'targetLangs'),
                  value: VariableNode(name: NameNode(value: 'targetLangs'))),
              ArgumentNode(
                  name: NameNode(value: 'wantedDicts'),
                  value: VariableNode(name: NameNode(value: 'wantedDicts')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'dictName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'srcLang'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'targetLang'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'lookupLemmas'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'edges'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'node'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'lemma'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'presentationLemma'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'language'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'pos'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'dialect'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null),
                                FieldNode(
                                    name: NameNode(value: 'country'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null)
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'translationGroups'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'translationLemmas'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'edges'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'node'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'lemma'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(
                                              value: 'presentationLemma'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'language'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'pos'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'dialect'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null),
                                      FieldNode(
                                          name: NameNode(value: 'country'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ])),
                    FieldNode(
                        name: NameNode(value: 'restriction'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'restriction'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'attributes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ])),
                    FieldNode(
                        name: NameNode(value: 'exampleGroups'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'example'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'translation'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class DictArticlesQuery
    extends GraphQLQuery<DictArticles$Query, DictArticlesArguments> {
  DictArticlesQuery({required this.variables});

  @override
  final DocumentNode document = DICT_ARTICLES_QUERY_DOCUMENT;

  @override
  final String operationName = 'DictArticles';

  @override
  final DictArticlesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DictArticles$Query parse(Map<String, dynamic> json) =>
      DictArticles$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class LemmatisedArguments extends JsonSerializable with EquatableMixin {
  LemmatisedArguments({required this.lookupString});

  @override
  factory LemmatisedArguments.fromJson(Map<String, dynamic> json) =>
      _$LemmatisedArgumentsFromJson(json);

  late String lookupString;

  @override
  List<Object?> get props => [lookupString];
  @override
  Map<String, dynamic> toJson() => _$LemmatisedArgumentsToJson(this);
}

final LEMMATISED_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Lemmatised'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lookupString')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'lemmatised'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'lookupString'),
                  value: VariableNode(name: NameNode(value: 'lookupString')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'language'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'wordforms'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'analyses'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'analysis'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'weight'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class LemmatisedQuery
    extends GraphQLQuery<Lemmatised$Query, LemmatisedArguments> {
  LemmatisedQuery({required this.variables});

  @override
  final DocumentNode document = LEMMATISED_QUERY_DOCUMENT;

  @override
  final String operationName = 'Lemmatised';

  @override
  final LemmatisedArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Lemmatised$Query parse(Map<String, dynamic> json) =>
      Lemmatised$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class TermArticlesArguments extends JsonSerializable with EquatableMixin {
  TermArticlesArguments(
      {required this.lemma, required this.srcLangs, required this.targetLangs});

  @override
  factory TermArticlesArguments.fromJson(Map<String, dynamic> json) =>
      _$TermArticlesArgumentsFromJson(json);

  late String lemma;

  late List<String?> srcLangs;

  late List<String?> targetLangs;

  @override
  List<Object?> get props => [lemma, srcLangs, targetLangs];
  @override
  Map<String, dynamic> toJson() => _$TermArticlesArgumentsToJson(this);
}

final TERM_ARTICLES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TermArticles'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'lemma')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'srcLangs')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'targetLangs')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: false),
                isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'conceptList'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'exact'),
                  value: VariableNode(name: NameNode(value: 'lemma'))),
              ArgumentNode(
                  name: NameNode(value: 'srcLangs'),
                  value: VariableNode(name: NameNode(value: 'srcLangs'))),
              ArgumentNode(
                  name: NameNode(value: 'targetLangs'),
                  value: VariableNode(name: NameNode(value: 'targetLangs')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'collections'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'definition'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'explanation'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'terms'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'note'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'source'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'status'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'expression'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'lemma'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'presentationLemma'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'language'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'pos'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'dialect'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null),
                          FieldNode(
                              name: NameNode(value: 'country'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null)
                        ]))
                  ]))
            ]))
      ]))
]);

class TermArticlesQuery
    extends GraphQLQuery<TermArticles$Query, TermArticlesArguments> {
  TermArticlesQuery({required this.variables});

  @override
  final DocumentNode document = TERM_ARTICLES_QUERY_DOCUMENT;

  @override
  final String operationName = 'TermArticles';

  @override
  final TermArticlesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  TermArticles$Query parse(Map<String, dynamic> json) =>
      TermArticles$Query.fromJson(json);
}
