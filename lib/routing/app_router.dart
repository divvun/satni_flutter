// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:satni/articles/index.dart';
import 'package:satni/search/index.dart';

final goRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SearchPage(),
  ),
  GoRoute(
      path: '/articles/:lemma',
      builder: (context, state) =>
          ArticlesPage(state.params['lemma']!, Key(state.params['lemma']!)))
]);
