// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../common_widgets/responsive_center.dart';
import '../../constants/app_sizes.dart';
import 'widgets/articles_view.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage(this.lemma, Key? key) : super(key: key);

  final String lemma;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lookup page: $lemma'),
      ),
      body: ResponsiveCenter(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.p16,
        ),
        child: ArticlesView(lemma: lemma),
      ),
    );
  }
}
