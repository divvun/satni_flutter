// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:satni_graphql_service/satni_graphql_service.dart';

final satniServiceProvider = Provider(
  // (ref) => SatniGraphQLService(uri: 'https://satni.uit.no/newsatni/'),
  (ref) => SatniGraphQLService(uri: 'http://localhost:8000/graphql/'),
);
