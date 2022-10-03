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

class SatniGraphQLService {
  SatniGraphQLService({required String uri}) : _client = getClient(uri: uri);

  late Options$Query$AllLemmas currentStemOptions;
  late QueryResult<Query$AllLemmas> previousStemResult;

  final GraphQLClient _client;

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

  Future<Query$Generated?> getGenerated(
    String origform,
    String language,
    List<String> wantedParadigms,
  ) async {
    final result = await _client.query$Generated(Options$Query$Generated(
        variables: Variables$Query$Generated(
            origform: origform,
            language: language,
            paradigmTemplates: wantedParadigms)));

    return result.parsedData;
  }

  Future<Query$Lemmatised?> getLemmatised(
    String lookupString,
  ) async {
    final result = await _client.query$Lemmatised(Options$Query$Lemmatised(
        variables: Variables$Query$Lemmatised(lookupString: lookupString)));

    return result.parsedData;
  }

  Future<Query$AllLemmas?> getStems(
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
    previousStemResult = result;
    final parsed = result.parsedData ??
        Query$AllLemmas.fromJson({
          'stemList': {'totalCount': 0, 'edges': []}
        });
    return parsed;
  }

  Future<Query$AllLemmas?> fetchMoreStems(
    String endCursor,
  ) async {
    print('fetching more stems in satnigraphqlservice');
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

    previousStemResult = result;
    return result.parsedData;
  }
}
