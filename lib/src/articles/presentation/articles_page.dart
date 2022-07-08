// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/src/common_widgets/index.dart';
import 'package:satni/src/constants/index.dart';
import '../index.dart';

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
