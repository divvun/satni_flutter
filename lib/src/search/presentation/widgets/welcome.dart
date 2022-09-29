// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../../filter/presentation/choose_dicts.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('Welcome'),
        ChooseDicts(),
      ],
    );
  }
}
