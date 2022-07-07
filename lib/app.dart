// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:satni/articles/index.dart';
import 'package:satni/search/index.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SearchPage(),
    ),
    GoRoute(
        path: '/articles/:lemma',
        builder: (context, state) =>
            ArticlesPage(state.params['lemma']!, Key(state.params['lemma']!)))
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'sátni.org',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
