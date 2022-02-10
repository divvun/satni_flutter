import 'package:enough_platform_widgets/platform.dart';
import 'package:flutter/widgets.dart';
import '../articles.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage(this.lemma, Key? key) : super(key: key);

  final String lemma;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text('Lookup page: $lemma'),
      ),
      body: Center(
        child: ArticlesView(lemma: lemma),
      ),
    );
  }
}
