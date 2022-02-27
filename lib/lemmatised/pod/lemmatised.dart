// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:satni/api.dart';
import 'package:satni/graphql_api.dart';

final lemmatisedProvider =
    FutureProvider.family<Lemmatised$Query, String>((ref, lookupString) async {
  final lemmatised = await getLemmatised(lookupString);
  return lemmatised;
});
