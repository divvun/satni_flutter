// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import '../../graphql/graphql_provider.dart';
import '../../graphql/queries/dict_articles.graphql.dart';

class DictFetcherRepository {
  const DictFetcherRepository(this._client);

  final GraphQLClient _client;

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
}

final dictFetcherRepositoryProvider =
    Provider<DictFetcherRepository>((ref) => DictFetcherRepository(client));
