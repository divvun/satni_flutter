// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FakeFilterRepository {
  List<String> getAvailableLangs() => [
        'eng',
        'fin',
        'lat',
        'nno',
        'nob',
        'sma',
        'sme',
        'smj',
        'smn',
        'sms',
        'swe',
      ];

  List<Map<String, String>> getAvailableDicts() => [
        {'name': 'termwiki'},
        {'name': 'gtsmenob', 'src': 'sme', 'target': 'nob'},
        {'name': 'gtnobsme', 'src': 'nob', 'target': 'sme'},
        {'name': 'gtnobsma', 'src': 'nob', 'target': 'sma'},
        {'name': 'gtsmanob', 'src': 'sma', 'target': 'nob'},
        {'name': 'gtsmefin', 'src': 'sme', 'target': 'fin'},
        {'name': 'gtfinsme', 'src': 'fin', 'target': 'sme'},
        {'name': 'gtsmesmn', 'src': 'sme', 'target': 'smn'},
        {'name': 'gtsmnsme', 'src': 'smn', 'target': 'sme'},
        {'name': 'gtfinsmn', 'src': 'fin', 'target': 'smn'},
        {'name': 'gtsmnfin', 'src': 'smn', 'target': 'fin'},
        {'name': 'gtfinnob', 'src': 'fin', 'target': 'nob'},
        {'name': 'sammallahtismefin', 'src': 'sme', 'target': 'fin'},
        {'name': 'sammallahtifinsme', 'src': 'fin', 'target': 'sme'},
      ];
}

final filterRepositoryProvider = Provider<FakeFilterRepository>((ref) {
  return FakeFilterRepository();
});
