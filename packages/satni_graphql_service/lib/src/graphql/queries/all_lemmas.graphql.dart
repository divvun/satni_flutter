// Package imports:
// ignore_for_file: depend_on_referenced_packages, annotate_overrides, prefer_final_fields, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unnecessary_this, prefer_is_not_operator

import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$AllLemmas {
  factory Variables$Query$AllLemmas({
    required String inputValue,
    required String searchMode,
    required List<String?> srcLangs,
    required List<String?> targetLangs,
    required List<String?> wantedDicts,
    String? after,
  }) =>
      Variables$Query$AllLemmas._({
        r'inputValue': inputValue,
        r'searchMode': searchMode,
        r'srcLangs': srcLangs,
        r'targetLangs': targetLangs,
        r'wantedDicts': wantedDicts,
        if (after != null) r'after': after,
      });

  Variables$Query$AllLemmas._(this._$data);

  factory Variables$Query$AllLemmas.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$inputValue = data['inputValue'];
    result$data['inputValue'] = (l$inputValue as String);
    final l$searchMode = data['searchMode'];
    result$data['searchMode'] = (l$searchMode as String);
    final l$srcLangs = data['srcLangs'];
    result$data['srcLangs'] =
        (l$srcLangs as List<dynamic>).map((e) => (e as String?)).toList();
    final l$targetLangs = data['targetLangs'];
    result$data['targetLangs'] =
        (l$targetLangs as List<dynamic>).map((e) => (e as String?)).toList();
    final l$wantedDicts = data['wantedDicts'];
    result$data['wantedDicts'] =
        (l$wantedDicts as List<dynamic>).map((e) => (e as String?)).toList();
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    return Variables$Query$AllLemmas._(result$data);
  }

  Map<String, dynamic> _$data;

  String get inputValue => (_$data['inputValue'] as String);
  String get searchMode => (_$data['searchMode'] as String);
  List<String?> get srcLangs => (_$data['srcLangs'] as List<String?>);
  List<String?> get targetLangs => (_$data['targetLangs'] as List<String?>);
  List<String?> get wantedDicts => (_$data['wantedDicts'] as List<String?>);
  String? get after => (_$data['after'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$inputValue = inputValue;
    result$data['inputValue'] = l$inputValue;
    final l$searchMode = searchMode;
    result$data['searchMode'] = l$searchMode;
    final l$srcLangs = srcLangs;
    result$data['srcLangs'] = l$srcLangs.map((e) => e).toList();
    final l$targetLangs = targetLangs;
    result$data['targetLangs'] = l$targetLangs.map((e) => e).toList();
    final l$wantedDicts = wantedDicts;
    result$data['wantedDicts'] = l$wantedDicts.map((e) => e).toList();
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    return result$data;
  }

  CopyWith$Variables$Query$AllLemmas<Variables$Query$AllLemmas> get copyWith =>
      CopyWith$Variables$Query$AllLemmas(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$AllLemmas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inputValue = inputValue;
    final lOther$inputValue = other.inputValue;
    if (l$inputValue != lOther$inputValue) {
      return false;
    }
    final l$searchMode = searchMode;
    final lOther$searchMode = other.searchMode;
    if (l$searchMode != lOther$searchMode) {
      return false;
    }
    final l$srcLangs = srcLangs;
    final lOther$srcLangs = other.srcLangs;
    if (l$srcLangs.length != lOther$srcLangs.length) {
      return false;
    }
    for (int i = 0; i < l$srcLangs.length; i++) {
      final l$srcLangs$entry = l$srcLangs[i];
      final lOther$srcLangs$entry = lOther$srcLangs[i];
      if (l$srcLangs$entry != lOther$srcLangs$entry) {
        return false;
      }
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$inputValue = inputValue;
    final l$searchMode = searchMode;
    final l$srcLangs = srcLangs;
    final l$targetLangs = targetLangs;
    final l$wantedDicts = wantedDicts;
    final l$after = after;
    return Object.hashAll([
      l$inputValue,
      l$searchMode,
      Object.hashAll(l$srcLangs.map((v) => v)),
      Object.hashAll(l$targetLangs.map((v) => v)),
      Object.hashAll(l$wantedDicts.map((v) => v)),
      _$data.containsKey('after') ? l$after : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$AllLemmas<TRes> {
  factory CopyWith$Variables$Query$AllLemmas(
    Variables$Query$AllLemmas instance,
    TRes Function(Variables$Query$AllLemmas) then,
  ) = _CopyWithImpl$Variables$Query$AllLemmas;

  factory CopyWith$Variables$Query$AllLemmas.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AllLemmas;

  TRes call({
    String? inputValue,
    String? searchMode,
    List<String?>? srcLangs,
    List<String?>? targetLangs,
    List<String?>? wantedDicts,
    String? after,
  });
}

class _CopyWithImpl$Variables$Query$AllLemmas<TRes>
    implements CopyWith$Variables$Query$AllLemmas<TRes> {
  _CopyWithImpl$Variables$Query$AllLemmas(
    this._instance,
    this._then,
  );

  final Variables$Query$AllLemmas _instance;

  final TRes Function(Variables$Query$AllLemmas) _then;

  static const _undefined = {};

  TRes call({
    Object? inputValue = _undefined,
    Object? searchMode = _undefined,
    Object? srcLangs = _undefined,
    Object? targetLangs = _undefined,
    Object? wantedDicts = _undefined,
    Object? after = _undefined,
  }) =>
      _then(Variables$Query$AllLemmas._({
        ..._instance._$data,
        if (inputValue != _undefined && inputValue != null)
          'inputValue': (inputValue as String),
        if (searchMode != _undefined && searchMode != null)
          'searchMode': (searchMode as String),
        if (srcLangs != _undefined && srcLangs != null)
          'srcLangs': (srcLangs as List<String?>),
        if (targetLangs != _undefined && targetLangs != null)
          'targetLangs': (targetLangs as List<String?>),
        if (wantedDicts != _undefined && wantedDicts != null)
          'wantedDicts': (wantedDicts as List<String?>),
        if (after != _undefined) 'after': (after as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$AllLemmas<TRes>
    implements CopyWith$Variables$Query$AllLemmas<TRes> {
  _CopyWithStubImpl$Variables$Query$AllLemmas(this._res);

  TRes _res;

  call({
    String? inputValue,
    String? searchMode,
    List<String?>? srcLangs,
    List<String?>? targetLangs,
    List<String?>? wantedDicts,
    String? after,
  }) =>
      _res;
}

class Query$AllLemmas {
  Query$AllLemmas({
    this.stemList,
    required this.$__typename,
  });

  factory Query$AllLemmas.fromJson(Map<String, dynamic> json) {
    final l$stemList = json['stemList'];
    final l$$__typename = json['__typename'];
    return Query$AllLemmas(
      stemList: l$stemList == null
          ? null
          : Query$AllLemmas$stemList.fromJson(
              (l$stemList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllLemmas$stemList? stemList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stemList = stemList;
    _resultData['stemList'] = l$stemList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stemList = stemList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stemList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllLemmas) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stemList = stemList;
    final lOther$stemList = other.stemList;
    if (l$stemList != lOther$stemList) {
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

extension UtilityExtension$Query$AllLemmas on Query$AllLemmas {
  CopyWith$Query$AllLemmas<Query$AllLemmas> get copyWith =>
      CopyWith$Query$AllLemmas(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AllLemmas<TRes> {
  factory CopyWith$Query$AllLemmas(
    Query$AllLemmas instance,
    TRes Function(Query$AllLemmas) then,
  ) = _CopyWithImpl$Query$AllLemmas;

  factory CopyWith$Query$AllLemmas.stub(TRes res) =
      _CopyWithStubImpl$Query$AllLemmas;

  TRes call({
    Query$AllLemmas$stemList? stemList,
    String? $__typename,
  });
  CopyWith$Query$AllLemmas$stemList<TRes> get stemList;
}

class _CopyWithImpl$Query$AllLemmas<TRes>
    implements CopyWith$Query$AllLemmas<TRes> {
  _CopyWithImpl$Query$AllLemmas(
    this._instance,
    this._then,
  );

  final Query$AllLemmas _instance;

  final TRes Function(Query$AllLemmas) _then;

  static const _undefined = {};

  TRes call({
    Object? stemList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllLemmas(
        stemList: stemList == _undefined
            ? _instance.stemList
            : (stemList as Query$AllLemmas$stemList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$AllLemmas$stemList<TRes> get stemList {
    final local$stemList = _instance.stemList;
    return local$stemList == null
        ? CopyWith$Query$AllLemmas$stemList.stub(_then(_instance))
        : CopyWith$Query$AllLemmas$stemList(
            local$stemList, (e) => call(stemList: e));
  }
}

class _CopyWithStubImpl$Query$AllLemmas<TRes>
    implements CopyWith$Query$AllLemmas<TRes> {
  _CopyWithStubImpl$Query$AllLemmas(this._res);

  TRes _res;

  call({
    Query$AllLemmas$stemList? stemList,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$AllLemmas$stemList<TRes> get stemList =>
      CopyWith$Query$AllLemmas$stemList.stub(_res);
}

const documentNodeQueryAllLemmas = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AllLemmas'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'inputValue')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'searchMode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'srcLangs')),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'stemList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '100'),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'inputValue')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mode'),
            value: VariableNode(name: NameNode(value: 'searchMode')),
          ),
          ArgumentNode(
            name: NameNode(value: 'srcLangs'),
            value: VariableNode(name: NameNode(value: 'srcLangs')),
          ),
          ArgumentNode(
            name: NameNode(value: 'targetLangs'),
            value: VariableNode(name: NameNode(value: 'targetLangs')),
          ),
          ArgumentNode(
            name: NameNode(value: 'wantedDicts'),
            value: VariableNode(name: NameNode(value: 'wantedDicts')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'searchStem'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'srclang'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'targetlangs'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'dicts'),
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
                                name: NameNode(value: 'dictname'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'dicthits'),
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
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
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
Query$AllLemmas _parserFn$Query$AllLemmas(Map<String, dynamic> data) =>
    Query$AllLemmas.fromJson(data);

class Options$Query$AllLemmas extends graphql.QueryOptions<Query$AllLemmas> {
  Options$Query$AllLemmas({
    String? operationName,
    required Variables$Query$AllLemmas variables,
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
          document: documentNodeQueryAllLemmas,
          parserFn: _parserFn$Query$AllLemmas,
        );
}

class WatchOptions$Query$AllLemmas
    extends graphql.WatchQueryOptions<Query$AllLemmas> {
  WatchOptions$Query$AllLemmas({
    String? operationName,
    required Variables$Query$AllLemmas variables,
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
          document: documentNodeQueryAllLemmas,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AllLemmas,
        );
}

class FetchMoreOptions$Query$AllLemmas extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AllLemmas({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$AllLemmas variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryAllLemmas,
        );
}

extension ClientExtension$Query$AllLemmas on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AllLemmas>> query$AllLemmas(
          Options$Query$AllLemmas options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$AllLemmas> watchQuery$AllLemmas(
          WatchOptions$Query$AllLemmas options) =>
      this.watchQuery(options);
  void writeQuery$AllLemmas({
    required Query$AllLemmas data,
    required Variables$Query$AllLemmas variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryAllLemmas),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AllLemmas? readQuery$AllLemmas({
    required Variables$Query$AllLemmas variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryAllLemmas),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AllLemmas.fromJson(result);
  }
}

class Query$AllLemmas$stemList {
  Query$AllLemmas$stemList({
    this.totalCount,
    required this.edges,
    required this.pageInfo,
    required this.$__typename,
  });

  factory Query$AllLemmas$stemList.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$AllLemmas$stemList(
      totalCount: (l$totalCount as int?),
      edges: (l$edges as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$AllLemmas$stemList$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$AllLemmas$stemList$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? totalCount;

  final List<Query$AllLemmas$stemList$edges?> edges;

  final Query$AllLemmas$stemList$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e?.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllLemmas$stemList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$AllLemmas$stemList
    on Query$AllLemmas$stemList {
  CopyWith$Query$AllLemmas$stemList<Query$AllLemmas$stemList> get copyWith =>
      CopyWith$Query$AllLemmas$stemList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AllLemmas$stemList<TRes> {
  factory CopyWith$Query$AllLemmas$stemList(
    Query$AllLemmas$stemList instance,
    TRes Function(Query$AllLemmas$stemList) then,
  ) = _CopyWithImpl$Query$AllLemmas$stemList;

  factory CopyWith$Query$AllLemmas$stemList.stub(TRes res) =
      _CopyWithStubImpl$Query$AllLemmas$stemList;

  TRes call({
    int? totalCount,
    List<Query$AllLemmas$stemList$edges?>? edges,
    Query$AllLemmas$stemList$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$AllLemmas$stemList$edges?> Function(
              Iterable<
                  CopyWith$Query$AllLemmas$stemList$edges<
                      Query$AllLemmas$stemList$edges>?>)
          _fn);
  CopyWith$Query$AllLemmas$stemList$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$AllLemmas$stemList<TRes>
    implements CopyWith$Query$AllLemmas$stemList<TRes> {
  _CopyWithImpl$Query$AllLemmas$stemList(
    this._instance,
    this._then,
  );

  final Query$AllLemmas$stemList _instance;

  final TRes Function(Query$AllLemmas$stemList) _then;

  static const _undefined = {};

  TRes call({
    Object? totalCount = _undefined,
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllLemmas$stemList(
        totalCount: totalCount == _undefined
            ? _instance.totalCount
            : (totalCount as int?),
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$AllLemmas$stemList$edges?>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$AllLemmas$stemList$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$AllLemmas$stemList$edges?> Function(
                  Iterable<
                      CopyWith$Query$AllLemmas$stemList$edges<
                          Query$AllLemmas$stemList$edges>?>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) => e == null
              ? null
              : CopyWith$Query$AllLemmas$stemList$edges(
                  e,
                  (i) => i,
                ))).toList());
  CopyWith$Query$AllLemmas$stemList$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$AllLemmas$stemList$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$AllLemmas$stemList<TRes>
    implements CopyWith$Query$AllLemmas$stemList<TRes> {
  _CopyWithStubImpl$Query$AllLemmas$stemList(this._res);

  TRes _res;

  call({
    int? totalCount,
    List<Query$AllLemmas$stemList$edges?>? edges,
    Query$AllLemmas$stemList$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
  CopyWith$Query$AllLemmas$stemList$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$AllLemmas$stemList$pageInfo.stub(_res);
}

class Query$AllLemmas$stemList$edges {
  Query$AllLemmas$stemList$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$AllLemmas$stemList$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$AllLemmas$stemList$edges(
      node: l$node == null
          ? null
          : Query$AllLemmas$stemList$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllLemmas$stemList$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllLemmas$stemList$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$AllLemmas$stemList$edges
    on Query$AllLemmas$stemList$edges {
  CopyWith$Query$AllLemmas$stemList$edges<Query$AllLemmas$stemList$edges>
      get copyWith => CopyWith$Query$AllLemmas$stemList$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllLemmas$stemList$edges<TRes> {
  factory CopyWith$Query$AllLemmas$stemList$edges(
    Query$AllLemmas$stemList$edges instance,
    TRes Function(Query$AllLemmas$stemList$edges) then,
  ) = _CopyWithImpl$Query$AllLemmas$stemList$edges;

  factory CopyWith$Query$AllLemmas$stemList$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$AllLemmas$stemList$edges;

  TRes call({
    Query$AllLemmas$stemList$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$AllLemmas$stemList$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$AllLemmas$stemList$edges<TRes>
    implements CopyWith$Query$AllLemmas$stemList$edges<TRes> {
  _CopyWithImpl$Query$AllLemmas$stemList$edges(
    this._instance,
    this._then,
  );

  final Query$AllLemmas$stemList$edges _instance;

  final TRes Function(Query$AllLemmas$stemList$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllLemmas$stemList$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$AllLemmas$stemList$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$AllLemmas$stemList$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$AllLemmas$stemList$edges$node.stub(_then(_instance))
        : CopyWith$Query$AllLemmas$stemList$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$AllLemmas$stemList$edges<TRes>
    implements CopyWith$Query$AllLemmas$stemList$edges<TRes> {
  _CopyWithStubImpl$Query$AllLemmas$stemList$edges(this._res);

  TRes _res;

  call({
    Query$AllLemmas$stemList$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$AllLemmas$stemList$edges$node<TRes> get node =>
      CopyWith$Query$AllLemmas$stemList$edges$node.stub(_res);
}

class Query$AllLemmas$stemList$edges$node {
  Query$AllLemmas$stemList$edges$node({
    required this.stem,
    required this.searchStem,
    required this.srclang,
    this.targetlangs,
    this.dicts,
    required this.$__typename,
  });

  factory Query$AllLemmas$stemList$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$stem = json['stem'];
    final l$searchStem = json['searchStem'];
    final l$srclang = json['srclang'];
    final l$targetlangs = json['targetlangs'];
    final l$dicts = json['dicts'];
    final l$$__typename = json['__typename'];
    return Query$AllLemmas$stemList$edges$node(
      stem: (l$stem as String),
      searchStem: (l$searchStem as String),
      srclang: (l$srclang as String),
      targetlangs: (l$targetlangs as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      dicts: l$dicts == null
          ? null
          : Query$AllLemmas$stemList$edges$node$dicts.fromJson(
              (l$dicts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String stem;

  final String searchStem;

  final String srclang;

  final List<String?>? targetlangs;

  final Query$AllLemmas$stemList$edges$node$dicts? dicts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stem = stem;
    _resultData['stem'] = l$stem;
    final l$searchStem = searchStem;
    _resultData['searchStem'] = l$searchStem;
    final l$srclang = srclang;
    _resultData['srclang'] = l$srclang;
    final l$targetlangs = targetlangs;
    _resultData['targetlangs'] = l$targetlangs?.map((e) => e).toList();
    final l$dicts = dicts;
    _resultData['dicts'] = l$dicts?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stem = stem;
    final l$searchStem = searchStem;
    final l$srclang = srclang;
    final l$targetlangs = targetlangs;
    final l$dicts = dicts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stem,
      l$searchStem,
      l$srclang,
      l$targetlangs == null
          ? null
          : Object.hashAll(l$targetlangs.map((v) => v)),
      l$dicts,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllLemmas$stemList$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stem = stem;
    final lOther$stem = other.stem;
    if (l$stem != lOther$stem) {
      return false;
    }
    final l$searchStem = searchStem;
    final lOther$searchStem = other.searchStem;
    if (l$searchStem != lOther$searchStem) {
      return false;
    }
    final l$srclang = srclang;
    final lOther$srclang = other.srclang;
    if (l$srclang != lOther$srclang) {
      return false;
    }
    final l$targetlangs = targetlangs;
    final lOther$targetlangs = other.targetlangs;
    if (l$targetlangs != null && lOther$targetlangs != null) {
      if (l$targetlangs.length != lOther$targetlangs.length) {
        return false;
      }
      for (int i = 0; i < l$targetlangs.length; i++) {
        final l$targetlangs$entry = l$targetlangs[i];
        final lOther$targetlangs$entry = lOther$targetlangs[i];
        if (l$targetlangs$entry != lOther$targetlangs$entry) {
          return false;
        }
      }
    } else if (l$targetlangs != lOther$targetlangs) {
      return false;
    }
    final l$dicts = dicts;
    final lOther$dicts = other.dicts;
    if (l$dicts != lOther$dicts) {
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

extension UtilityExtension$Query$AllLemmas$stemList$edges$node
    on Query$AllLemmas$stemList$edges$node {
  CopyWith$Query$AllLemmas$stemList$edges$node<
          Query$AllLemmas$stemList$edges$node>
      get copyWith => CopyWith$Query$AllLemmas$stemList$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllLemmas$stemList$edges$node<TRes> {
  factory CopyWith$Query$AllLemmas$stemList$edges$node(
    Query$AllLemmas$stemList$edges$node instance,
    TRes Function(Query$AllLemmas$stemList$edges$node) then,
  ) = _CopyWithImpl$Query$AllLemmas$stemList$edges$node;

  factory CopyWith$Query$AllLemmas$stemList$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node;

  TRes call({
    String? stem,
    String? searchStem,
    String? srclang,
    List<String?>? targetlangs,
    Query$AllLemmas$stemList$edges$node$dicts? dicts,
    String? $__typename,
  });
  CopyWith$Query$AllLemmas$stemList$edges$node$dicts<TRes> get dicts;
}

class _CopyWithImpl$Query$AllLemmas$stemList$edges$node<TRes>
    implements CopyWith$Query$AllLemmas$stemList$edges$node<TRes> {
  _CopyWithImpl$Query$AllLemmas$stemList$edges$node(
    this._instance,
    this._then,
  );

  final Query$AllLemmas$stemList$edges$node _instance;

  final TRes Function(Query$AllLemmas$stemList$edges$node) _then;

  static const _undefined = {};

  TRes call({
    Object? stem = _undefined,
    Object? searchStem = _undefined,
    Object? srclang = _undefined,
    Object? targetlangs = _undefined,
    Object? dicts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllLemmas$stemList$edges$node(
        stem: stem == _undefined || stem == null
            ? _instance.stem
            : (stem as String),
        searchStem: searchStem == _undefined || searchStem == null
            ? _instance.searchStem
            : (searchStem as String),
        srclang: srclang == _undefined || srclang == null
            ? _instance.srclang
            : (srclang as String),
        targetlangs: targetlangs == _undefined
            ? _instance.targetlangs
            : (targetlangs as List<String?>?),
        dicts: dicts == _undefined
            ? _instance.dicts
            : (dicts as Query$AllLemmas$stemList$edges$node$dicts?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$AllLemmas$stemList$edges$node$dicts<TRes> get dicts {
    final local$dicts = _instance.dicts;
    return local$dicts == null
        ? CopyWith$Query$AllLemmas$stemList$edges$node$dicts.stub(
            _then(_instance))
        : CopyWith$Query$AllLemmas$stemList$edges$node$dicts(
            local$dicts, (e) => call(dicts: e));
  }
}

class _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node<TRes>
    implements CopyWith$Query$AllLemmas$stemList$edges$node<TRes> {
  _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node(this._res);

  TRes _res;

  call({
    String? stem,
    String? searchStem,
    String? srclang,
    List<String?>? targetlangs,
    Query$AllLemmas$stemList$edges$node$dicts? dicts,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$AllLemmas$stemList$edges$node$dicts<TRes> get dicts =>
      CopyWith$Query$AllLemmas$stemList$edges$node$dicts.stub(_res);
}

class Query$AllLemmas$stemList$edges$node$dicts {
  Query$AllLemmas$stemList$edges$node$dicts({
    required this.edges,
    required this.$__typename,
  });

  factory Query$AllLemmas$stemList$edges$node$dicts.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$AllLemmas$stemList$edges$node$dicts(
      edges: (l$edges as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$AllLemmas$stemList$edges$node$dicts$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$AllLemmas$stemList$edges$node$dicts$edges?> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllLemmas$stemList$edges$node$dicts) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
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

extension UtilityExtension$Query$AllLemmas$stemList$edges$node$dicts
    on Query$AllLemmas$stemList$edges$node$dicts {
  CopyWith$Query$AllLemmas$stemList$edges$node$dicts<
          Query$AllLemmas$stemList$edges$node$dicts>
      get copyWith => CopyWith$Query$AllLemmas$stemList$edges$node$dicts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllLemmas$stemList$edges$node$dicts<TRes> {
  factory CopyWith$Query$AllLemmas$stemList$edges$node$dicts(
    Query$AllLemmas$stemList$edges$node$dicts instance,
    TRes Function(Query$AllLemmas$stemList$edges$node$dicts) then,
  ) = _CopyWithImpl$Query$AllLemmas$stemList$edges$node$dicts;

  factory CopyWith$Query$AllLemmas$stemList$edges$node$dicts.stub(TRes res) =
      _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node$dicts;

  TRes call({
    List<Query$AllLemmas$stemList$edges$node$dicts$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$AllLemmas$stemList$edges$node$dicts$edges?> Function(
              Iterable<
                  CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges<
                      Query$AllLemmas$stemList$edges$node$dicts$edges>?>)
          _fn);
}

class _CopyWithImpl$Query$AllLemmas$stemList$edges$node$dicts<TRes>
    implements CopyWith$Query$AllLemmas$stemList$edges$node$dicts<TRes> {
  _CopyWithImpl$Query$AllLemmas$stemList$edges$node$dicts(
    this._instance,
    this._then,
  );

  final Query$AllLemmas$stemList$edges$node$dicts _instance;

  final TRes Function(Query$AllLemmas$stemList$edges$node$dicts) _then;

  static const _undefined = {};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllLemmas$stemList$edges$node$dicts(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$AllLemmas$stemList$edges$node$dicts$edges?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes edges(
          Iterable<Query$AllLemmas$stemList$edges$node$dicts$edges?> Function(
                  Iterable<
                      CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges<
                          Query$AllLemmas$stemList$edges$node$dicts$edges>?>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) => e == null
              ? null
              : CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges(
                  e,
                  (i) => i,
                ))).toList());
}

class _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node$dicts<TRes>
    implements CopyWith$Query$AllLemmas$stemList$edges$node$dicts<TRes> {
  _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node$dicts(this._res);

  TRes _res;

  call({
    List<Query$AllLemmas$stemList$edges$node$dicts$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  edges(_fn) => _res;
}

class Query$AllLemmas$stemList$edges$node$dicts$edges {
  Query$AllLemmas$stemList$edges$node$dicts$edges({
    this.node,
    required this.$__typename,
  });

  factory Query$AllLemmas$stemList$edges$node$dicts$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$AllLemmas$stemList$edges$node$dicts$edges(
      node: l$node == null
          ? null
          : Query$AllLemmas$stemList$edges$node$dicts$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AllLemmas$stemList$edges$node$dicts$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllLemmas$stemList$edges$node$dicts$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$AllLemmas$stemList$edges$node$dicts$edges
    on Query$AllLemmas$stemList$edges$node$dicts$edges {
  CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges<
          Query$AllLemmas$stemList$edges$node$dicts$edges>
      get copyWith => CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges<TRes> {
  factory CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges(
    Query$AllLemmas$stemList$edges$node$dicts$edges instance,
    TRes Function(Query$AllLemmas$stemList$edges$node$dicts$edges) then,
  ) = _CopyWithImpl$Query$AllLemmas$stemList$edges$node$dicts$edges;

  factory CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node$dicts$edges;

  TRes call({
    Query$AllLemmas$stemList$edges$node$dicts$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$AllLemmas$stemList$edges$node$dicts$edges<TRes>
    implements CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges<TRes> {
  _CopyWithImpl$Query$AllLemmas$stemList$edges$node$dicts$edges(
    this._instance,
    this._then,
  );

  final Query$AllLemmas$stemList$edges$node$dicts$edges _instance;

  final TRes Function(Query$AllLemmas$stemList$edges$node$dicts$edges) _then;

  static const _undefined = {};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllLemmas$stemList$edges$node$dicts$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$AllLemmas$stemList$edges$node$dicts$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node$dicts$edges<TRes>
    implements CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges<TRes> {
  _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node$dicts$edges(this._res);

  TRes _res;

  call({
    Query$AllLemmas$stemList$edges$node$dicts$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node<TRes>
      get node =>
          CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node.stub(
              _res);
}

class Query$AllLemmas$stemList$edges$node$dicts$edges$node {
  Query$AllLemmas$stemList$edges$node$dicts$edges$node({
    required this.dictname,
    required this.dicthits,
    required this.$__typename,
  });

  factory Query$AllLemmas$stemList$edges$node$dicts$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$dictname = json['dictname'];
    final l$dicthits = json['dicthits'];
    final l$$__typename = json['__typename'];
    return Query$AllLemmas$stemList$edges$node$dicts$edges$node(
      dictname: (l$dictname as String),
      dicthits: (l$dicthits as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictname;

  final int dicthits;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictname = dictname;
    _resultData['dictname'] = l$dictname;
    final l$dicthits = dicthits;
    _resultData['dicthits'] = l$dicthits;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictname = dictname;
    final l$dicthits = dicthits;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dictname,
      l$dicthits,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllLemmas$stemList$edges$node$dicts$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictname = dictname;
    final lOther$dictname = other.dictname;
    if (l$dictname != lOther$dictname) {
      return false;
    }
    final l$dicthits = dicthits;
    final lOther$dicthits = other.dicthits;
    if (l$dicthits != lOther$dicthits) {
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

extension UtilityExtension$Query$AllLemmas$stemList$edges$node$dicts$edges$node
    on Query$AllLemmas$stemList$edges$node$dicts$edges$node {
  CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node<
          Query$AllLemmas$stemList$edges$node$dicts$edges$node>
      get copyWith =>
          CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node<
    TRes> {
  factory CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node(
    Query$AllLemmas$stemList$edges$node$dicts$edges$node instance,
    TRes Function(Query$AllLemmas$stemList$edges$node$dicts$edges$node) then,
  ) = _CopyWithImpl$Query$AllLemmas$stemList$edges$node$dicts$edges$node;

  factory CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node$dicts$edges$node;

  TRes call({
    String? dictname,
    int? dicthits,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllLemmas$stemList$edges$node$dicts$edges$node<TRes>
    implements
        CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node<TRes> {
  _CopyWithImpl$Query$AllLemmas$stemList$edges$node$dicts$edges$node(
    this._instance,
    this._then,
  );

  final Query$AllLemmas$stemList$edges$node$dicts$edges$node _instance;

  final TRes Function(Query$AllLemmas$stemList$edges$node$dicts$edges$node)
      _then;

  static const _undefined = {};

  TRes call({
    Object? dictname = _undefined,
    Object? dicthits = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllLemmas$stemList$edges$node$dicts$edges$node(
        dictname: dictname == _undefined || dictname == null
            ? _instance.dictname
            : (dictname as String),
        dicthits: dicthits == _undefined || dicthits == null
            ? _instance.dicthits
            : (dicthits as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node$dicts$edges$node<
        TRes>
    implements
        CopyWith$Query$AllLemmas$stemList$edges$node$dicts$edges$node<TRes> {
  _CopyWithStubImpl$Query$AllLemmas$stemList$edges$node$dicts$edges$node(
      this._res);

  TRes _res;

  call({
    String? dictname,
    int? dicthits,
    String? $__typename,
  }) =>
      _res;
}

class Query$AllLemmas$stemList$pageInfo {
  Query$AllLemmas$stemList$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    required this.$__typename,
  });

  factory Query$AllLemmas$stemList$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$AllLemmas$stemList$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AllLemmas$stemList$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$AllLemmas$stemList$pageInfo
    on Query$AllLemmas$stemList$pageInfo {
  CopyWith$Query$AllLemmas$stemList$pageInfo<Query$AllLemmas$stemList$pageInfo>
      get copyWith => CopyWith$Query$AllLemmas$stemList$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$AllLemmas$stemList$pageInfo<TRes> {
  factory CopyWith$Query$AllLemmas$stemList$pageInfo(
    Query$AllLemmas$stemList$pageInfo instance,
    TRes Function(Query$AllLemmas$stemList$pageInfo) then,
  ) = _CopyWithImpl$Query$AllLemmas$stemList$pageInfo;

  factory CopyWith$Query$AllLemmas$stemList$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$AllLemmas$stemList$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AllLemmas$stemList$pageInfo<TRes>
    implements CopyWith$Query$AllLemmas$stemList$pageInfo<TRes> {
  _CopyWithImpl$Query$AllLemmas$stemList$pageInfo(
    this._instance,
    this._then,
  );

  final Query$AllLemmas$stemList$pageInfo _instance;

  final TRes Function(Query$AllLemmas$stemList$pageInfo) _then;

  static const _undefined = {};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$AllLemmas$stemList$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$AllLemmas$stemList$pageInfo<TRes>
    implements CopyWith$Query$AllLemmas$stemList$pageInfo<TRes> {
  _CopyWithStubImpl$Query$AllLemmas$stemList$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
