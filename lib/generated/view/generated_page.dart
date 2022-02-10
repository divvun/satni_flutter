import 'package:enough_platform_widgets/platform.dart';
import 'package:flutter/widgets.dart';
import '../generated.dart';

class GeneratedPage extends StatelessWidget {
  const GeneratedPage(this.arguments, Key? key) : super(key: key);

  final Arguments arguments;

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text('Generated page: $arguments'),
      ),
      body: Center(
        child: GeneratedView(arguments),
      ),
    );
  }
}
