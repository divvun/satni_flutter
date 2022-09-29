// Package imports:
import 'package:graphql/client.dart';

GraphQLClient getClient({
  required String uri,
  String? subscriptionUri,
}) {
  Link link = HttpLink(uri);

  return GraphQLClient(
    cache: cache,
    link: link,
  );
}

final cache = GraphQLCache(store: InMemoryStore());
