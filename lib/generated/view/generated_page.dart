// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../generated.dart';

class GeneratedPage extends StatelessWidget {
  const GeneratedPage(this.arguments, Key? key) : super(key: key);

  final Arguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generated page: $arguments'),
      ),
      body: Center(
        child: GeneratedView(arguments),
      ),
    );
  }
}
