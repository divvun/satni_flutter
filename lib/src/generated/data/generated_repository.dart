// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import '../../graphql/graphql_provider.dart';
import '../../graphql/queries/generated.graphql.dart';

class GeneratedRepository {
  const GeneratedRepository(this._client);

  final GraphQLClient _client;

  Future<Query$Generated?> getGenerated(
      String origform, String language, List<String> wantedParadigms) async {
    final result = await _client.query$Generated(Options$Query$Generated(
        variables: Variables$Query$Generated(
            origform: origform,
            language: language,
            paradigmTemplates: wantedParadigms)));

    return result.parsedData;
  }
}

final generatedRepositoryProvider =
    Provider<GeneratedRepository>((ref) => GeneratedRepository(client));
