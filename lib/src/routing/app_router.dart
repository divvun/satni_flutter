// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import '../articles/presentation/articles_page.dart';
import '../filter/presentation/filter_page.dart';
import '../generated/domain/generated.dart';
import '../generated/domain/paradigm_templates.dart';
import '../generated/presentation/generated_page.dart';
import '../search/presentation/search_page.dart';

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
    builder: (context, state) => const FilterPage(),
  ),
]);
