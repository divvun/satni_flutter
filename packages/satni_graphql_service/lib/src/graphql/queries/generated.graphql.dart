// Package imports:
// ignore_for_file: depend_on_referenced_packages, prefer_is_not_operator, prefer_final_fields, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unnecessary_this, annotate_overrides

import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$Generated {
  factory Variables$Query$Generated({
    required String origform,
    required String language,
    required List<String?> paradigmTemplates,
  }) =>
      Variables$Query$Generated._({
        r'origform': origform,
        r'language': language,
        r'paradigmTemplates': paradigmTemplates,
      });

  Variables$Query$Generated._(this._$data);

  factory Variables$Query$Generated.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$origform = data['origform'];
    result$data['origform'] = (l$origform as String);
    final l$language = data['language'];
    result$data['language'] = (l$language as String);
    final l$paradigmTemplates = data['paradigmTemplates'];
    result$data['paradigmTemplates'] = (l$paradigmTemplates as List<dynamic>)
        .map((e) => (e as String?))
        .toList();
    return Variables$Query$Generated._(result$data);
  }

  Map<String, dynamic> _$data;

  String get origform => (_$data['origform'] as String);
  String get language => (_$data['language'] as String);
  List<String?> get paradigmTemplates =>
      (_$data['paradigmTemplates'] as List<String?>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$origform = origform;
    result$data['origform'] = l$origform;
    final l$language = language;
    result$data['language'] = l$language;
    final l$paradigmTemplates = paradigmTemplates;
    result$data['paradigmTemplates'] =
        l$paradigmTemplates.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Query$Generated<Variables$Query$Generated> get copyWith =>
      CopyWith$Variables$Query$Generated(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Generated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$origform = origform;
    final lOther$origform = other.origform;
    if (l$origform != lOther$origform) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
      return false;
    }
    final l$paradigmTemplates = paradigmTemplates;
    final lOther$paradigmTemplates = other.paradigmTemplates;
    if (l$paradigmTemplates.length != lOther$paradigmTemplates.length) {
      return false;
    }
    for (int i = 0; i < l$paradigmTemplates.length; i++) {
      final l$paradigmTemplates$entry = l$paradigmTemplates[i];
      final lOther$paradigmTemplates$entry = lOther$paradigmTemplates[i];
      if (l$paradigmTemplates$entry != lOther$paradigmTemplates$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$origform = origform;
    final l$language = language;
    final l$paradigmTemplates = paradigmTemplates;
    return Object.hashAll([
      l$origform,
      l$language,
      Object.hashAll(l$paradigmTemplates.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Query$Generated<TRes> {
  factory CopyWith$Variables$Query$Generated(
    Variables$Query$Generated instance,
    TRes Function(Variables$Query$Generated) then,
  ) = _CopyWithImpl$Variables$Query$Generated;

  factory CopyWith$Variables$Query$Generated.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Generated;

  TRes call({
    String? origform,
    String? language,
    List<String?>? paradigmTemplates,
  });
}

class _CopyWithImpl$Variables$Query$Generated<TRes>
    implements CopyWith$Variables$Query$Generated<TRes> {
  _CopyWithImpl$Variables$Query$Generated(
    this._instance,
    this._then,
  );

  final Variables$Query$Generated _instance;

  final TRes Function(Variables$Query$Generated) _then;

  static const _undefined = {};

  TRes call({
    Object? origform = _undefined,
    Object? language = _undefined,
    Object? paradigmTemplates = _undefined,
  }) =>
      _then(Variables$Query$Generated._({
        ..._instance._$data,
        if (origform != _undefined && origform != null)
          'origform': (origform as String),
        if (language != _undefined && language != null)
          'language': (language as String),
        if (paradigmTemplates != _undefined && paradigmTemplates != null)
          'paradigmTemplates': (paradigmTemplates as List<String?>),
      }));
}

class _CopyWithStubImpl$Variables$Query$Generated<TRes>
    implements CopyWith$Variables$Query$Generated<TRes> {
  _CopyWithStubImpl$Variables$Query$Generated(this._res);

  TRes _res;

  call({
    String? origform,
    String? language,
    List<String?>? paradigmTemplates,
  }) =>
      _res;
}

class Query$Generated {
  Query$Generated({
    this.generated,
    required this.$__typename,
  });

  factory Query$Generated.fromJson(Map<String, dynamic> json) {
    final l$generated = json['generated'];
    final l$$__typename = json['__typename'];
    return Query$Generated(
      generated: (l$generated as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Generated$generated.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Generated$generated?>? generated;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$generated = generated;
    _resultData['generated'] = l$generated?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$generated = generated;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$generated == null ? null : Object.hashAll(l$generated.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Generated) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$generated = generated;
    final lOther$generated = other.generated;
    if (l$generated != null && lOther$generated != null) {
      if (l$generated.length != lOther$generated.length) {
        return false;
      }
      for (int i = 0; i < l$generated.length; i++) {
        final l$generated$entry = l$generated[i];
        final lOther$generated$entry = lOther$generated[i];
        if (l$generated$entry != lOther$generated$entry) {
          return false;
        }
      }
    } else if (l$generated != lOther$generated) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Generated on Query$Generated {
  CopyWith$Query$Generated<Query$Generated> get copyWith =>
      CopyWith$Query$Generated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Generated<TRes> {
  factory CopyWith$Query$Generated(
    Query$Generated instance,
    TRes Function(Query$Generated) then,
  ) = _CopyWithImpl$Query$Generated;

  factory CopyWith$Query$Generated.stub(TRes res) =
      _CopyWithStubImpl$Query$Generated;

  TRes call({
    List<Query$Generated$generated?>? generated,
    String? $__typename,
  });
  TRes generated(
      Iterable<Query$Generated$generated?>? Function(
              Iterable<
                  CopyWith$Query$Generated$generated<
                      Query$Generated$generated>?>?)
          _fn);
}

class _CopyWithImpl$Query$Generated<TRes>
    implements CopyWith$Query$Generated<TRes> {
  _CopyWithImpl$Query$Generated(
    this._instance,
    this._then,
  );

  final Query$Generated _instance;

  final TRes Function(Query$Generated) _then;

  static const _undefined = {};

  TRes call({
    Object? generated = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Generated(
        generated: generated == _undefined
            ? _instance.generated
            : (generated as List<Query$Generated$generated?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes generated(
          Iterable<Query$Generated$generated?>? Function(
                  Iterable<
                      CopyWith$Query$Generated$generated<
                          Query$Generated$generated>?>?)
              _fn) =>
      call(
          generated: _fn(_instance.generated?.map((e) => e == null
              ? null
              : CopyWith$Query$Generated$generated(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Generated<TRes>
    implements CopyWith$Query$Generated<TRes> {
  _CopyWithStubImpl$Query$Generated(this._res);

  TRes _res;

  call({
    List<Query$Generated$generated?>? generated,
    String? $__typename,
  }) =>
      _res;
  generated(_fn) => _res;
}

const documentNodeQueryGenerated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Generated'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'origform')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'language')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'paradigmTemplates')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'generated'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'origform'),
            value: VariableNode(name: NameNode(value: 'origform')),
          ),
          ArgumentNode(
            name: NameNode(value: 'language'),
            value: VariableNode(name: NameNode(value: 'language')),
          ),
          ArgumentNode(
            name: NameNode(value: 'paradigmTemplates'),
            value: VariableNode(name: NameNode(value: 'paradigmTemplates')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'paradigmTemplate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'weight'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$Generated _parserFn$Query$Generated(Map<String, dynamic> data) =>
    Query$Generated.fromJson(data);

class Options$Query$Generated extends graphql.QueryOptions<Query$Generated> {
  Options$Query$Generated({
    String? operationName,
    required Variables$Query$Generated variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryGenerated,
          parserFn: _parserFn$Query$Generated,
        );
}

class WatchOptions$Query$Generated
    extends graphql.WatchQueryOptions<Query$Generated> {
  WatchOptions$Query$Generated({
    String? operationName,
    required Variables$Query$Generated variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryGenerated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Generated,
        );
}

class FetchMoreOptions$Query$Generated extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Generated({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Generated variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGenerated,
        );
}

extension ClientExtension$Query$Generated on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Generated>> query$Generated(
          Options$Query$Generated options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Generated> watchQuery$Generated(
          WatchOptions$Query$Generated options) =>
      this.watchQuery(options);
  void writeQuery$Generated({
    required Query$Generated data,
    required Variables$Query$Generated variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGenerated),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Generated? readQuery$Generated({
    required Variables$Query$Generated variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGenerated),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Generated.fromJson(result);
  }
}

class Query$Generated$generated {
  Query$Generated$generated({
    required this.paradigmTemplate,
    this.analyses,
    required this.$__typename,
  });

  factory Query$Generated$generated.fromJson(Map<String, dynamic> json) {
    final l$paradigmTemplate = json['paradigmTemplate'];
    final l$analyses = json['analyses'];
    final l$$__typename = json['__typename'];
    return Query$Generated$generated(
      paradigmTemplate: (l$paradigmTemplate as String),
      analyses: (l$analyses as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Generated$generated$analyses.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String paradigmTemplate;

  final List<Query$Generated$generated$analyses?>? analyses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paradigmTemplate = paradigmTemplate;
    _resultData['paradigmTemplate'] = l$paradigmTemplate;
    final l$analyses = analyses;
    _resultData['analyses'] = l$analyses?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paradigmTemplate = paradigmTemplate;
    final l$analyses = analyses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paradigmTemplate,
      l$analyses == null ? null : Object.hashAll(l$analyses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Generated$generated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paradigmTemplate = paradigmTemplate;
    final lOther$paradigmTemplate = other.paradigmTemplate;
    if (l$paradigmTemplate != lOther$paradigmTemplate) {
      return false;
    }
    final l$analyses = analyses;
    final lOther$analyses = other.analyses;
    if (l$analyses != null && lOther$analyses != null) {
      if (l$analyses.length != lOther$analyses.length) {
        return false;
      }
      for (int i = 0; i < l$analyses.length; i++) {
        final l$analyses$entry = l$analyses[i];
        final lOther$analyses$entry = lOther$analyses[i];
        if (l$analyses$entry != lOther$analyses$entry) {
          return false;
        }
      }
    } else if (l$analyses != lOther$analyses) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Generated$generated
    on Query$Generated$generated {
  CopyWith$Query$Generated$generated<Query$Generated$generated> get copyWith =>
      CopyWith$Query$Generated$generated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Generated$generated<TRes> {
  factory CopyWith$Query$Generated$generated(
    Query$Generated$generated instance,
    TRes Function(Query$Generated$generated) then,
  ) = _CopyWithImpl$Query$Generated$generated;

  factory CopyWith$Query$Generated$generated.stub(TRes res) =
      _CopyWithStubImpl$Query$Generated$generated;

  TRes call({
    String? paradigmTemplate,
    List<Query$Generated$generated$analyses?>? analyses,
    String? $__typename,
  });
  TRes analyses(
      Iterable<Query$Generated$generated$analyses?>? Function(
              Iterable<
                  CopyWith$Query$Generated$generated$analyses<
                      Query$Generated$generated$analyses>?>?)
          _fn);
}

class _CopyWithImpl$Query$Generated$generated<TRes>
    implements CopyWith$Query$Generated$generated<TRes> {
  _CopyWithImpl$Query$Generated$generated(
    this._instance,
    this._then,
  );

  final Query$Generated$generated _instance;

  final TRes Function(Query$Generated$generated) _then;

  static const _undefined = {};

  TRes call({
    Object? paradigmTemplate = _undefined,
    Object? analyses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Generated$generated(
        paradigmTemplate:
            paradigmTemplate == _undefined || paradigmTemplate == null
                ? _instance.paradigmTemplate
                : (paradigmTemplate as String),
        analyses: analyses == _undefined
            ? _instance.analyses
            : (analyses as List<Query$Generated$generated$analyses?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes analyses(
          Iterable<Query$Generated$generated$analyses?>? Function(
                  Iterable<
                      CopyWith$Query$Generated$generated$analyses<
                          Query$Generated$generated$analyses>?>?)
              _fn) =>
      call(
          analyses: _fn(_instance.analyses?.map((e) => e == null
              ? null
              : CopyWith$Query$Generated$generated$analyses(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Generated$generated<TRes>
    implements CopyWith$Query$Generated$generated<TRes> {
  _CopyWithStubImpl$Query$Generated$generated(this._res);

  TRes _res;

  call({
    String? paradigmTemplate,
    List<Query$Generated$generated$analyses?>? analyses,
    String? $__typename,
  }) =>
      _res;
  analyses(_fn) => _res;
}

class Query$Generated$generated$analyses {
  Query$Generated$generated$analyses({
    required this.wordform,
    required this.weight,
    required this.$__typename,
  });

  factory Query$Generated$generated$analyses.fromJson(
      Map<String, dynamic> json) {
    final l$wordform = json['wordform'];
    final l$weight = json['weight'];
    final l$$__typename = json['__typename'];
    return Query$Generated$generated$analyses(
      wordform: (l$wordform as String),
      weight: (l$weight as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String wordform;

  final double weight;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$wordform = wordform;
    _resultData['wordform'] = l$wordform;
    final l$weight = weight;
    _resultData['weight'] = l$weight;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$wordform = wordform;
    final l$weight = weight;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$wordform,
      l$weight,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Generated$generated$analyses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wordform = wordform;
    final lOther$wordform = other.wordform;
    if (l$wordform != lOther$wordform) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Generated$generated$analyses
    on Query$Generated$generated$analyses {
  CopyWith$Query$Generated$generated$analyses<
          Query$Generated$generated$analyses>
      get copyWith => CopyWith$Query$Generated$generated$analyses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Generated$generated$analyses<TRes> {
  factory CopyWith$Query$Generated$generated$analyses(
    Query$Generated$generated$analyses instance,
    TRes Function(Query$Generated$generated$analyses) then,
  ) = _CopyWithImpl$Query$Generated$generated$analyses;

  factory CopyWith$Query$Generated$generated$analyses.stub(TRes res) =
      _CopyWithStubImpl$Query$Generated$generated$analyses;

  TRes call({
    String? wordform,
    double? weight,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Generated$generated$analyses<TRes>
    implements CopyWith$Query$Generated$generated$analyses<TRes> {
  _CopyWithImpl$Query$Generated$generated$analyses(
    this._instance,
    this._then,
  );

  final Query$Generated$generated$analyses _instance;

  final TRes Function(Query$Generated$generated$analyses) _then;

  static const _undefined = {};

  TRes call({
    Object? wordform = _undefined,
    Object? weight = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Generated$generated$analyses(
        wordform: wordform == _undefined || wordform == null
            ? _instance.wordform
            : (wordform as String),
        weight: weight == _undefined || weight == null
            ? _instance.weight
            : (weight as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Generated$generated$analyses<TRes>
    implements CopyWith$Query$Generated$generated$analyses<TRes> {
  _CopyWithStubImpl$Query$Generated$generated$analyses(this._res);

  TRes _res;

  call({
    String? wordform,
    double? weight,
    String? $__typename,
  }) =>
      _res;
}
