import 'package:flutter/material.dart';
import '../lemmatised.dart';

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
