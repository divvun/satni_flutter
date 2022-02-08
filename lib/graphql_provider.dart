import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

final client = getClient(
  uri: 'https://satni.uit.no/newsatni/',
);

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

ValueNotifier<GraphQLClient> clientFor({
  required String uri,
  String? subscriptionUri,
}) {
  Link link = HttpLink(uri);

  return ValueNotifier<GraphQLClient>(
    GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: link,
    ),
  );
}
