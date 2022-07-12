// Package imports:
import 'package:graphql/client.dart';

// Project imports:
import 'package:satni_graphql_service/src/graphql/graphql_provider.dart';
import 'package:satni_graphql_service/src/graphql/queries/all_lemmas.graphql.dart';
import 'graphql/queries/dict_articles.graphql.dart';
import 'graphql/queries/generated.graphql.dart';
import 'graphql/queries/lemmatised.graphql.dart';
import 'graphql/queries/term_articles.graphql.dart';

class SatniGraphQLService {
  SatniGraphQLService({required String uri}) : _client = getClient(uri: uri);

  final GraphQLClient _client;
  late QueryResult<Query$AllLemmas> previousStemResult;
  late Options$Query$AllLemmas currentStemOptions;

  Future<Query$DictArticles?> getDicts(
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
    final parsedData = result.parsedData;

    return parsedData;
  }

  Future<Query$TermArticles?> getTerms(
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

    final parsedData = result.parsedData;

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
    return result.parsedData;
  }

  Future<Query$AllLemmas?> fetchMoreStems(
    String endCursor,
  ) async {
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
    return result.parsedData;
  }
}