// Package imports:
import 'package:graphql/client.dart';
import 'package:satni_service_interface/satni_service_interface.dart';

// Project imports:
import 'graphql/graphql_provider.dart';
import 'graphql/queries/all_lemmas.graphql.dart';
import 'graphql/queries/dict_articles.graphql.dart';
import 'graphql/queries/generated.graphql.dart';
import 'graphql/queries/lemmatised.graphql.dart';
import 'graphql/queries/term_articles.graphql.dart';

class SatniGraphQLService implements SatniServiceInterface {
  SatniGraphQLService({required String uri}) : _client = getClient(uri: uri);

  late Options$Query$AllLemmas currentStemOptions;
  late QueryResult<Query$AllLemmas> previousStemResult;

  final GraphQLClient _client;

  @override
  Future<List<Article>> getArticles(
    lookupString,
    srcLangs,
    targetLangs,
    wantedDicts,
  ) async {
    final dicts =
        await getDicts(lookupString, srcLangs, targetLangs, wantedDicts);
    final terms = await getTerms(lookupString, srcLangs, targetLangs);
    final dictArticles = dicts.map((de) => Article.dict(de));
    final a = terms.fold(<String, dynamic>{}, (
      previousValue,
      element,
    ) {
      final name = element.name;
      if (!previousValue.containsKey(name)) {
        previousValue[name] = <Concept>[];
      }
      previousValue[name].add(element);
      return previousValue;
    });

    final termArticles = a.entries
        .map((e) => MultiLangConcept(
              name: e.key,
              concepts: e.value,
            ))
        .map((mlc) => Article.term(mlc));

    return [...termArticles, ...dictArticles];
  }

  Future<List<DictEntry>> getDicts(
    lookupString,
    srcLangs,
    targetLangs,
    wantedDicts,
  ) async {
    final result = await _client.query$DictArticles(
      Options$Query$DictArticles(
        variables: Variables$Query$DictArticles(
          lemma: lookupString,
          srcLangs: srcLangs,
          targetLangs: targetLangs,
          wantedDicts: wantedDicts,
        ),
      ),
    );
    final parsedData = result.parsedData!.dictEntryList!
        .map((graphqlDictEntry) =>
            DictEntry.fromJson(graphqlDictEntry!.toJson()))
        .toList();

    return parsedData;
  }

  Future<List<Concept>> getTerms(
    lookupString,
    srcLangs,
    targetLangs,
  ) async {
    final result = await _client.query$TermArticles(
      Options$Query$TermArticles(
        variables: Variables$Query$TermArticles(
          lemma: lookupString,
          srcLangs: srcLangs,
          targetLangs: targetLangs,
        ),
      ),
    );

    final parsedData = result.parsedData!.conceptList!
        .map((conceptEntry) => Concept.fromJson(conceptEntry!.toJson()))
        .toList();

    return parsedData;
  }

  Future<GeneratorResults> getGenerated(
    String origform,
    String language,
    List<String> wantedParadigms,
  ) async {
    final result = await _client.query$Generated(Options$Query$Generated(
        variables: Variables$Query$Generated(
            origform: origform,
            language: language,
            paradigmTemplates: wantedParadigms)));

    final parsed = result.parsedData;
    final json = parsed?.toJson() ?? {'generated': []};

    return GeneratorResults.fromJson(json);
  }

  Future<Query$Lemmatised?> getLemmatised(
    String lookupString,
  ) async {
    final result = await _client.query$Lemmatised(Options$Query$Lemmatised(
        variables: Variables$Query$Lemmatised(lookupString: lookupString)));

    return result.parsedData;
  }

  Stems toStems(QueryResult<Query$AllLemmas> result) {
    previousStemResult = result;
    final parsed = result.parsedData;
    final s = parsed?.stemList?.edges
            .map((queryStem) => Stem(
                stem: queryStem!.node!.stem,
                searchStem: queryStem.node!.searchStem,
                srclang: queryStem.node!.srclang,
                targetlangs:
                    queryStem.node!.targetlangs!.map((e) => e!).toList(),
                dicts: queryStem.node!.dicts!.edges
                    .map((queryStemHits) =>
                        StemHits.fromJson(queryStemHits!.node!.toJson()))
                    .toList()))
            .toList() ??
        [];
    final h = parsed?.stemList?.pageInfo.hasNextPage ?? false;
    final t = parsed?.stemList?.totalCount ?? 0;
    return Stems(
      stemList: s,
      hasNextPage: h,
      totalCount: t,
    );
  }

  @override
  Future<Stems> getStems(
    String searchText,
    String searchMode,
    List<String> wantedSrcLangs,
    List<String> wantedTargetLangs,
    List<String> wantedDicts,
  ) async {
    currentStemOptions = Options$Query$AllLemmas(
        variables: Variables$Query$AllLemmas(
            inputValue: searchText,
            searchMode: searchMode,
            srcLangs: wantedSrcLangs,
            targetLangs: wantedTargetLangs,
            wantedDicts: wantedDicts));
    final result = await _client.query$AllLemmas(currentStemOptions);
    return toStems(result);
  }

  Future<Stems> fetchMoreStems() async {
    final endCursor =
        previousStemResult.parsedData!.stemList!.pageInfo.endCursor;
    print('fetching more stems in satnigraphqlservice $endCursor');
    final result = await _client.fetchMore(
        FetchMoreOptions.partial(
          updateQuery: (existingStems, newStems) => {
            'stemList': {
              'pageInfo': newStems!['stemList']['pageInfo'],
              'edges': [
                ...existingStems!['stemList']['edges'],
                ...newStems['stemList']['edges'],
              ],
              'totalCount': newStems['stemList']['totalCount']
            }
          },
          variables: {'after': endCursor},
        ),
        originalOptions: currentStemOptions,
        previousResult: previousStemResult);

    return toStems(result);
  }
}
