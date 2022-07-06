// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import 'package:satni/graphql_api.dart';
import 'package:satni/graphql_provider.dart';

class GeneratedRepository {
  const GeneratedRepository(this._client);

  final GraphQLClient _client;

  Future<Generated$Query> getGenerated(
      origform, language, wantedParadigms) async {
    final result = await _client.query(
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
}

final generatedRepositoryProvider =
    Provider<GeneratedRepository>((ref) => GeneratedRepository(client));
