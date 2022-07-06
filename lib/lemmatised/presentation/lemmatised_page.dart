// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/lemmatised/index.dart';

class LemmatisedPage extends StatelessWidget {
  const LemmatisedPage(this.lookupString, Key? key) : super(key: key);

  final String lookupString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lemmatised page: $lookupString'),
      ),
      body: Center(
        child: LemmatisedView(lookupString),
      ),
    );
  }
}
