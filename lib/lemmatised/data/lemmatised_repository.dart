// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql/client.dart';

// Project imports:
import 'package:satni/graphql/index.dart';

class LemmatisedRepository {
  const LemmatisedRepository(this._client);

  final GraphQLClient _client;

  Future<Lemmatised$Query> getLemmatised(String lookupString) async {
    final result = await _client.query(
      QueryOptions(
        document: LEMMATISED_QUERY_DOCUMENT,
        variables: LemmatisedArguments(lookupString: lookupString).toJson(),
      ),
    );

    return Lemmatised$Query.fromJson(result.data ?? {'lemmatised': []});
  }
}

final lemmatisedRepositoryProvider =
    Provider<LemmatisedRepository>((ref) => LemmatisedRepository(client));
