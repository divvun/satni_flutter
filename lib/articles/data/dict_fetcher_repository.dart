// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import 'package:satni/graphql_api.graphql.dart';
import 'package:satni/graphql_provider.dart';

class DictFetcherRepository {
  const DictFetcherRepository(this._client);

  final GraphQLClient _client;

  Future<DictArticles$Query> getDicts(
      lookupString, srcLangs, targetLangs, wantedDicts) async {
    final result = await _client.query(
      QueryOptions(
        document: DICT_ARTICLES_QUERY_DOCUMENT,
        variables: DictArticlesArguments(
          lemma: lookupString,
          srcLangs: srcLangs,
          targetLangs: targetLangs,
          wantedDicts: wantedDicts,
        ).toJson(),
      ),
    );

    final dictArticles =
        DictArticles$Query.fromJson(result.data ?? {'dictEntryList': []});

    // print('api getDicts ${dictArticles.toString()}');
    return dictArticles;
  }
}

final dictFetcherRepositoryProvider =
    Provider<DictFetcherRepository>((ref) => DictFetcherRepository(client));
