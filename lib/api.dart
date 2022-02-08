import 'package:satni_flutter/graphql_api.dart';
import 'package:satni_flutter/graphql_provider.dart';
import 'package:graphql/client.dart';

Future<Map<String, List<TermArticles$Query$ConceptType>>> getTerms(
    lookupString, srcLangs, targetLangs) async {
  final result = await client.query(
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

  final Map<String, List<TermArticles$Query$ConceptType>> orderedTermArticles =
      {};
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

Future<DictArticles$Query> getDicts(
    lookupString, srcLangs, targetLangs, wantedDicts) async {
  final result = await client.query(
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

Future<AllLemmas$Query> getStems(
    searchText, searchMode, srcLangs, targetLangs, wantedDicts) async {
  print('$searchText, $searchMode, $srcLangs, $targetLangs, $wantedDicts');
  final result = await client.query(
    QueryOptions(
      document: ALL_LEMMAS_QUERY_DOCUMENT,
      variables: AllLemmasArguments(
        inputValue: searchText,
        searchMode: searchMode.toString(),
        srcLangs: srcLangs,
        targetLangs: targetLangs,
        wantedDicts: wantedDicts,
      ).toJson(),
    ),
  );

  return AllLemmas$Query.fromJson(result.data ?? {'stemList': []});
}

Future<Generated$Query> getGenerated(origform, language, partOfSpeech) async {
  final result = await client.query(
    QueryOptions(
      document: GENERATED_QUERY_DOCUMENT,
      variables: GeneratedArguments(
              origform: origform,
              language: language,
              partOfSpeech: partOfSpeech)
          .toJson(),
    ),
  );

  return Generated$Query.fromJson(result.data ?? {'generated': []});
}
