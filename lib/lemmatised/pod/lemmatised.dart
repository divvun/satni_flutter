import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:satni_flutter/api.dart';
import 'package:satni_flutter/graphql_api.dart';

final lemmatisedProvider =
    FutureProvider.family<Lemmatised$Query, String>((ref, lookupString) async {
  final lemmatised = await getLemmatised(lookupString);
  return lemmatised;
});
