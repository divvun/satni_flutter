import 'dart:io';

import 'package:satni_xml_backend/src/models/dict_file.dart';
import 'package:satni_xml_backend/src/xml_dictentry.dart';
import 'package:xml/xml.dart';
import 'package:path/path.dart' as p;

import 'models/word_file.dart';

DictFile makeDict(FileSystemEntity f) {
  final parts = p.split(f.path);
  final dictPos = parts.indexOf('dict');
  final vendor = parts[dictPos + 1];
  final dictId = parts[dictPos + 2];

  final d = DictFile(
    vendor: vendor,
    id: dictId,
    srcLang: dictId.substring(0, 3),
    targetLang: dictId.substring(3),
    filePath: f.path,
    xmlDocument: XmlDocument.parse(File(f.path).readAsStringSync()),
  );

  return d;
}

Iterable<Map<String, dynamic>> makeDictEntries(
  DictFile df,
  String searchWord,
) =>
    df.xmlDocument
        .findAllElements('l')
        .where((element) => element.text == searchWord)
        .map((e) => makeDictEntry(
              e.parent!.parent as XmlElement,
              df.vendor,
              df.srcLang,
              df.targetLang,
            ));

void main(List<String> arguments) async {
  final xmlFiles = await Directory('../../assets')
      .list(recursive: true, followLinks: true)
      .where((event) =>
          event is File &&
          event.path.contains('/src/') &&
          event.path.endsWith('.xml'))
      .map((event) => makeDict(event))
      .toList();

  final lemmaNameMap =
      xmlFiles.fold(<String, Set<String>>{}, (previous, element) {
    for (final lemma in element.xmlDocument.findAllElements('l')) {
      previous.putIfAbsent(lemma.text, () => <String>{}).add(element.filePath);
    }
    return previous;
  });

  final searchWord = 'sjisjnjeli';

  final hitFiles = lemmaNameMap[searchWord]!;

  final dictEntryJsonList = xmlFiles
      .where((DictFile df) => hitFiles.contains(df.filePath))
      .fold([],
          (previous, df) => [...previous, ...makeDictEntries(df, searchWord)]);

  print(dictEntryJsonList);
}
