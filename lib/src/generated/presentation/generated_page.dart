// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/src/common_widgets/index.dart';
import 'package:satni/src/constants/index.dart';
import 'package:satni/src/generated/index.dart';

class GeneratedPage extends StatelessWidget {
  const GeneratedPage(this.arguments, Key? key) : super(key: key);

  final Arguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generated page: $arguments'),
      ),
      body: ResponsiveCenter(
        padding: const EdgeInsets.all(Sizes.p16),
        child: GeneratedView(arguments),
      ),
    );
  }
}
