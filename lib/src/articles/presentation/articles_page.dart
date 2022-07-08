// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
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
      body: Center(
        child: ArticlesView(lemma: lemma),
      ),
    );
  }
}
