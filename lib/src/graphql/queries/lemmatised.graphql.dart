// Package imports:
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$Lemmatised {
  factory Variables$Query$Lemmatised({required String lookupString}) =>
      Variables$Query$Lemmatised._({
        r'lookupString': lookupString,
      });

  Variables$Query$Lemmatised._(this._$data);

  factory Variables$Query$Lemmatised.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lookupString = data['lookupString'];
    result$data['lookupString'] = (l$lookupString as String);
    return Variables$Query$Lemmatised._(result$data);
  }

  Map<String, dynamic> _$data;

  String get lookupString => (_$data['lookupString'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lookupString = lookupString;
    result$data['lookupString'] = l$lookupString;
    return result$data;
  }

  CopyWith$Variables$Query$Lemmatised<Variables$Query$Lemmatised>
      get copyWith => CopyWith$Variables$Query$Lemmatised(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Lemmatised) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lookupString = lookupString;
    final lOther$lookupString = other.lookupString;
    if (l$lookupString != lOther$lookupString) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lookupString = lookupString;
    return Object.hashAll([l$lookupString]);
  }
}

abstract class CopyWith$Variables$Query$Lemmatised<TRes> {
  factory CopyWith$Variables$Query$Lemmatised(
    Variables$Query$Lemmatised instance,
    TRes Function(Variables$Query$Lemmatised) then,
  ) = _CopyWithImpl$Variables$Query$Lemmatised;

  factory CopyWith$Variables$Query$Lemmatised.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Lemmatised;

  TRes call({String? lookupString});
}

