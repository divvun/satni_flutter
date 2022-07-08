// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/src/articles/index.dart';
import 'package:satni/src/graphql/index.dart';

class DictArticle extends StatelessWidget {
  const DictArticle(this.dictEntry, {Key? key}) : super(key: key);

  final DictArticles$Query$DictEntryType dictEntry;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              dictEntry.dictName,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Divider(),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DictArticleContent(dictEntry))
        ],
      ),
    );
  }
}
