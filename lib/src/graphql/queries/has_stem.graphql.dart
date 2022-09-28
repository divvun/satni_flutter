// Package imports:
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$HasStem {
  factory Variables$Query$HasStem({
    required String stem,
    required List<String?> targetLangs,
    required List<String?> wantedDicts,
  }) =>
      Variables$Query$HasStem._({
        r'stem': stem,
        r'targetLangs': targetLangs,
        r'wantedDicts': wantedDicts,
      });

  Variables$Query$HasStem._(this._$data);

  factory Variables$Query$HasStem.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$stem = data['stem'];
    result$data['stem'] = (l$stem as String);
    final l$targetLangs = data['targetLangs'];
    result$data['targetLangs'] =
        (l$targetLangs as List<dynamic>).map((e) => (e as String?)).toList();
    final l$wantedDicts = data['wantedDicts'];
    result$data['wantedDicts'] =
        (l$wantedDicts as List<dynamic>).map((e) => (e as String?)).toList();
    return Variables$Query$HasStem._(result$data);
  }

  Map<String, dynamic> _$data;

  String get stem => (_$data['stem'] as String);
  List<String?> get targetLangs => (_$data['targetLangs'] as List<String?>);
  List<String?> get wantedDicts => (_$data['wantedDicts'] as List<String?>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$stem = stem;
    result$data['stem'] = l$stem;
    final l$targetLangs = targetLangs;
    result$data['targetLangs'] = l$targetLangs.map((e) => e).toList();
    final l$wantedDicts = wantedDicts;
    result$data['wantedDicts'] = l$wantedDicts.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Query$HasStem<Variables$Query$HasStem> get copyWith =>
      CopyWith$Variables$Query$HasStem(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$HasStem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stem = stem;
    final lOther$stem = other.stem;
    if (l$stem != lOther$stem) {
      return false;
    }
    final l$targetLangs = targetLangs;
    final lOther$targetLangs = other.targetLangs;
    if (l$targetLangs.length != lOther$targetLangs.length) {
      return false;
    }
    for (int i = 0; i < l$targetLangs.length; i++) {
      final l$targetLangs$entry = l$targetLangs[i];
      final lOther$targetLangs$entry = lOther$targetLangs[i];
      if (l$targetLangs$entry != lOther$targetLangs$entry) {
        return false;
      }
    }
    final l$wantedDicts = wantedDicts;
    final lOther$wantedDicts = other.wantedDicts;
    if (l$wantedDicts.length != lOther$wantedDicts.length) {
      return false;
    }
    for (int i = 0; i < l$wantedDicts.length; i++) {
      final l$wantedDicts$entry = l$wantedDicts[i];
      final lOther$wantedDicts$entry = lOther$wantedDicts[i];
      if (l$wantedDicts$entry != lOther$wantedDicts$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$stem = stem;
    final l$targetLangs = targetLangs;
    final l$wantedDicts = wantedDicts;
    return Object.hashAll([
      l$stem,
      Object.hashAll(l$targetLangs.map((v) => v)),
      Object.hashAll(l$wantedDicts.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Query$HasStem<TRes> {
  factory CopyWith$Variables$Query$HasStem(
    Variables$Query$HasStem instance,
    TRes Function(Variables$Query$HasStem) then,
  ) = _CopyWithImpl$Variables$Query$HasStem;

  factory CopyWith$Variables$Query$HasStem.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$HasStem;

  TRes call({
    String? stem,
    List<String?>? targetLangs,
    List<String?>? wantedDicts,
  });
}

class _CopyWithImpl$Variables$Query$HasStem<TRes>
    implements CopyWith$Variables$Query$HasStem<TRes> {
  _CopyWithImpl$Variables$Query$HasStem(
    this._instance,
    this._then,
  );

  final Variables$Query$HasStem _instance;

  final TRes Function(Variables$Query$HasStem) _then;

  static const _undefined = {};

  TRes call({
    Object? stem = _undefined,
    Object? targetLangs = _undefined,
    Object? wantedDicts = _undefined,
  }) =>
      _then(Variables$Query$HasStem._({
        ..._instance._$data,
        if (stem != _undefined && stem != null) 'stem': (stem as String),
        if (targetLangs != _undefined && targetLangs != null)
          'targetLangs': (targetLangs as List<String?>),
        if (wantedDicts != _undefined && wantedDicts != null)
          'wantedDicts': (wantedDicts as List<String?>),
      }));
}

class _CopyWithStubImpl$Variables$Query$HasStem<TRes>
    implements CopyWith$Variables$Query$HasStem<TRes> {
  _CopyWithStubImpl$Variables$Query$HasStem(this._res);

  TRes _res;

  call({
    String? stem,
    List<String?>? targetLangs,
    List<String?>? wantedDicts,
  }) =>
      _res;
}

class Query$HasStem {
  Query$HasStem({
    this.hasStem,
    required this.$__typename,
  });

  factory Query$HasStem.fromJson(Map<String, dynamic> json) {
    final l$hasStem = json['hasStem'];
    final l$$__typename = json['__typename'];
    return Query$HasStem(
      hasStem: (l$hasStem as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$HasStem$hasStem.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$HasStem$hasStem?>? hasStem;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasStem = hasStem;
    _resultData['hasStem'] = l$hasStem?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasStem = hasStem;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasStem == null ? null : Object.hashAll(l$hasStem.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$HasStem) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasStem = hasStem;
    final lOther$hasStem = other.hasStem;
    if (l$hasStem != null && lOther$hasStem != null) {
      if (l$hasStem.length != lOther$hasStem.length) {
        return false;
      }
      for (int i = 0; i < l$hasStem.length; i++) {
        final l$hasStem$entry = l$hasStem[i];
        final lOther$hasStem$entry = lOther$hasStem[i];
        if (l$hasStem$entry != lOther$hasStem$entry) {
          return false;
        }
      }
    } else if (l$hasStem != lOther$hasStem) {
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

extension UtilityExtension$Query$HasStem on Query$HasStem {
  CopyWith$Query$HasStem<Query$HasStem> get copyWith => CopyWith$Query$HasStem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$HasStem<TRes> {
  factory CopyWith$Query$HasStem(
    Query$HasStem instance,
    TRes Function(Query$HasStem) then,
  ) = _CopyWithImpl$Query$HasStem;

  factory CopyWith$Query$HasStem.stub(TRes res) =
      _CopyWithStubImpl$Query$HasStem;

  TRes call({
    List<Query$HasStem$hasStem?>? hasStem,
    String? $__typename,
  });
  TRes hasStem(
      Iterable<Query$HasStem$hasStem?>? Function(
              Iterable<CopyWith$Query$HasStem$hasStem<Query$HasStem$hasStem>?>?)
          _fn);
}

class _CopyWithImpl$Query$HasStem<TRes>
    implements CopyWith$Query$HasStem<TRes> {
  _CopyWithImpl$Query$HasStem(
    this._instance,
    this._then,
  );

  final Query$HasStem _instance;

  final TRes Function(Query$HasStem) _then;

  static const _undefined = {};

  TRes call({
    Object? hasStem = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HasStem(
        hasStem: hasStem == _undefined
            ? _instance.hasStem
            : (hasStem as List<Query$HasStem$hasStem?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes hasStem(
          Iterable<Query$HasStem$hasStem?>? Function(
                  Iterable<
                      CopyWith$Query$HasStem$hasStem<Query$HasStem$hasStem>?>?)
              _fn) =>
      call(
          hasStem: _fn(_instance.hasStem?.map((e) => e == null
              ? null
              : CopyWith$Query$HasStem$hasStem(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$HasStem<TRes>
    implements CopyWith$Query$HasStem<TRes> {
  _CopyWithStubImpl$Query$HasStem(this._res);

  TRes _res;

  call({
    List<Query$HasStem$hasStem?>? hasStem,
    String? $__typename,
  }) =>
      _res;
  hasStem(_fn) => _res;
}

const documentNodeQueryHasStem = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'HasStem'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'stem')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'targetLangs')),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'wantedDicts')),
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
        name: NameNode(value: 'hasStem'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'exact'),
            value: VariableNode(name: NameNode(value: 'stem')),
          ),
          ArgumentNode(
            name: NameNode(value: 'targetLangs'),
            value: VariableNode(name: NameNode(value: 'targetLangs')),
          ),
          ArgumentNode(
            name: NameNode(value: 'wantedDicts'),
            value: VariableNode(name: NameNode(value: 'wantedDicts')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'stem'),
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
]);
Query$HasStem _parserFn$Query$HasStem(Map<String, dynamic> data) =>
    Query$HasStem.fromJson(data);

class Options$Query$HasStem extends graphql.QueryOptions<Query$HasStem> {
  Options$Query$HasStem({
    String? operationName,
    required Variables$Query$HasStem variables,
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
          document: documentNodeQueryHasStem,
          parserFn: _parserFn$Query$HasStem,
        );
}

class WatchOptions$Query$HasStem
    extends graphql.WatchQueryOptions<Query$HasStem> {
  WatchOptions$Query$HasStem({
    String? operationName,
    required Variables$Query$HasStem variables,
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
          document: documentNodeQueryHasStem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$HasStem,
        );
}

class FetchMoreOptions$Query$HasStem extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$HasStem({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$HasStem variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryHasStem,
        );
}

extension ClientExtension$Query$HasStem on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$HasStem>> query$HasStem(
          Options$Query$HasStem options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$HasStem> watchQuery$HasStem(
          WatchOptions$Query$HasStem options) =>
      this.watchQuery(options);
  void writeQuery$HasStem({
    required Query$HasStem data,
    required Variables$Query$HasStem variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryHasStem),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$HasStem? readQuery$HasStem({
    required Variables$Query$HasStem variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryHasStem),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$HasStem.fromJson(result);
  }
}

class Query$HasStem$hasStem {
  Query$HasStem$hasStem({
    required this.stem,
    required this.$__typename,
  });

  factory Query$HasStem$hasStem.fromJson(Map<String, dynamic> json) {
    final l$stem = json['stem'];
    final l$$__typename = json['__typename'];
    return Query$HasStem$hasStem(
      stem: (l$stem as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String stem;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stem = stem;
    _resultData['stem'] = l$stem;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stem = stem;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stem,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$HasStem$hasStem) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stem = stem;
    final lOther$stem = other.stem;
    if (l$stem != lOther$stem) {
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

extension UtilityExtension$Query$HasStem$hasStem on Query$HasStem$hasStem {
  CopyWith$Query$HasStem$hasStem<Query$HasStem$hasStem> get copyWith =>
      CopyWith$Query$HasStem$hasStem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$HasStem$hasStem<TRes> {
  factory CopyWith$Query$HasStem$hasStem(
    Query$HasStem$hasStem instance,
    TRes Function(Query$HasStem$hasStem) then,
  ) = _CopyWithImpl$Query$HasStem$hasStem;

  factory CopyWith$Query$HasStem$hasStem.stub(TRes res) =
      _CopyWithStubImpl$Query$HasStem$hasStem;

  TRes call({
    String? stem,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$HasStem$hasStem<TRes>
    implements CopyWith$Query$HasStem$hasStem<TRes> {
  _CopyWithImpl$Query$HasStem$hasStem(
    this._instance,
    this._then,
  );

  final Query$HasStem$hasStem _instance;

  final TRes Function(Query$HasStem$hasStem) _then;

  static const _undefined = {};

  TRes call({
    Object? stem = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$HasStem$hasStem(
        stem: stem == _undefined || stem == null
            ? _instance.stem
            : (stem as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$HasStem$hasStem<TRes>
    implements CopyWith$Query$HasStem$hasStem<TRes> {
  _CopyWithStubImpl$Query$HasStem$hasStem(this._res);

  TRes _res;

  call({
    String? stem,
    String? $__typename,
  }) =>
      _res;
}
