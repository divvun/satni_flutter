// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../common_widgets/responsive_center.dart';
import '../../constants/app_sizes.dart';
import 'widgets/filter_status.dart';
import 'widgets/hit_counter.dart';
import 'widgets/lemmatised.dart';
import 'widgets/search_results.dart';
import 'widgets/searcher.dart';

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
