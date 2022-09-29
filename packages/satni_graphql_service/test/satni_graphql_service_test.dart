// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:satni_graphql_service/satni_graphql_service.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