class _CopyWithImpl$Variables$Query$Lemmatised<TRes>
    implements CopyWith$Variables$Query$Lemmatised<TRes> {
  _CopyWithImpl$Variables$Query$Lemmatised(
    this._instance,
    this._then,
  );

  final Variables$Query$Lemmatised _instance;

  final TRes Function(Variables$Query$Lemmatised) _then;

  static const _undefined = {};

  TRes call({Object? lookupString = _undefined}) =>
      _then(Variables$Query$Lemmatised._({
        ..._instance._$data,
        if (lookupString != _undefined && lookupString != null)
          'lookupString': (lookupString as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Lemmatised<TRes>
    implements CopyWith$Variables$Query$Lemmatised<TRes> {
  _CopyWithStubImpl$Variables$Query$Lemmatised(this._res);

  TRes _res;

  call({String? lookupString}) => _res;
}

class Query$Lemmatised {
  Query$Lemmatised({
    this.lemmatised,
    required this.$__typename,
  });

  factory Query$Lemmatised.fromJson(Map<String, dynamic> json) {
    final l$lemmatised = json['lemmatised'];
    final l$$__typename = json['__typename'];
    return Query$Lemmatised(
      lemmatised: (l$lemmatised as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Lemmatised$lemmatised.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Lemmatised$lemmatised?>? lemmatised;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lemmatised = lemmatised;
    _resultData['lemmatised'] = l$lemmatised?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lemmatised = lemmatised;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lemmatised == null ? null : Object.hashAll(l$lemmatised.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Lemmatised) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lemmatised = lemmatised;
    final lOther$lemmatised = other.lemmatised;
    if (l$lemmatised != null && lOther$lemmatised != null) {
      if (l$lemmatised.length != lOther$lemmatised.length) {
        return false;
      }
      for (int i = 0; i < l$lemmatised.length; i++) {
        final l$lemmatised$entry = l$lemmatised[i];
        final lOther$lemmatised$entry = lOther$lemmatised[i];
        if (l$lemmatised$entry != lOther$lemmatised$entry) {
          return false;
        }
      }
    } else if (l$lemmatised != lOther$lemmatised) {
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

extension UtilityExtension$Query$Lemmatised on Query$Lemmatised {
  CopyWith$Query$Lemmatised<Query$Lemmatised> get copyWith =>
      CopyWith$Query$Lemmatised(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Lemmatised<TRes> {
  factory CopyWith$Query$Lemmatised(
    Query$Lemmatised instance,
    TRes Function(Query$Lemmatised) then,
  ) = _CopyWithImpl$Query$Lemmatised;

  factory CopyWith$Query$Lemmatised.stub(TRes res) =
      _CopyWithStubImpl$Query$Lemmatised;

  TRes call({
    List<Query$Lemmatised$lemmatised?>? lemmatised,
    String? $__typename,
  });
  TRes lemmatised(
      Iterable<Query$Lemmatised$lemmatised?>? Function(
              Iterable<
                  CopyWith$Query$Lemmatised$lemmatised<
                      Query$Lemmatised$lemmatised>?>?)
          _fn);
}

class _CopyWithImpl$Query$Lemmatised<TRes>
    implements CopyWith$Query$Lemmatised<TRes> {
  _CopyWithImpl$Query$Lemmatised(
    this._instance,
    this._then,
  );

  final Query$Lemmatised _instance;

  final TRes Function(Query$Lemmatised) _then;

  static const _undefined = {};

  TRes call({
    Object? lemmatised = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Lemmatised(
        lemmatised: lemmatised == _undefined
            ? _instance.lemmatised
            : (lemmatised as List<Query$Lemmatised$lemmatised?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes lemmatised(
          Iterable<Query$Lemmatised$lemmatised?>? Function(
                  Iterable<
                      CopyWith$Query$Lemmatised$lemmatised<
                          Query$Lemmatised$lemmatised>?>?)
              _fn) =>
      call(
          lemmatised: _fn(_instance.lemmatised?.map((e) => e == null
              ? null
              : CopyWith$Query$Lemmatised$lemmatised(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Lemmatised<TRes>
    implements CopyWith$Query$Lemmatised<TRes> {
  _CopyWithStubImpl$Query$Lemmatised(this._res);

  TRes _res;

  call({
    List<Query$Lemmatised$lemmatised?>? lemmatised,
    String? $__typename,
  }) =>
      _res;
  lemmatised(_fn) => _res;
}

const documentNodeQueryLemmatised = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Lemmatised'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lookupString')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'lemmatised'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'lookupString'),
            value: VariableNode(name: NameNode(value: 'lookupString')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'language'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'wordforms'),
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
                name: NameNode(value: 'analysis'),
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
Query$Lemmatised _parserFn$Query$Lemmatised(Map<String, dynamic> data) =>
    Query$Lemmatised.fromJson(data);

class Options$Query$Lemmatised extends graphql.QueryOptions<Query$Lemmatised> {
  Options$Query$Lemmatised({
    String? operationName,
    required Variables$Query$Lemmatised variables,
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
          document: documentNodeQueryLemmatised,
          parserFn: _parserFn$Query$Lemmatised,
        );
}

class WatchOptions$Query$Lemmatised
    extends graphql.WatchQueryOptions<Query$Lemmatised> {
  WatchOptions$Query$Lemmatised({
    String? operationName,
    required Variables$Query$Lemmatised variables,
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
          document: documentNodeQueryLemmatised,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Lemmatised,
        );
}

class FetchMoreOptions$Query$Lemmatised extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Lemmatised({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Lemmatised variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryLemmatised,
        );
}

extension ClientExtension$Query$Lemmatised on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Lemmatised>> query$Lemmatised(
          Options$Query$Lemmatised options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Lemmatised> watchQuery$Lemmatised(
          WatchOptions$Query$Lemmatised options) =>
      this.watchQuery(options);
  void writeQuery$Lemmatised({
    required Query$Lemmatised data,
    required Variables$Query$Lemmatised variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryLemmatised),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Lemmatised? readQuery$Lemmatised({
    required Variables$Query$Lemmatised variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryLemmatised),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Lemmatised.fromJson(result);
  }
}

class Query$Lemmatised$lemmatised {
  Query$Lemmatised$lemmatised({
    required this.language,
    required this.wordforms,
    required this.analyses,
    required this.$__typename,
  });

  factory Query$Lemmatised$lemmatised.fromJson(Map<String, dynamic> json) {
    final l$language = json['language'];
    final l$wordforms = json['wordforms'];
    final l$analyses = json['analyses'];
    final l$$__typename = json['__typename'];
    return Query$Lemmatised$lemmatised(
      language: (l$language as String),
      wordforms:
          (l$wordforms as List<dynamic>).map((e) => (e as String?)).toList(),
      analyses: (l$analyses as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$Lemmatised$lemmatised$analyses.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String language;

  final List<String?> wordforms;

  final List<Query$Lemmatised$lemmatised$analyses?> analyses;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$language = language;
    _resultData['language'] = l$language;
    final l$wordforms = wordforms;
    _resultData['wordforms'] = l$wordforms.map((e) => e).toList();
    final l$analyses = analyses;
    _resultData['analyses'] = l$analyses.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$language = language;
    final l$wordforms = wordforms;
    final l$analyses = analyses;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$language,
      Object.hashAll(l$wordforms.map((v) => v)),
      Object.hashAll(l$analyses.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Lemmatised$lemmatised) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
      return false;
    }
    final l$wordforms = wordforms;
    final lOther$wordforms = other.wordforms;
    if (l$wordforms.length != lOther$wordforms.length) {
      return false;
    }
    for (int i = 0; i < l$wordforms.length; i++) {
      final l$wordforms$entry = l$wordforms[i];
      final lOther$wordforms$entry = lOther$wordforms[i];
      if (l$wordforms$entry != lOther$wordforms$entry) {
        return false;
      }
    }
    final l$analyses = analyses;
    final lOther$analyses = other.analyses;
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Lemmatised$lemmatised
    on Query$Lemmatised$lemmatised {
  CopyWith$Query$Lemmatised$lemmatised<Query$Lemmatised$lemmatised>
      get copyWith => CopyWith$Query$Lemmatised$lemmatised(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Lemmatised$lemmatised<TRes> {
  factory CopyWith$Query$Lemmatised$lemmatised(
    Query$Lemmatised$lemmatised instance,
    TRes Function(Query$Lemmatised$lemmatised) then,
  ) = _CopyWithImpl$Query$Lemmatised$lemmatised;

  factory CopyWith$Query$Lemmatised$lemmatised.stub(TRes res) =
      _CopyWithStubImpl$Query$Lemmatised$lemmatised;

  TRes call({
    String? language,
    List<String?>? wordforms,
    List<Query$Lemmatised$lemmatised$analyses?>? analyses,
    String? $__typename,
  });
  TRes analyses(
      Iterable<Query$Lemmatised$lemmatised$analyses?> Function(
              Iterable<
                  CopyWith$Query$Lemmatised$lemmatised$analyses<
                      Query$Lemmatised$lemmatised$analyses>?>)
          _fn);
}

class _CopyWithImpl$Query$Lemmatised$lemmatised<TRes>
    implements CopyWith$Query$Lemmatised$lemmatised<TRes> {
  _CopyWithImpl$Query$Lemmatised$lemmatised(
    this._instance,
    this._then,
  );

  final Query$Lemmatised$lemmatised _instance;

  final TRes Function(Query$Lemmatised$lemmatised) _then;

  static const _undefined = {};

  TRes call({
    Object? language = _undefined,
    Object? wordforms = _undefined,
    Object? analyses = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Lemmatised$lemmatised(
        language: language == _undefined || language == null
            ? _instance.language
            : (language as String),
        wordforms: wordforms == _undefined || wordforms == null
            ? _instance.wordforms
            : (wordforms as List<String?>),
        analyses: analyses == _undefined || analyses == null
            ? _instance.analyses
            : (analyses as List<Query$Lemmatised$lemmatised$analyses?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes analyses(
          Iterable<Query$Lemmatised$lemmatised$analyses?> Function(
                  Iterable<
                      CopyWith$Query$Lemmatised$lemmatised$analyses<
                          Query$Lemmatised$lemmatised$analyses>?>)
              _fn) =>
      call(
          analyses: _fn(_instance.analyses.map((e) => e == null
              ? null
              : CopyWith$Query$Lemmatised$lemmatised$analyses(
                  e,
                  (i) => i,
                ))).toList());
}

class _CopyWithStubImpl$Query$Lemmatised$lemmatised<TRes>
    implements CopyWith$Query$Lemmatised$lemmatised<TRes> {
  _CopyWithStubImpl$Query$Lemmatised$lemmatised(this._res);

  TRes _res;

  call({
    String? language,
    List<String?>? wordforms,
    List<Query$Lemmatised$lemmatised$analyses?>? analyses,
    String? $__typename,
  }) =>
      _res;
  analyses(_fn) => _res;
}

class Query$Lemmatised$lemmatised$analyses {
  Query$Lemmatised$lemmatised$analyses({
    required this.analysis,
    required this.weight,
    required this.$__typename,
  });

  factory Query$Lemmatised$lemmatised$analyses.fromJson(
      Map<String, dynamic> json) {
    final l$analysis = json['analysis'];
    final l$weight = json['weight'];
    final l$$__typename = json['__typename'];
    return Query$Lemmatised$lemmatised$analyses(
      analysis: (l$analysis as String),
      weight: (l$weight as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String analysis;

  final double weight;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$analysis = analysis;
    _resultData['analysis'] = l$analysis;
    final l$weight = weight;
    _resultData['weight'] = l$weight;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$analysis = analysis;
    final l$weight = weight;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$analysis,
      l$weight,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Lemmatised$lemmatised$analyses) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$analysis = analysis;
    final lOther$analysis = other.analysis;
    if (l$analysis != lOther$analysis) {
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

extension UtilityExtension$Query$Lemmatised$lemmatised$analyses
    on Query$Lemmatised$lemmatised$analyses {
  CopyWith$Query$Lemmatised$lemmatised$analyses<
          Query$Lemmatised$lemmatised$analyses>
      get copyWith => CopyWith$Query$Lemmatised$lemmatised$analyses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Lemmatised$lemmatised$analyses<TRes> {
  factory CopyWith$Query$Lemmatised$lemmatised$analyses(
    Query$Lemmatised$lemmatised$analyses instance,
    TRes Function(Query$Lemmatised$lemmatised$analyses) then,
  ) = _CopyWithImpl$Query$Lemmatised$lemmatised$analyses;

  factory CopyWith$Query$Lemmatised$lemmatised$analyses.stub(TRes res) =
      _CopyWithStubImpl$Query$Lemmatised$lemmatised$analyses;

  TRes call({
    String? analysis,
    double? weight,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Lemmatised$lemmatised$analyses<TRes>
    implements CopyWith$Query$Lemmatised$lemmatised$analyses<TRes> {
  _CopyWithImpl$Query$Lemmatised$lemmatised$analyses(
    this._instance,
    this._then,
  );

  final Query$Lemmatised$lemmatised$analyses _instance;

  final TRes Function(Query$Lemmatised$lemmatised$analyses) _then;

  static const _undefined = {};

  TRes call({
    Object? analysis = _undefined,
    Object? weight = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Lemmatised$lemmatised$analyses(
        analysis: analysis == _undefined || analysis == null
            ? _instance.analysis
            : (analysis as String),
        weight: weight == _undefined || weight == null
            ? _instance.weight
            : (weight as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Lemmatised$lemmatised$analyses<TRes>
    implements CopyWith$Query$Lemmatised$lemmatised$analyses<TRes> {
  _CopyWithStubImpl$Query$Lemmatised$lemmatised$analyses(this._res);

  TRes _res;

  call({
    String? analysis,
    double? weight,
    String? $__typename,
  }) =>
      _res;
}
