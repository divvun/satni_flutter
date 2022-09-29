// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import '../../graphql/graphql_provider.dart';
import '../../graphql/queries/lemmatised.graphql.dart';

class LemmatisedRepository {
  const LemmatisedRepository(this._client);

  final GraphQLClient _client;

  Future<Query$Lemmatised?> getLemmatised(String lookupString) async {
    final result = await _client.query$Lemmatised(Options$Query$Lemmatised(
        variables: Variables$Query$Lemmatised(lookupString: lookupString)));

    return result.parsedData;
  }
}

final lemmatisedRepositoryProvider =
    Provider<LemmatisedRepository>((ref) => LemmatisedRepository(client));
