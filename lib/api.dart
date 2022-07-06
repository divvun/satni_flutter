// Package imports:
import 'package:graphql/client.dart';

// Project imports:
import 'package:satni/graphql_api.dart';
import 'package:satni/graphql_provider.dart';

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
