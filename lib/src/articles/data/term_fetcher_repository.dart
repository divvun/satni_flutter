// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import 'package:satni/src/graphql/index.dart';

class TermFetcherRepository {
  const TermFetcherRepository(this._client);

  final GraphQLClient _client;

  Future<Map<String, List<TermArticles$Query$ConceptType>>> getTerms(
      lookupString, srcLangs, targetLangs) async {
    final result = await _client.query(
      QueryOptions(
        document: TERM_ARTICLES_QUERY_DOCUMENT,
        variables: TermArticlesArguments(
          lemma: lookupString,
          srcLangs: srcLangs,
          targetLangs: targetLangs,
        ).toJson(),
      ),
    );

    final termArticles =
        TermArticles$Query.fromJson(result.data ?? {'conceptList': []});

    final Map<String, List<TermArticles$Query$ConceptType>>
        orderedTermArticles = {};
    termArticles.conceptList?.forEach((element) {
      final name = element!.name;
      if (!orderedTermArticles.containsKey(name)) {
        orderedTermArticles[name] = [];
      }
      orderedTermArticles[name]!.add(element);
    });

    // print('api getTerms ${orderedTermArticles.toString()}');

    return orderedTermArticles;
  }
}

final termFetcherRepositoryProvider =
    Provider<TermFetcherRepository>((ref) => TermFetcherRepository(client));
