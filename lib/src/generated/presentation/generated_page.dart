// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../common_widgets/responsive_center.dart';
import '../../constants/app_sizes.dart';
import '../domain/generated.dart';
import 'widgets/generated_view.dart';

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
