// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:satni/src/routing/index.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'sátni.org',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: divvunRouter.routeInformationParser,
      routerDelegate: divvunRouter.routerDelegate,
    );
  }
}
