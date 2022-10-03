// ignore_for_file: depend_on_referenced_packages, prefer_is_not_operator, annotate_overrides, prefer_final_fields, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unnecessary_this

import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$TermArticles {
  factory Variables$Query$TermArticles({
    required String lemma,
    required List<String?> srcLangs,
    required List<String?> targetLangs,
  }) =>
      Variables$Query$TermArticles._({
        r'lemma': lemma,
        r'srcLangs': srcLangs,
        r'targetLangs': targetLangs,
      });

  Variables$Query$TermArticles._(this._$data);

  factory Variables$Query$TermArticles.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lemma = data['lemma'];
    result$data['lemma'] = (l$lemma as String);
    final l$srcLangs = data['srcLangs'];
    result$data['srcLangs'] =
        (l$srcLangs as List<dynamic>).map((e) => (e as String?)).toList();
    final l$targetLangs = data['targetLangs'];
    result$data['targetLangs'] =
        (l$targetLangs as List<dynamic>).map((e) => (e as String?)).toList();
    return Variables$Query$TermArticles._(result$data);
  }

  Map<String, dynamic> _$data;

  String get lemma => (_$data['lemma'] as String);
  List<String?> get srcLangs => (_$data['srcLangs'] as List<String?>);
  List<String?> get targetLangs => (_$data['targetLangs'] as List<String?>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lemma = lemma;
    result$data['lemma'] = l$lemma;
    final l$srcLangs = srcLangs;
    result$data['srcLangs'] = l$srcLangs.map((e) => e).toList();
    final l$targetLangs = targetLangs;
    result$data['targetLangs'] = l$targetLangs.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Query$TermArticles<Variables$Query$TermArticles>
      get copyWith => CopyWith$Variables$Query$TermArticles(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$TermArticles) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$lemma = lemma;
    final l$srcLangs = srcLangs;
    final l$targetLangs = targetLangs;
    return Object.hashAll([
      l$lemma,
      Object.hashAll(l$srcLangs.map((v) => v)),
      Object.hashAll(l$targetLangs.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Query$TermArticles<TRes> {
  factory CopyWith$Variables$Query$TermArticles(
    Variables$Query$TermArticles instance,
    TRes Function(Variables$Query$TermArticles) then,
  ) = _CopyWithImpl$Variables$Query$TermArticles;

  factory CopyWith$Variables$Query$TermArticles.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TermArticles;

  TRes call({
    String? lemma,
    List<String?>? srcLangs,
    List<String?>? targetLangs,
  });
}

class _CopyWithImpl$Variables$Query$TermArticles<TRes>
    implements CopyWith$Variables$Query$TermArticles<TRes> {
  _CopyWithImpl$Variables$Query$TermArticles(
    this._instance,
    this._then,
  );

  final Variables$Query$TermArticles _instance;

  final TRes Function(Variables$Query$TermArticles) _then;

  static const _undefined = {};

  TRes call({
    Object? lemma = _undefined,
    Object? srcLangs = _undefined,
    Object? targetLangs = _undefined,
  }) =>
      _then(Variables$Query$TermArticles._({
        ..._instance._$data,
        if (lemma != _undefined && lemma != null) 'lemma': (lemma as String),
        if (srcLangs != _undefined && srcLangs != null)
          'srcLangs': (srcLangs as List<String?>),
        if (targetLangs != _undefined && targetLangs != null)
          'targetLangs': (targetLangs as List<String?>),
      }));
}

class _CopyWithStubImpl$Variables$Query$TermArticles<TRes>
    implements CopyWith$Variables$Query$TermArticles<TRes> {
  _CopyWithStubImpl$Variables$Query$TermArticles(this._res);

  TRes _res;

  call({
    String? lemma,
    List<String?>? srcLangs,
    List<String?>? targetLangs,
  }) =>
      _res;
}

class Query$TermArticles {
  Query$TermArticles({
    this.conceptList,
    required this.$__typename,
  });

  factory Query$TermArticles.fromJson(Map<String, dynamic> json) {
    final l$conceptList = json['conceptList'];
    final l$$__typename = json['__typename'];
    return Query$TermArticles(
      conceptList: (l$conceptList as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$TermArticles$conceptList.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TermArticles$conceptList?>? conceptList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$conceptList = conceptList;
    _resultData['conceptList'] =
        l$conceptList?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$conceptList = conceptList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$conceptList == null
          ? null
          : Object.hashAll(l$conceptList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TermArticles) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$conceptList = conceptList;
    final lOther$conceptList = other.conceptList;
    if (l$conceptList != null && lOther$conceptList != null) {
      if (l$conceptList.length != lOther$conceptList.length) {
        return false;
      }
      for (int i = 0; i < l$conceptList.length; i++) {
        final l$conceptList$entry = l$conceptList[i];
        final lOther$conceptList$entry = lOther$conceptList[i];
        if (l$conceptList$entry != lOther$conceptList$entry) {
          return false;
        }
      }
    } else if (l$conceptList != lOther$conceptList) {
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

extension UtilityExtension$Query$TermArticles on Query$TermArticles {
  CopyWith$Query$TermArticles<Query$TermArticles> get copyWith =>
      CopyWith$Query$TermArticles(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TermArticles<TRes> {
  factory CopyWith$Query$TermArticles(
    Query$TermArticles instance,
    TRes Function(Query$TermArticles) then,
  ) = _CopyWithImpl$Query$TermArticles;

  factory CopyWith$Query$TermArticles.stub(TRes res) =
      _CopyWithStubImpl$Query$TermArticles;

  TRes call({
    List<Query$TermArticles$conceptList?>? conceptList,
    String? $__typename,
  });
  TRes conceptList(
      Iterable<Query$TermArticles$conceptList?>? Function(
              Iterable<
                  CopyWith$Query$TermArticles$conceptList<
                      Query$TermArticles$conceptList>?>?)
          _fn);
}

class _CopyWithImpl$Query$TermArticles<TRes>
    implements CopyWith$Query$TermArticles<TRes> {
  _CopyWithImpl$Query$TermArticles(
    this._instance,
    this._then,
  );

  final Query$TermArticles _instance;

  final TRes Function(Query$TermArticles) _then;

  static const _undefined = {};

  TRes call({
    Object? conceptList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TermArticles(
        conceptList: conceptList == _undefined
            ? _instance.conceptList
            : (conceptList as List<Query$TermArticles$conceptList?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes conceptList(
          Iterable<Query$TermArticles$conceptList?>? Function(
                  Iterable<
                      CopyWith$Query$TermArticles$conceptList<
                          Query$TermArticles$conceptList>?>?)
              _fn) =>
      call(
          conceptList: _fn(_instance.conceptList?.map((e) => e == null
              ? null
              : CopyWith$Query$TermArticles$conceptList(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$TermArticles<TRes>
    implements CopyWith$Query$TermArticles<TRes> {
  _CopyWithStubImpl$Query$TermArticles(this._res);

  TRes _res;

  call({
    List<Query$TermArticles$conceptList?>? conceptList,
    String? $__typename,
  }) =>
      _res;
  conceptList(_fn) => _res;
}

const documentNodeQueryTermArticles = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'TermArticles'),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'conceptList'),
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
        ],
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
            name: NameNode(value: 'collections'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'definition'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'explanation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sanctioned'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'source'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'status'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
Query$TermArticles _parserFn$Query$TermArticles(Map<String, dynamic> data) =>
    Query$TermArticles.fromJson(data);

class Options$Query$TermArticles
    extends graphql.QueryOptions<Query$TermArticles> {
  Options$Query$TermArticles({
    String? operationName,
    required Variables$Query$TermArticles variables,
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
          document: documentNodeQueryTermArticles,
          parserFn: _parserFn$Query$TermArticles,
        );
}

class WatchOptions$Query$TermArticles
    extends graphql.WatchQueryOptions<Query$TermArticles> {
  WatchOptions$Query$TermArticles({
    String? operationName,
    required Variables$Query$TermArticles variables,
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
          document: documentNodeQueryTermArticles,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$TermArticles,
        );
}

class FetchMoreOptions$Query$TermArticles extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TermArticles({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TermArticles variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryTermArticles,
        );
}

extension ClientExtension$Query$TermArticles on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TermArticles>> query$TermArticles(
          Options$Query$TermArticles options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$TermArticles> watchQuery$TermArticles(
          WatchOptions$Query$TermArticles options) =>
      this.watchQuery(options);
  void writeQuery$TermArticles({
    required Query$TermArticles data,
    required Variables$Query$TermArticles variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryTermArticles),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$TermArticles? readQuery$TermArticles({
    required Variables$Query$TermArticles variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTermArticles),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TermArticles.fromJson(result);
  }
}

class Query$TermArticles$conceptList {
  Query$TermArticles$conceptList({
    required this.name,
    this.collections,
    this.definition,
    this.explanation,
    required this.terms,
    required this.$__typename,
  });

  factory Query$TermArticles$conceptList.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$collections = json['collections'];
    final l$definition = json['definition'];
    final l$explanation = json['explanation'];
    final l$terms = json['terms'];
    final l$$__typename = json['__typename'];
    return Query$TermArticles$conceptList(
      name: (l$name as String),
      collections: (l$collections as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      definition: (l$definition as String?),
      explanation: (l$explanation as String?),
      terms: (l$terms as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$TermArticles$conceptList$terms.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<String?>? collections;

  final String? definition;

  final String? explanation;

  final List<Query$TermArticles$conceptList$terms?> terms;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$collections = collections;
    _resultData['collections'] = l$collections?.map((e) => e).toList();
    final l$definition = definition;
    _resultData['definition'] = l$definition;
    final l$explanation = explanation;
    _resultData['explanation'] = l$explanation;
    final l$terms = terms;
    _resultData['terms'] = l$terms.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$collections = collections;
    final l$definition = definition;
    final l$explanation = explanation;
    final l$terms = terms;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$collections == null
          ? null
          : Object.hashAll(l$collections.map((v) => v)),
      l$definition,
      l$explanation,
      Object.hashAll(l$terms.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TermArticles$conceptList) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$collections = collections;
    final lOther$collections = other.collections;
    if (l$collections != null && lOther$collections != null) {
      if (l$collections.length != lOther$collections.length) {
        return false;
      }
      for (int i = 0; i < l$collections.length; i++) {
        final l$collections$entry = l$collections[i];
        final lOther$collections$entry = lOther$collections[i];
        if (l$collections$entry != lOther$collections$entry) {
          return false;
        }
      }
    } else if (l$collections != lOther$collections) {
      return false;
    }
    final l$definition = definition;
    final lOther$definition = other.definition;
    if (l$definition != lOther$definition) {
      return false;
    }
    final l$explanation = explanation;
    final lOther$explanation = other.explanation;
    if (l$explanation != lOther$explanation) {
      return false;
    }
    final l$terms = terms;
    final lOther$terms = other.terms;
    if (l$terms.length != lOther$terms.length) {
      return false;
    }
    for (int i = 0; i < l$terms.length; i++) {
      final l$terms$entry = l$terms[i];
      final lOther$terms$entry = lOther$terms[i];
      if (l$terms$entry != lOther$terms$entry) {
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

extension UtilityExtension$Query$TermArticles$conceptList
    on Query$TermArticles$conceptList {
  CopyWith$Query$TermArticles$conceptList<Query$TermArticles$conceptList>
      get copyWith => CopyWith$Query$TermArticles$conceptList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TermArticles$conceptList<TRes> {
  factory CopyWith$Query$TermArticles$conceptList(
    Query$TermArticles$conceptList instance,
    TRes Function(Query$TermArticles$conceptList) then,
  ) = _CopyWithImpl$Query$TermArticles$conceptList;

  factory CopyWith$Query$TermArticles$conceptList.stub(TRes res) =
      _CopyWithStubImpl$Query$TermArticles$conceptList;

  TRes call({
    String? name,
    List<String?>? collections,
    String? definition,
    String? explanation,
    List<Query$TermArticles$conceptList$terms?>? terms,
    String? $__typename,
  });
  TRes terms(
      Iterable<Query$TermArticles$conceptList$terms?> Function(
              Iterable<
                  CopyWith$Query$TermArticles$conceptList$terms<
                      Query$TermArticles$conceptList$terms>?>)
          _fn);
}

class _CopyWithImpl$Query$TermArticles$conceptList<TRes>
    implements CopyWith$Query$TermArticles$conceptList<TRes> {
  _CopyWithImpl$Query$TermArticles$conceptList(
    this._instance,
    this._then,
  );

  final Query$TermArticles$conceptList _instance;

  final TRes Function(Query$TermArticles$conceptList) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? collections = _undefined,
    Object? definition = _undefined,
    Object? explanation = _undefined,
    Object? terms = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TermArticles$conceptList(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        collections: collections == _undefined
            ? _instance.collections
            : (collections as List<String?>?),
        definition: definition == _undefined
            ? _instance.definition
            : (definition as String?),
        explanation: explanation == _undefined
            ? _instance.explanation
            : (explanation as String?),
        terms: terms == _undefined || terms == null
            ? _instance.terms
            : (terms as List<Query$TermArticles$conceptList$terms?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes terms(
          Iterable<Query$TermArticles$conceptList$terms?> Function(
                  Iterable<
                      CopyWith$Query$TermArticles$conceptList$terms<
                          Query$TermArticles$conceptList$terms>?>)
              _fn) =>
      call(
          terms: _fn(_instance.terms.map((e) => e == null
              ? null
              : CopyWith$Query$TermArticles$conceptList$terms(
                  e,
                  (i) => i,
                ))).toList());
}

class _CopyWithStubImpl$Query$TermArticles$conceptList<TRes>
    implements CopyWith$Query$TermArticles$conceptList<TRes> {
  _CopyWithStubImpl$Query$TermArticles$conceptList(this._res);

  TRes _res;

  call({
    String? name,
    List<String?>? collections,
    String? definition,
    String? explanation,
    List<Query$TermArticles$conceptList$terms?>? terms,
    String? $__typename,
  }) =>
      _res;
  terms(_fn) => _res;
}

class Query$TermArticles$conceptList$terms {
  Query$TermArticles$conceptList$terms({
    this.note,
    this.sanctioned,
    this.source,
    this.status,
    this.expression,
    required this.$__typename,
  });

  factory Query$TermArticles$conceptList$terms.fromJson(
      Map<String, dynamic> json) {
    final l$note = json['note'];
    final l$sanctioned = json['sanctioned'];
    final l$source = json['source'];
    final l$status = json['status'];
    final l$expression = json['expression'];
    final l$$__typename = json['__typename'];
    return Query$TermArticles$conceptList$terms(
      note: (l$note as String?),
      sanctioned: (l$sanctioned as bool?),
      source: (l$source as String?),
      status: (l$status as String?),
      expression: l$expression == null
          ? null
          : Query$TermArticles$conceptList$terms$expression.fromJson(
              (l$expression as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? note;

  final bool? sanctioned;

  final String? source;

  final String? status;

  final Query$TermArticles$conceptList$terms$expression? expression;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$note = note;
    _resultData['note'] = l$note;
    final l$sanctioned = sanctioned;
    _resultData['sanctioned'] = l$sanctioned;
    final l$source = source;
    _resultData['source'] = l$source;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$expression = expression;
    _resultData['expression'] = l$expression?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$note = note;
    final l$sanctioned = sanctioned;
    final l$source = source;
    final l$status = status;
    final l$expression = expression;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$note,
      l$sanctioned,
      l$source,
      l$status,
      l$expression,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TermArticles$conceptList$terms) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$note = note;
    final lOther$note = other.note;
    if (l$note != lOther$note) {
      return false;
    }
    final l$sanctioned = sanctioned;
    final lOther$sanctioned = other.sanctioned;
    if (l$sanctioned != lOther$sanctioned) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$expression = expression;
    final lOther$expression = other.expression;
    if (l$expression != lOther$expression) {
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

extension UtilityExtension$Query$TermArticles$conceptList$terms
    on Query$TermArticles$conceptList$terms {
  CopyWith$Query$TermArticles$conceptList$terms<
          Query$TermArticles$conceptList$terms>
      get copyWith => CopyWith$Query$TermArticles$conceptList$terms(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TermArticles$conceptList$terms<TRes> {
  factory CopyWith$Query$TermArticles$conceptList$terms(
    Query$TermArticles$conceptList$terms instance,
    TRes Function(Query$TermArticles$conceptList$terms) then,
  ) = _CopyWithImpl$Query$TermArticles$conceptList$terms;

  factory CopyWith$Query$TermArticles$conceptList$terms.stub(TRes res) =
      _CopyWithStubImpl$Query$TermArticles$conceptList$terms;

  TRes call({
    String? note,
    bool? sanctioned,
    String? source,
    String? status,
    Query$TermArticles$conceptList$terms$expression? expression,
    String? $__typename,
  });
  CopyWith$Query$TermArticles$conceptList$terms$expression<TRes> get expression;
}

class _CopyWithImpl$Query$TermArticles$conceptList$terms<TRes>
    implements CopyWith$Query$TermArticles$conceptList$terms<TRes> {
  _CopyWithImpl$Query$TermArticles$conceptList$terms(
    this._instance,
    this._then,
  );

  final Query$TermArticles$conceptList$terms _instance;

  final TRes Function(Query$TermArticles$conceptList$terms) _then;

  static const _undefined = {};

  TRes call({
    Object? note = _undefined,
    Object? sanctioned = _undefined,
    Object? source = _undefined,
    Object? status = _undefined,
    Object? expression = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TermArticles$conceptList$terms(
        note: note == _undefined ? _instance.note : (note as String?),
        sanctioned: sanctioned == _undefined
            ? _instance.sanctioned
            : (sanctioned as bool?),
        source: source == _undefined ? _instance.source : (source as String?),
        status: status == _undefined ? _instance.status : (status as String?),
        expression: expression == _undefined
            ? _instance.expression
            : (expression as Query$TermArticles$conceptList$terms$expression?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$TermArticles$conceptList$terms$expression<TRes>
      get expression {
    final local$expression = _instance.expression;
    return local$expression == null
        ? CopyWith$Query$TermArticles$conceptList$terms$expression.stub(
            _then(_instance))
        : CopyWith$Query$TermArticles$conceptList$terms$expression(
            local$expression, (e) => call(expression: e));
  }
}

class _CopyWithStubImpl$Query$TermArticles$conceptList$terms<TRes>
    implements CopyWith$Query$TermArticles$conceptList$terms<TRes> {
  _CopyWithStubImpl$Query$TermArticles$conceptList$terms(this._res);

  TRes _res;

  call({
    String? note,
    bool? sanctioned,
    String? source,
    String? status,
    Query$TermArticles$conceptList$terms$expression? expression,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$TermArticles$conceptList$terms$expression<TRes>
      get expression =>
          CopyWith$Query$TermArticles$conceptList$terms$expression.stub(_res);
}

class Query$TermArticles$conceptList$terms$expression {
  Query$TermArticles$conceptList$terms$expression({
    required this.lemma,
    required this.presentationLemma,
    required this.language,
    this.pos,
    this.dialect,
    this.country,
    required this.$__typename,
  });

  factory Query$TermArticles$conceptList$terms$expression.fromJson(
      Map<String, dynamic> json) {
    final l$lemma = json['lemma'];
    final l$presentationLemma = json['presentationLemma'];
    final l$language = json['language'];
    final l$pos = json['pos'];
    final l$dialect = json['dialect'];
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Query$TermArticles$conceptList$terms$expression(
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
    if (!(other is Query$TermArticles$conceptList$terms$expression) ||
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

extension UtilityExtension$Query$TermArticles$conceptList$terms$expression
    on Query$TermArticles$conceptList$terms$expression {
  CopyWith$Query$TermArticles$conceptList$terms$expression<
          Query$TermArticles$conceptList$terms$expression>
      get copyWith => CopyWith$Query$TermArticles$conceptList$terms$expression(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TermArticles$conceptList$terms$expression<TRes> {
  factory CopyWith$Query$TermArticles$conceptList$terms$expression(
    Query$TermArticles$conceptList$terms$expression instance,
    TRes Function(Query$TermArticles$conceptList$terms$expression) then,
  ) = _CopyWithImpl$Query$TermArticles$conceptList$terms$expression;

  factory CopyWith$Query$TermArticles$conceptList$terms$expression.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TermArticles$conceptList$terms$expression;

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

class _CopyWithImpl$Query$TermArticles$conceptList$terms$expression<TRes>
    implements CopyWith$Query$TermArticles$conceptList$terms$expression<TRes> {
  _CopyWithImpl$Query$TermArticles$conceptList$terms$expression(
    this._instance,
    this._then,
  );

  final Query$TermArticles$conceptList$terms$expression _instance;

  final TRes Function(Query$TermArticles$conceptList$terms$expression) _then;

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
      _then(Query$TermArticles$conceptList$terms$expression(
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

class _CopyWithStubImpl$Query$TermArticles$conceptList$terms$expression<TRes>
    implements CopyWith$Query$TermArticles$conceptList$terms$expression<TRes> {
  _CopyWithStubImpl$Query$TermArticles$conceptList$terms$expression(this._res);

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
