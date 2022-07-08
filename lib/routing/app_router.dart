// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:satni/articles/index.dart';
import 'package:satni/filter/index.dart';
import 'package:satni/generated/index.dart';
import 'package:satni/search/index.dart';

enum DivvunRoutes { home, articles, paradigm, filtering }

final divvunRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: DivvunRoutes.home.name,
    builder: (context, state) => const SearchPage(),
  ),
  GoRoute(
    path: '/articles/:lemma',
    name: DivvunRoutes.articles.name,
    builder: (context, state) => ArticlesPage(
      state.params['lemma']!,
      state.pageKey,
    ),
  ),
  GoRoute(
    path: '/paradigm/:lemma',
    name: DivvunRoutes.paradigm.name,
    builder: (context, state) => GeneratedPage(
      Arguments(
        '${state.params['lemma']}',
        '${state.queryParams['lang']}',
        '${state.queryParams['pos']}',
        'Default',
        wantedParadigms(
          '${state.queryParams['lang']}',
          '${state.queryParams['pos']}',
          'Default',
        ),
      ),
      state.pageKey,
    ),
  ),
  GoRoute(
    path: '/filtering',
    name: DivvunRoutes.filtering.name,
    builder: (context, state) => FilterPage(),
  ),
]);
