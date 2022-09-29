// Package imports:
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$DictArticles {
  factory Variables$Query$DictArticles({
    required String lemma,
    required List<String?> srcLangs,
    required List<String?> targetLangs,
    required List<String?> wantedDicts,
  }) =>
      Variables$Query$DictArticles._({
        r'lemma': lemma,
        r'srcLangs': srcLangs,
        r'targetLangs': targetLangs,
        r'wantedDicts': wantedDicts,
      });

  Variables$Query$DictArticles._(this._$data);

  factory Variables$Query$DictArticles.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lemma = data['lemma'];
    result$data['lemma'] = (l$lemma as String);
    final l$srcLangs = data['srcLangs'];
    result$data['srcLangs'] =
        (l$srcLangs as List<dynamic>).map((e) => (e as String?)).toList();
    final l$targetLangs = data['targetLangs'];
    result$data['targetLangs'] =
        (l$targetLangs as List<dynamic>).map((e) => (e as String?)).toList();
    final l$wantedDicts = data['wantedDicts'];
    result$data['wantedDicts'] =
        (l$wantedDicts as List<dynamic>).map((e) => (e as String?)).toList();
    return Variables$Query$DictArticles._(result$data);
  }

  Map<String, dynamic> _$data;

  String get lemma => (_$data['lemma'] as String);
  List<String?> get srcLangs => (_$data['srcLangs'] as List<String?>);
  List<String?> get targetLangs => (_$data['targetLangs'] as List<String?>);
  List<String?> get wantedDicts => (_$data['wantedDicts'] as List<String?>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lemma = lemma;
    result$data['lemma'] = l$lemma;
    final l$srcLangs = srcLangs;
    result$data['srcLangs'] = l$srcLangs.map((e) => e).toList();
    final l$targetLangs = targetLangs;
    result$data['targetLangs'] = l$targetLangs.map((e) => e).toList();
    final l$wantedDicts = wantedDicts;
    result$data['wantedDicts'] = l$wantedDicts.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Query$DictArticles<Variables$Query$DictArticles>
      get copyWith => CopyWith$Variables$Query$DictArticles(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$DictArticles) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lemma = lemma;
    final lOther$lemma = other.lemma;
    if (l$lemma != lOther$lemma) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$lemma = lemma;
    final l$srcLangs = srcLangs;
    final l$targetLangs = targetLangs;
    final l$wantedDicts = wantedDicts;
    return Object.hashAll([
      l$lemma,
      Object.hashAll(l$srcLangs.map((v) => v)),
      Object.hashAll(l$targetLangs.map((v) => v)),
      Object.hashAll(l$wantedDicts.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Query$DictArticles<TRes> {
  factory CopyWith$Variables$Query$DictArticles(
    Variables$Query$DictArticles instance,
    TRes Function(Variables$Query$DictArticles) then,
  ) = _CopyWithImpl$Variables$Query$DictArticles;

  factory CopyWith$Variables$Query$DictArticles.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DictArticles;

  TRes call({
    String? lemma,
    List<String?>? srcLangs,
    List<String?>? targetLangs,
    List<String?>? wantedDicts,
  });
}

class _CopyWithImpl$Variables$Query$DictArticles<TRes>
    implements CopyWith$Variables$Query$DictArticles<TRes> {
  _CopyWithImpl$Variables$Query$DictArticles(
    this._instance,
    this._then,
  );

  final Variables$Query$DictArticles _instance;

  final TRes Function(Variables$Query$DictArticles) _then;

  static const _undefined = {};

  TRes call({
    Object? lemma = _undefined,
    Object? srcLangs = _undefined,
    Object? targetLangs = _undefined,
    Object? wantedDicts = _undefined,
  }) =>
      _then(Variables$Query$DictArticles._({
        ..._instance._$data,
        if (lemma != _undefined && lemma != null) 'lemma': (lemma as String),
        if (srcLangs != _undefined && srcLangs != null)
          'srcLangs': (srcLangs as List<String?>),
        if (targetLangs != _undefined && targetLangs != null)
          'targetLangs': (targetLangs as List<String?>),
        if (wantedDicts != _undefined && wantedDicts != null)
          'wantedDicts': (wantedDicts as List<String?>),
      }));
}

class _CopyWithStubImpl$Variables$Query$DictArticles<TRes>
    implements CopyWith$Variables$Query$DictArticles<TRes> {
  _CopyWithStubImpl$Variables$Query$DictArticles(this._res);

  TRes _res;

  call({
    String? lemma,
    List<String?>? srcLangs,
    List<String?>? targetLangs,
    List<String?>? wantedDicts,
  }) =>
      _res;
}

class Query$DictArticles {
  Query$DictArticles({
    this.dictEntryList,
    required this.$__typename,
  });

  factory Query$DictArticles.fromJson(Map<String, dynamic> json) {
    final l$dictEntryList = json['dictEntryList'];
    final l$$__typename = json['__typename'];
    return Query$DictArticles(
      dictEntryList: (l$dictEntryList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$DictArticles$dictEntryList.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$DictArticles$dictEntryList?>? dictEntryList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictEntryList = dictEntryList;
    _resultData['dictEntryList'] =
        l$dictEntryList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictEntryList = dictEntryList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dictEntryList == null
          ? null
          : Object.hashAll(l$dictEntryList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DictArticles) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictEntryList = dictEntryList;
    final lOther$dictEntryList = other.dictEntryList;
    if (l$dictEntryList != null && lOther$dictEntryList != null) {
      if (l$dictEntryList.length != lOther$dictEntryList.length) {
        return false;
      }
      for (int i = 0; i < l$dictEntryList.length; i++) {
        final l$dictEntryList$entry = l$dictEntryList[i];
        final lOther$dictEntryList$entry = lOther$dictEntryList[i];
        if (l$dictEntryList$entry != lOther$dictEntryList$entry) {
          return false;
        }
      }
    } else if (l$dictEntryList != lOther$dictEntryList) {
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

extension UtilityExtension$Query$DictArticles on Query$DictArticles {
  CopyWith$Query$DictArticles<Query$DictArticles> get copyWith =>
      CopyWith$Query$DictArticles(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DictArticles<TRes> {
  factory CopyWith$Query$DictArticles(
    Query$DictArticles instance,
    TRes Function(Query$DictArticles) then,
  ) = _CopyWithImpl$Query$DictArticles;

  factory CopyWith$Query$DictArticles.stub(TRes res) =
      _CopyWithStubImpl$Query$DictArticles;

  TRes call({
    List<Query$DictArticles$dictEntryList?>? dictEntryList,
    String? $__typename,
  });
  TRes dictEntryList(
      Iterable<Query$DictArticles$dictEntryList?>? Function(
              Iterable<
                  CopyWith$Query$DictArticles$dictEntryList<
                      Query$DictArticles$dictEntryList>?>?)
          _fn);
}

class _CopyWithImpl$Query$DictArticles<TRes>
    implements CopyWith$Query$DictArticles<TRes> {
  _CopyWithImpl$Query$DictArticles(
    this._instance,
    this._then,
  );

  final Query$DictArticles _instance;

  final TRes Function(Query$DictArticles) _then;

  static const _undefined = {};

  TRes call({
    Object? dictEntryList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DictArticles(
        dictEntryList: dictEntryList == _undefined
            ? _instance.dictEntryList
            : (dictEntryList as List<Query$DictArticles$dictEntryList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes dictEntryList(
          Iterable<Query$DictArticles$dictEntryList?>? Function(
                  Iterable<
                      CopyWith$Query$DictArticles$dictEntryList<
                          Query$DictArticles$dictEntryList>?>?)
              _fn) =>
      call(
          dictEntryList: _fn(_instance.dictEntryList?.map((e) => e == null
              ? null
              : CopyWith$Query$DictArticles$dictEntryList(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$DictArticles<TRes>
    implements CopyWith$Query$DictArticles<TRes> {
  _CopyWithStubImpl$Query$DictArticles(this._res);

  TRes _res;

  call({
    List<Query$DictArticles$dictEntryList?>? dictEntryList,
    String? $__typename,
  }) =>
      _res;
  dictEntryList(_fn) => _res;
}

const documentNodeQueryDictArticles = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DictArticles'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lemma')),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'dictEntryList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'exact'),
            value: VariableNode(name: NameNode(value: 'lemma')),
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
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'dictName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'srcLang'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'targetLang'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lookupLemmas'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'lemma'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'presentationLemma'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'language'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'pos'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'dialect'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'country'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'spuriousAttributes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'value'),
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
                    name: NameNode(value: 'lemma'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'presentationLemma'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'language'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'pos'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'dialect'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'country'),
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
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'attributes'),
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
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'translation'),
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
]);
Query$DictArticles _parserFn$Query$DictArticles(Map<String, dynamic> data) =>
    Query$DictArticles.fromJson(data);

class Options$Query$DictArticles
    extends graphql.QueryOptions<Query$DictArticles> {
  Options$Query$DictArticles({
    String? operationName,
    required Variables$Query$DictArticles variables,
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
          document: documentNodeQueryDictArticles,
          parserFn: _parserFn$Query$DictArticles,
        );
}

class WatchOptions$Query$DictArticles
    extends graphql.WatchQueryOptions<Query$DictArticles> {
  WatchOptions$Query$DictArticles({
    String? operationName,
    required Variables$Query$DictArticles variables,
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
          document: documentNodeQueryDictArticles,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DictArticles,
        );
}

class FetchMoreOptions$Query$DictArticles extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DictArticles({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DictArticles variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryDictArticles,
        );
}

extension ClientExtension$Query$DictArticles on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DictArticles>> query$DictArticles(
          Options$Query$DictArticles options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$DictArticles> watchQuery$DictArticles(
          WatchOptions$Query$DictArticles options) =>
      this.watchQuery(options);
  void writeQuery$DictArticles({
    required Query$DictArticles data,
    required Variables$Query$DictArticles variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryDictArticles),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DictArticles? readQuery$DictArticles({
    required Variables$Query$DictArticles variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryDictArticles),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$DictArticles.fromJson(result);
  }
}

class Query$DictArticles$dictEntryList {
  Query$DictArticles$dictEntryList({
    required this.dictName,
    required this.srcLang,
    required this.targetLang,
    required this.lookupLemmas,
    required this.translationGroups,
    required this.$__typename,
  });

  factory Query$DictArticles$dictEntryList.fromJson(Map<String, dynamic> json) {
    final l$dictName = json['dictName'];
    final l$srcLang = json['srcLang'];
    final l$targetLang = json['targetLang'];
    final l$lookupLemmas = json['lookupLemmas'];
    final l$translationGroups = json['translationGroups'];
    final l$$__typename = json['__typename'];
    return Query$DictArticles$dictEntryList(
      dictName: (l$dictName as String),
      srcLang: (l$srcLang as String),
      targetLang: (l$targetLang as String),
      lookupLemmas: (l$lookupLemmas as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$DictArticles$dictEntryList$lookupLemmas.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      translationGroups: (l$translationGroups as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$DictArticles$dictEntryList$translationGroups.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictName;

  final String srcLang;

  final String targetLang;

  final List<Query$DictArticles$dictEntryList$lookupLemmas?> lookupLemmas;

  final List<Query$DictArticles$dictEntryList$translationGroups?>
      translationGroups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictName = dictName;
    _resultData['dictName'] = l$dictName;
    final l$srcLang = srcLang;
    _resultData['srcLang'] = l$srcLang;
    final l$targetLang = targetLang;
    _resultData['targetLang'] = l$targetLang;
    final l$lookupLemmas = lookupLemmas;
    _resultData['lookupLemmas'] =
        l$lookupLemmas.map((e) => e?.toJson()).toList();
    final l$translationGroups = translationGroups;
    _resultData['translationGroups'] =
        l$translationGroups.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictName = dictName;
    final l$srcLang = srcLang;
    final l$targetLang = targetLang;
    final l$lookupLemmas = lookupLemmas;
    final l$translationGroups = translationGroups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$dictName,
      l$srcLang,
      l$targetLang,
      Object.hashAll(l$lookupLemmas.map((v) => v)),
      Object.hashAll(l$translationGroups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DictArticles$dictEntryList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictName = dictName;
    final lOther$dictName = other.dictName;
    if (l$dictName != lOther$dictName) {
      return false;
    }
    final l$srcLang = srcLang;
    final lOther$srcLang = other.srcLang;
    if (l$srcLang != lOther$srcLang) {
      return false;
    }
    final l$targetLang = targetLang;
    final lOther$targetLang = other.targetLang;
    if (l$targetLang != lOther$targetLang) {
      return false;
    }
    final l$lookupLemmas = lookupLemmas;
    final lOther$lookupLemmas = other.lookupLemmas;
    if (l$lookupLemmas.length != lOther$lookupLemmas.length) {
      return false;
    }
    for (int i = 0; i < l$lookupLemmas.length; i++) {
      final l$lookupLemmas$entry = l$lookupLemmas[i];
      final lOther$lookupLemmas$entry = lOther$lookupLemmas[i];
      if (l$lookupLemmas$entry != lOther$lookupLemmas$entry) {
        return false;
      }
    }
    final l$translationGroups = translationGroups;
    final lOther$translationGroups = other.translationGroups;
    if (l$translationGroups.length != lOther$translationGroups.length) {
      return false;
    }
    for (int i = 0; i < l$translationGroups.length; i++) {
      final l$translationGroups$entry = l$translationGroups[i];
      final lOther$translationGroups$entry = lOther$translationGroups[i];
      if (l$translationGroups$entry != lOther$translationGroups$entry) {
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

extension UtilityExtension$Query$DictArticles$dictEntryList
    on Query$DictArticles$dictEntryList {
  CopyWith$Query$DictArticles$dictEntryList<Query$DictArticles$dictEntryList>
      get copyWith => CopyWith$Query$DictArticles$dictEntryList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DictArticles$dictEntryList<TRes> {
  factory CopyWith$Query$DictArticles$dictEntryList(
    Query$DictArticles$dictEntryList instance,
    TRes Function(Query$DictArticles$dictEntryList) then,
  ) = _CopyWithImpl$Query$DictArticles$dictEntryList;

  factory CopyWith$Query$DictArticles$dictEntryList.stub(TRes res) =
      _CopyWithStubImpl$Query$DictArticles$dictEntryList;

  TRes call({
    String? dictName,
    String? srcLang,
    String? targetLang,
    List<Query$DictArticles$dictEntryList$lookupLemmas?>? lookupLemmas,
    List<Query$DictArticles$dictEntryList$translationGroups?>?
        translationGroups,
    String? $__typename,
  });
  TRes lookupLemmas(
      Iterable<Query$DictArticles$dictEntryList$lookupLemmas?> Function(
              Iterable<
                  CopyWith$Query$DictArticles$dictEntryList$lookupLemmas<
                      Query$DictArticles$dictEntryList$lookupLemmas>?>)
          _fn);
  TRes translationGroups(
      Iterable<Query$DictArticles$dictEntryList$translationGroups?> Function(
              Iterable<
                  CopyWith$Query$DictArticles$dictEntryList$translationGroups<
                      Query$DictArticles$dictEntryList$translationGroups>?>)
          _fn);
}

class _CopyWithImpl$Query$DictArticles$dictEntryList<TRes>
    implements CopyWith$Query$DictArticles$dictEntryList<TRes> {
  _CopyWithImpl$Query$DictArticles$dictEntryList(
    this._instance,
    this._then,
  );

  final Query$DictArticles$dictEntryList _instance;

  final TRes Function(Query$DictArticles$dictEntryList) _then;

  static const _undefined = {};

  TRes call({
    Object? dictName = _undefined,
    Object? srcLang = _undefined,
    Object? targetLang = _undefined,
    Object? lookupLemmas = _undefined,
    Object? translationGroups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DictArticles$dictEntryList(
        dictName: dictName == _undefined || dictName == null
            ? _instance.dictName
            : (dictName as String),
        srcLang: srcLang == _undefined || srcLang == null
            ? _instance.srcLang
            : (srcLang as String),
        targetLang: targetLang == _undefined || targetLang == null
            ? _instance.targetLang
            : (targetLang as String),
        lookupLemmas: lookupLemmas == _undefined || lookupLemmas == null
            ? _instance.lookupLemmas
            : (lookupLemmas
                as List<Query$DictArticles$dictEntryList$lookupLemmas?>),
        translationGroups: translationGroups == _undefined ||
                translationGroups == null
            ? _instance.translationGroups
            : (translationGroups
                as List<Query$DictArticles$dictEntryList$translationGroups?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes lookupLemmas(
          Iterable<Query$DictArticles$dictEntryList$lookupLemmas?> Function(
                  Iterable<
                      CopyWith$Query$DictArticles$dictEntryList$lookupLemmas<
                          Query$DictArticles$dictEntryList$lookupLemmas>?>)
              _fn) =>
      call(
          lookupLemmas: _fn(_instance.lookupLemmas.map((e) => e == null
              ? null
              : CopyWith$Query$DictArticles$dictEntryList$lookupLemmas(
                  e,
                  (i) => i,
                ))).toList());
  TRes translationGroups(
          Iterable<Query$DictArticles$dictEntryList$translationGroups?> Function(
                  Iterable<
                      CopyWith$Query$DictArticles$dictEntryList$translationGroups<
                          Query$DictArticles$dictEntryList$translationGroups>?>)
              _fn) =>
      call(
          translationGroups:
              _fn(_instance.translationGroups.map((e) => e == null
                  ? null
                  : CopyWith$Query$DictArticles$dictEntryList$translationGroups(
                      e,
                      (i) => i,
                    ))).toList());
}

class _CopyWithStubImpl$Query$DictArticles$dictEntryList<TRes>
    implements CopyWith$Query$DictArticles$dictEntryList<TRes> {
  _CopyWithStubImpl$Query$DictArticles$dictEntryList(this._res);

  TRes _res;

  call({
    String? dictName,
    String? srcLang,
    String? targetLang,
    List<Query$DictArticles$dictEntryList$lookupLemmas?>? lookupLemmas,
    List<Query$DictArticles$dictEntryList$translationGroups?>?
        translationGroups,
    String? $__typename,
  }) =>
      _res;
  lookupLemmas(_fn) => _res;
  translationGroups(_fn) => _res;
}

class Query$DictArticles$dictEntryList$lookupLemmas {
  Query$DictArticles$dictEntryList$lookupLemmas({
    required this.lemma,
    required this.presentationLemma,
    required this.language,
    this.pos,
    this.dialect,
    this.country,
    this.spuriousAttributes,
    required this.$__typename,
  });

  factory Query$DictArticles$dictEntryList$lookupLemmas.fromJson(
      Map<String, dynamic> json) {
    final l$lemma = json['lemma'];
    final l$presentationLemma = json['presentationLemma'];
    final l$language = json['language'];
    final l$pos = json['pos'];
    final l$dialect = json['dialect'];
    final l$country = json['country'];
    final l$spuriousAttributes = json['spuriousAttributes'];
    final l$$__typename = json['__typename'];
    return Query$DictArticles$dictEntryList$lookupLemmas(
      lemma: (l$lemma as String),
      presentationLemma: (l$presentationLemma as String),
      language: (l$language as String),
      pos: (l$pos as String?),
      dialect: (l$dialect as String?),
      country: (l$country as String?),
      spuriousAttributes: (l$spuriousAttributes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String lemma;

  final String presentationLemma;

  final String language;

  final String? pos;

  final String? dialect;

  final String? country;

  final List<Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes?>?
      spuriousAttributes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lemma = lemma;
    _resultData['lemma'] = l$lemma;
    final l$presentationLemma = presentationLemma;
    _resultData['presentationLemma'] = l$presentationLemma;
    final l$language = language;
    _resultData['language'] = l$language;
    final l$pos = pos;
    _resultData['pos'] = l$pos;
    final l$dialect = dialect;
    _resultData['dialect'] = l$dialect;
    final l$country = country;
    _resultData['country'] = l$country;
    final l$spuriousAttributes = spuriousAttributes;
    _resultData['spuriousAttributes'] =
        l$spuriousAttributes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lemma = lemma;
    final l$presentationLemma = presentationLemma;
    final l$language = language;
    final l$pos = pos;
    final l$dialect = dialect;
    final l$country = country;
    final l$spuriousAttributes = spuriousAttributes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lemma,
      l$presentationLemma,
      l$language,
      l$pos,
      l$dialect,
      l$country,
      l$spuriousAttributes == null
          ? null
          : Object.hashAll(l$spuriousAttributes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DictArticles$dictEntryList$lookupLemmas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lemma = lemma;
    final lOther$lemma = other.lemma;
    if (l$lemma != lOther$lemma) {
      return false;
    }
    final l$presentationLemma = presentationLemma;
    final lOther$presentationLemma = other.presentationLemma;
    if (l$presentationLemma != lOther$presentationLemma) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
      return false;
    }
    final l$pos = pos;
    final lOther$pos = other.pos;
    if (l$pos != lOther$pos) {
      return false;
    }
    final l$dialect = dialect;
    final lOther$dialect = other.dialect;
    if (l$dialect != lOther$dialect) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$spuriousAttributes = spuriousAttributes;
    final lOther$spuriousAttributes = other.spuriousAttributes;
    if (l$spuriousAttributes != null && lOther$spuriousAttributes != null) {
      if (l$spuriousAttributes.length != lOther$spuriousAttributes.length) {
        return false;
      }
      for (int i = 0; i < l$spuriousAttributes.length; i++) {
        final l$spuriousAttributes$entry = l$spuriousAttributes[i];
        final lOther$spuriousAttributes$entry = lOther$spuriousAttributes[i];
        if (l$spuriousAttributes$entry != lOther$spuriousAttributes$entry) {
          return false;
        }
      }
    } else if (l$spuriousAttributes != lOther$spuriousAttributes) {
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

extension UtilityExtension$Query$DictArticles$dictEntryList$lookupLemmas
    on Query$DictArticles$dictEntryList$lookupLemmas {
  CopyWith$Query$DictArticles$dictEntryList$lookupLemmas<
          Query$DictArticles$dictEntryList$lookupLemmas>
      get copyWith => CopyWith$Query$DictArticles$dictEntryList$lookupLemmas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DictArticles$dictEntryList$lookupLemmas<TRes> {
  factory CopyWith$Query$DictArticles$dictEntryList$lookupLemmas(
    Query$DictArticles$dictEntryList$lookupLemmas instance,
    TRes Function(Query$DictArticles$dictEntryList$lookupLemmas) then,
  ) = _CopyWithImpl$Query$DictArticles$dictEntryList$lookupLemmas;

  factory CopyWith$Query$DictArticles$dictEntryList$lookupLemmas.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DictArticles$dictEntryList$lookupLemmas;

  TRes call({
    String? lemma,
    String? presentationLemma,
    String? language,
    String? pos,
    String? dialect,
    String? country,
    List<Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes?>?
        spuriousAttributes,
    String? $__typename,
  });
  TRes spuriousAttributes(
      Iterable<Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes?>? Function(
              Iterable<
                  CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes<
                      Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes>?>?)
          _fn);
}

class _CopyWithImpl$Query$DictArticles$dictEntryList$lookupLemmas<TRes>
    implements CopyWith$Query$DictArticles$dictEntryList$lookupLemmas<TRes> {
  _CopyWithImpl$Query$DictArticles$dictEntryList$lookupLemmas(
    this._instance,
    this._then,
  );

  final Query$DictArticles$dictEntryList$lookupLemmas _instance;

  final TRes Function(Query$DictArticles$dictEntryList$lookupLemmas) _then;

  static const _undefined = {};

  TRes call({
    Object? lemma = _undefined,
    Object? presentationLemma = _undefined,
    Object? language = _undefined,
    Object? pos = _undefined,
    Object? dialect = _undefined,
    Object? country = _undefined,
    Object? spuriousAttributes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DictArticles$dictEntryList$lookupLemmas(
        lemma: lemma == _undefined || lemma == null
            ? _instance.lemma
            : (lemma as String),
        presentationLemma:
            presentationLemma == _undefined || presentationLemma == null
                ? _instance.presentationLemma
                : (presentationLemma as String),
        language: language == _undefined || language == null
            ? _instance.language
            : (language as String),
        pos: pos == _undefined ? _instance.pos : (pos as String?),
        dialect:
            dialect == _undefined ? _instance.dialect : (dialect as String?),
        country:
            country == _undefined ? _instance.country : (country as String?),
        spuriousAttributes: spuriousAttributes == _undefined
            ? _instance.spuriousAttributes
            : (spuriousAttributes as List<
                Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes spuriousAttributes(
          Iterable<Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes?>? Function(
                  Iterable<
                      CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes<
                          Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes>?>?)
              _fn) =>
      call(
          spuriousAttributes: _fn(_instance.spuriousAttributes?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$DictArticles$dictEntryList$lookupLemmas<TRes>
    implements CopyWith$Query$DictArticles$dictEntryList$lookupLemmas<TRes> {
  _CopyWithStubImpl$Query$DictArticles$dictEntryList$lookupLemmas(this._res);

  TRes _res;

  call({
    String? lemma,
    String? presentationLemma,
    String? language,
    String? pos,
    String? dialect,
    String? country,
    List<Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes?>?
        spuriousAttributes,
    String? $__typename,
  }) =>
      _res;
  spuriousAttributes(_fn) => _res;
}

class Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes {
  Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes({
    required this.name,
    required this.value,
    required this.$__typename,
  });

  factory Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes(
      name: (l$name as String),
      value: (l$value as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$value,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes
    on Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes {
  CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes<
          Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes>
      get copyWith =>
          CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes<
    TRes> {
  factory CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes(
    Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes instance,
    TRes Function(
            Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes)
        then,
  ) = _CopyWithImpl$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes;

  factory CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes;

  TRes call({
    String? name,
    String? value,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes<
        TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes<
            TRes> {
  _CopyWithImpl$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes(
    this._instance,
    this._then,
  );

  final Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes
      _instance;

  final TRes Function(
      Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        value: value == _undefined || value == null
            ? _instance.value
            : (value as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes<
        TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes<
            TRes> {
  _CopyWithStubImpl$Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes(
      this._res);

  TRes _res;

  call({
    String? name,
    String? value,
    String? $__typename,
  }) =>
      _res;
}

class Query$DictArticles$dictEntryList$translationGroups {
  Query$DictArticles$dictEntryList$translationGroups({
    this.translationLemmas,
    this.restriction,
    this.exampleGroups,
    required this.$__typename,
  });

  factory Query$DictArticles$dictEntryList$translationGroups.fromJson(
      Map<String, dynamic> json) {
    final l$translationLemmas = json['translationLemmas'];
    final l$restriction = json['restriction'];
    final l$exampleGroups = json['exampleGroups'];
    final l$$__typename = json['__typename'];
    return Query$DictArticles$dictEntryList$translationGroups(
      translationLemmas: (l$translationLemmas as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$DictArticles$dictEntryList$translationGroups$translationLemmas
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      restriction: l$restriction == null
          ? null
          : Query$DictArticles$dictEntryList$translationGroups$restriction
              .fromJson((l$restriction as Map<String, dynamic>)),
      exampleGroups: (l$exampleGroups as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$DictArticles$dictEntryList$translationGroups$exampleGroups
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$DictArticles$dictEntryList$translationGroups$translationLemmas?>?
      translationLemmas;

  final Query$DictArticles$dictEntryList$translationGroups$restriction?
      restriction;

  final List<Query$DictArticles$dictEntryList$translationGroups$exampleGroups?>?
      exampleGroups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$translationLemmas = translationLemmas;
    _resultData['translationLemmas'] =
        l$translationLemmas?.map((e) => e?.toJson()).toList();
    final l$restriction = restriction;
    _resultData['restriction'] = l$restriction?.toJson();
    final l$exampleGroups = exampleGroups;
    _resultData['exampleGroups'] =
        l$exampleGroups?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$translationLemmas = translationLemmas;
    final l$restriction = restriction;
    final l$exampleGroups = exampleGroups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$translationLemmas == null
          ? null
          : Object.hashAll(l$translationLemmas.map((v) => v)),
      l$restriction,
      l$exampleGroups == null
          ? null
          : Object.hashAll(l$exampleGroups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$DictArticles$dictEntryList$translationGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$translationLemmas = translationLemmas;
    final lOther$translationLemmas = other.translationLemmas;
    if (l$translationLemmas != null && lOther$translationLemmas != null) {
      if (l$translationLemmas.length != lOther$translationLemmas.length) {
        return false;
      }
      for (int i = 0; i < l$translationLemmas.length; i++) {
        final l$translationLemmas$entry = l$translationLemmas[i];
        final lOther$translationLemmas$entry = lOther$translationLemmas[i];
        if (l$translationLemmas$entry != lOther$translationLemmas$entry) {
          return false;
        }
      }
    } else if (l$translationLemmas != lOther$translationLemmas) {
      return false;
    }
    final l$restriction = restriction;
    final lOther$restriction = other.restriction;
    if (l$restriction != lOther$restriction) {
      return false;
    }
    final l$exampleGroups = exampleGroups;
    final lOther$exampleGroups = other.exampleGroups;
    if (l$exampleGroups != null && lOther$exampleGroups != null) {
      if (l$exampleGroups.length != lOther$exampleGroups.length) {
        return false;
      }
      for (int i = 0; i < l$exampleGroups.length; i++) {
        final l$exampleGroups$entry = l$exampleGroups[i];
        final lOther$exampleGroups$entry = lOther$exampleGroups[i];
        if (l$exampleGroups$entry != lOther$exampleGroups$entry) {
          return false;
        }
      }
    } else if (l$exampleGroups != lOther$exampleGroups) {
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

extension UtilityExtension$Query$DictArticles$dictEntryList$translationGroups
    on Query$DictArticles$dictEntryList$translationGroups {
  CopyWith$Query$DictArticles$dictEntryList$translationGroups<
          Query$DictArticles$dictEntryList$translationGroups>
      get copyWith =>
          CopyWith$Query$DictArticles$dictEntryList$translationGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DictArticles$dictEntryList$translationGroups<
    TRes> {
  factory CopyWith$Query$DictArticles$dictEntryList$translationGroups(
    Query$DictArticles$dictEntryList$translationGroups instance,
    TRes Function(Query$DictArticles$dictEntryList$translationGroups) then,
  ) = _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups;

  factory CopyWith$Query$DictArticles$dictEntryList$translationGroups.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups;

  TRes call({
    List<Query$DictArticles$dictEntryList$translationGroups$translationLemmas?>?
        translationLemmas,
    Query$DictArticles$dictEntryList$translationGroups$restriction? restriction,
    List<Query$DictArticles$dictEntryList$translationGroups$exampleGroups?>?
        exampleGroups,
    String? $__typename,
  });
  TRes translationLemmas(
      Iterable<Query$DictArticles$dictEntryList$translationGroups$translationLemmas?>? Function(
              Iterable<
                  CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas<
                      Query$DictArticles$dictEntryList$translationGroups$translationLemmas>?>?)
          _fn);
  CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction<TRes>
      get restriction;
  TRes exampleGroups(
      Iterable<Query$DictArticles$dictEntryList$translationGroups$exampleGroups?>? Function(
              Iterable<
                  CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups<
                      Query$DictArticles$dictEntryList$translationGroups$exampleGroups>?>?)
          _fn);
}

class _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups<TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$translationGroups<TRes> {
  _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups(
    this._instance,
    this._then,
  );

  final Query$DictArticles$dictEntryList$translationGroups _instance;

  final TRes Function(Query$DictArticles$dictEntryList$translationGroups) _then;

  static const _undefined = {};

  TRes call({
    Object? translationLemmas = _undefined,
    Object? restriction = _undefined,
    Object? exampleGroups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DictArticles$dictEntryList$translationGroups(
        translationLemmas: translationLemmas == _undefined
            ? _instance.translationLemmas
            : (translationLemmas as List<
                Query$DictArticles$dictEntryList$translationGroups$translationLemmas?>?),
        restriction: restriction == _undefined
            ? _instance.restriction
            : (restriction
                as Query$DictArticles$dictEntryList$translationGroups$restriction?),
        exampleGroups: exampleGroups == _undefined
            ? _instance.exampleGroups
            : (exampleGroups as List<
                Query$DictArticles$dictEntryList$translationGroups$exampleGroups?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes translationLemmas(
          Iterable<Query$DictArticles$dictEntryList$translationGroups$translationLemmas?>? Function(
                  Iterable<
                      CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas<
                          Query$DictArticles$dictEntryList$translationGroups$translationLemmas>?>?)
              _fn) =>
      call(
          translationLemmas: _fn(_instance.translationLemmas?.map((e) => e ==
                  null
              ? null
              : CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas(
                  e,
                  (i) => i,
                )))?.toList());
  CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction<TRes>
      get restriction {
    final local$restriction = _instance.restriction;
    return local$restriction == null
        ? CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction
            .stub(_then(_instance))
        : CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction(
            local$restriction, (e) => call(restriction: e));
  }

  TRes exampleGroups(
          Iterable<Query$DictArticles$dictEntryList$translationGroups$exampleGroups?>? Function(
                  Iterable<
                      CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups<
                          Query$DictArticles$dictEntryList$translationGroups$exampleGroups>?>?)
              _fn) =>
      call(
          exampleGroups: _fn(_instance.exampleGroups?.map((e) => e == null
              ? null
              : CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups<TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$translationGroups<TRes> {
  _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups(
      this._res);

  TRes _res;

  call({
    List<Query$DictArticles$dictEntryList$translationGroups$translationLemmas?>?
        translationLemmas,
    Query$DictArticles$dictEntryList$translationGroups$restriction? restriction,
    List<Query$DictArticles$dictEntryList$translationGroups$exampleGroups?>?
        exampleGroups,
    String? $__typename,
  }) =>
      _res;
  translationLemmas(_fn) => _res;
  CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction<TRes>
      get restriction =>
          CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction
              .stub(_res);
  exampleGroups(_fn) => _res;
}

class Query$DictArticles$dictEntryList$translationGroups$translationLemmas {
  Query$DictArticles$dictEntryList$translationGroups$translationLemmas({
    required this.lemma,
    required this.presentationLemma,
    required this.language,
    this.pos,
    this.dialect,
    this.country,
    required this.$__typename,
  });

  factory Query$DictArticles$dictEntryList$translationGroups$translationLemmas.fromJson(
      Map<String, dynamic> json) {
    final l$lemma = json['lemma'];
    final l$presentationLemma = json['presentationLemma'];
    final l$language = json['language'];
    final l$pos = json['pos'];
    final l$dialect = json['dialect'];
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Query$DictArticles$dictEntryList$translationGroups$translationLemmas(
      lemma: (l$lemma as String),
      presentationLemma: (l$presentationLemma as String),
      language: (l$language as String),
      pos: (l$pos as String?),
      dialect: (l$dialect as String?),
      country: (l$country as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String lemma;

  final String presentationLemma;

  final String language;

  final String? pos;

  final String? dialect;

  final String? country;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lemma = lemma;
    _resultData['lemma'] = l$lemma;
    final l$presentationLemma = presentationLemma;
    _resultData['presentationLemma'] = l$presentationLemma;
    final l$language = language;
    _resultData['language'] = l$language;
    final l$pos = pos;
    _resultData['pos'] = l$pos;
    final l$dialect = dialect;
    _resultData['dialect'] = l$dialect;
    final l$country = country;
    _resultData['country'] = l$country;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lemma = lemma;
    final l$presentationLemma = presentationLemma;
    final l$language = language;
    final l$pos = pos;
    final l$dialect = dialect;
    final l$country = country;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lemma,
      l$presentationLemma,
      l$language,
      l$pos,
      l$dialect,
      l$country,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$DictArticles$dictEntryList$translationGroups$translationLemmas) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lemma = lemma;
    final lOther$lemma = other.lemma;
    if (l$lemma != lOther$lemma) {
      return false;
    }
    final l$presentationLemma = presentationLemma;
    final lOther$presentationLemma = other.presentationLemma;
    if (l$presentationLemma != lOther$presentationLemma) {
      return false;
    }
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
      return false;
    }
    final l$pos = pos;
    final lOther$pos = other.pos;
    if (l$pos != lOther$pos) {
      return false;
    }
    final l$dialect = dialect;
    final lOther$dialect = other.dialect;
    if (l$dialect != lOther$dialect) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
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

extension UtilityExtension$Query$DictArticles$dictEntryList$translationGroups$translationLemmas
    on Query$DictArticles$dictEntryList$translationGroups$translationLemmas {
  CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas<
          Query$DictArticles$dictEntryList$translationGroups$translationLemmas>
      get copyWith =>
          CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas<
    TRes> {
  factory CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas(
    Query$DictArticles$dictEntryList$translationGroups$translationLemmas
        instance,
    TRes Function(
            Query$DictArticles$dictEntryList$translationGroups$translationLemmas)
        then,
  ) = _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups$translationLemmas;

  factory CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups$translationLemmas;

  TRes call({
    String? lemma,
    String? presentationLemma,
    String? language,
    String? pos,
    String? dialect,
    String? country,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups$translationLemmas<
        TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas<
            TRes> {
  _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups$translationLemmas(
    this._instance,
    this._then,
  );

  final Query$DictArticles$dictEntryList$translationGroups$translationLemmas
      _instance;

  final TRes Function(
          Query$DictArticles$dictEntryList$translationGroups$translationLemmas)
      _then;

  static const _undefined = {};

  TRes call({
    Object? lemma = _undefined,
    Object? presentationLemma = _undefined,
    Object? language = _undefined,
    Object? pos = _undefined,
    Object? dialect = _undefined,
    Object? country = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$DictArticles$dictEntryList$translationGroups$translationLemmas(
        lemma: lemma == _undefined || lemma == null
            ? _instance.lemma
            : (lemma as String),
        presentationLemma:
            presentationLemma == _undefined || presentationLemma == null
                ? _instance.presentationLemma
                : (presentationLemma as String),
        language: language == _undefined || language == null
            ? _instance.language
            : (language as String),
        pos: pos == _undefined ? _instance.pos : (pos as String?),
        dialect:
            dialect == _undefined ? _instance.dialect : (dialect as String?),
        country:
            country == _undefined ? _instance.country : (country as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups$translationLemmas<
        TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$translationGroups$translationLemmas<
            TRes> {
  _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups$translationLemmas(
      this._res);

  TRes _res;

  call({
    String? lemma,
    String? presentationLemma,
    String? language,
    String? pos,
    String? dialect,
    String? country,
    String? $__typename,
  }) =>
      _res;
}

class Query$DictArticles$dictEntryList$translationGroups$restriction {
  Query$DictArticles$dictEntryList$translationGroups$restriction({
    this.restriction,
    this.attributes,
    required this.$__typename,
  });

  factory Query$DictArticles$dictEntryList$translationGroups$restriction.fromJson(
      Map<String, dynamic> json) {
    final l$restriction = json['restriction'];
    final l$attributes = json['attributes'];
    final l$$__typename = json['__typename'];
    return Query$DictArticles$dictEntryList$translationGroups$restriction(
      restriction: (l$restriction as String?),
      attributes: (l$attributes as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? restriction;

  final String? attributes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$restriction = restriction;
    _resultData['restriction'] = l$restriction;
    final l$attributes = attributes;
    _resultData['attributes'] = l$attributes;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$restriction = restriction;
    final l$attributes = attributes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$restriction,
      l$attributes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$DictArticles$dictEntryList$translationGroups$restriction) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$restriction = restriction;
    final lOther$restriction = other.restriction;
    if (l$restriction != lOther$restriction) {
      return false;
    }
    final l$attributes = attributes;
    final lOther$attributes = other.attributes;
    if (l$attributes != lOther$attributes) {
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

extension UtilityExtension$Query$DictArticles$dictEntryList$translationGroups$restriction
    on Query$DictArticles$dictEntryList$translationGroups$restriction {
  CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction<
          Query$DictArticles$dictEntryList$translationGroups$restriction>
      get copyWith =>
          CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction<
    TRes> {
  factory CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction(
    Query$DictArticles$dictEntryList$translationGroups$restriction instance,
    TRes Function(
            Query$DictArticles$dictEntryList$translationGroups$restriction)
        then,
  ) = _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups$restriction;

  factory CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups$restriction;

  TRes call({
    String? restriction,
    String? attributes,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups$restriction<
        TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction<
            TRes> {
  _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups$restriction(
    this._instance,
    this._then,
  );

  final Query$DictArticles$dictEntryList$translationGroups$restriction
      _instance;

  final TRes Function(
      Query$DictArticles$dictEntryList$translationGroups$restriction) _then;

  static const _undefined = {};

  TRes call({
    Object? restriction = _undefined,
    Object? attributes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DictArticles$dictEntryList$translationGroups$restriction(
        restriction: restriction == _undefined
            ? _instance.restriction
            : (restriction as String?),
        attributes: attributes == _undefined
            ? _instance.attributes
            : (attributes as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups$restriction<
        TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$translationGroups$restriction<
            TRes> {
  _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups$restriction(
      this._res);

  TRes _res;

  call({
    String? restriction,
    String? attributes,
    String? $__typename,
  }) =>
      _res;
}

class Query$DictArticles$dictEntryList$translationGroups$exampleGroups {
  Query$DictArticles$dictEntryList$translationGroups$exampleGroups({
    required this.example,
    required this.translation,
    required this.$__typename,
  });

  factory Query$DictArticles$dictEntryList$translationGroups$exampleGroups.fromJson(
      Map<String, dynamic> json) {
    final l$example = json['example'];
    final l$translation = json['translation'];
    final l$$__typename = json['__typename'];
    return Query$DictArticles$dictEntryList$translationGroups$exampleGroups(
      example: (l$example as String),
      translation: (l$translation as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String example;

  final String translation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$example = example;
    _resultData['example'] = l$example;
    final l$translation = translation;
    _resultData['translation'] = l$translation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$example = example;
    final l$translation = translation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$example,
      l$translation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$DictArticles$dictEntryList$translationGroups$exampleGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$example = example;
    final lOther$example = other.example;
    if (l$example != lOther$example) {
      return false;
    }
    final l$translation = translation;
    final lOther$translation = other.translation;
    if (l$translation != lOther$translation) {
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

extension UtilityExtension$Query$DictArticles$dictEntryList$translationGroups$exampleGroups
    on Query$DictArticles$dictEntryList$translationGroups$exampleGroups {
  CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups<
          Query$DictArticles$dictEntryList$translationGroups$exampleGroups>
      get copyWith =>
          CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups<
    TRes> {
  factory CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups(
    Query$DictArticles$dictEntryList$translationGroups$exampleGroups instance,
    TRes Function(
            Query$DictArticles$dictEntryList$translationGroups$exampleGroups)
        then,
  ) = _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups$exampleGroups;

  factory CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups$exampleGroups;

  TRes call({
    String? example,
    String? translation,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups$exampleGroups<
        TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups<
            TRes> {
  _CopyWithImpl$Query$DictArticles$dictEntryList$translationGroups$exampleGroups(
    this._instance,
    this._then,
  );

  final Query$DictArticles$dictEntryList$translationGroups$exampleGroups
      _instance;

  final TRes Function(
      Query$DictArticles$dictEntryList$translationGroups$exampleGroups) _then;

  static const _undefined = {};

  TRes call({
    Object? example = _undefined,
    Object? translation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DictArticles$dictEntryList$translationGroups$exampleGroups(
        example: example == _undefined || example == null
            ? _instance.example
            : (example as String),
        translation: translation == _undefined || translation == null
            ? _instance.translation
            : (translation as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups$exampleGroups<
        TRes>
    implements
        CopyWith$Query$DictArticles$dictEntryList$translationGroups$exampleGroups<
            TRes> {
  _CopyWithStubImpl$Query$DictArticles$dictEntryList$translationGroups$exampleGroups(
      this._res);

  TRes _res;

  call({
    String? example,
    String? translation,
    String? $__typename,
  }) =>
      _res;
}
