// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/graphql_api.dart';

class ExampleGroup extends StatelessWidget {
  const ExampleGroup(
    this.exampleGroup, {
    Key? key,
  }) : super(key: key);

  final DictArticles$Query$DictEntryType$TranslationGroupType$ExampleGroupType
      exampleGroup;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(left: 8.0),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 4,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
              ),
              child: Text(exampleGroup.example)),
          Container(
            padding: const EdgeInsets.only(left: 8.0),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 4,
                  color: Theme.of(context).dividerColor,
                ),
              ),
            ),
            child: Text(
              exampleGroup.translation,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
