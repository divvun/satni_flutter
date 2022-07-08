// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/src/common_widgets/index.dart';
import 'package:satni/src/constants/index.dart';
import 'package:satni/src/search/index.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sátni.org'),
      ),
      body: ResponsiveCenter(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.p16,
        ),
        child: Column(
          children: [
            const FilterStatus(),
            const Searcher(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: const [
                  HitCounter(),
                  Lemmatised(),
                ],
              ),
            ),
            const SearchResults(),
          ],
        ),
      ),
    );
  }
}
