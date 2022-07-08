// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/src/filter/index.dart';

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
