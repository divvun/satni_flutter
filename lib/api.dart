// Package imports:
import 'package:graphql/client.dart';

// Project imports:
import 'package:satni/graphql_api.dart';
import 'package:satni/graphql_provider.dart';

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

Future<Generated$Query> getGenerated(
    origform, language, wantedParadigms) async {
  final result = await client.query(
    QueryOptions(
      document: GENERATED_QUERY_DOCUMENT,
      variables: GeneratedArguments(
              origform: origform,
              language: language,
              paradigmTemplates: wantedParadigms)
          .toJson(),
    ),
  );

  return Generated$Query.fromJson(result.data ?? {'generated': []});
}

Future<Lemmatised$Query> getLemmatised(String lookupString) async {
  final result = await client.query(
    QueryOptions(
      document: LEMMATISED_QUERY_DOCUMENT,
      variables: LemmatisedArguments(lookupString: lookupString).toJson(),
    ),
  );

  return Lemmatised$Query.fromJson(result.data ?? {'lemmatised': []});
}
