// Package imports:
import 'package:xml/xml.dart';

Map<String, String> makeSpuriousAttributes(XmlElement lemma) {
  const excludes = ['pos', 'dialect', 'country'];
  return {
    for (final attribute in lemma.attributes
        .where((p0) => !excludes.contains(p0.name.toString())))
      attribute.name.toString(): attribute.value.toString()
  };
}

Map<String, dynamic> makeLemma(XmlElement lemma, String lang) {
  return {
    'lemma': lemma.text,
    'presentation_lemma': lemma.text,
    'language': lang,
    'pos': lemma.getAttribute('pos'),
    'dialect': lemma.getAttribute('dialect'),
    'country': lemma.getAttribute('country'),
    'spurious_attributes': makeSpuriousAttributes(lemma)
  };
}

Map<String, String> makeExample(XmlElement exampleGroup) {
  return {
    for (final child in exampleGroup.childElements)
      child.name.toString() == 'x' ? 'example' : 'translation':
          child.text.toString()
  };
}

Map<String, String> makeRestriction(XmlElement translationGroup) {
  final restriction = translationGroup.findElements('re');
  if (restriction.isNotEmpty) {
    return {
      'restriction': restriction.first.text,
      'attributes': restriction.first.attributes.toString()
    };
  }

  final tElements = translationGroup.findElements('t');

  if (tElements.isNotEmpty) {
    final hasReg =
        tElements.any((element) => element.getAttribute('reg') != null);
    if (hasReg) {
      final tWithReg = tElements
          .firstWhere((element) => element.getAttribute('reg') != null);
      return {
        'restriction': tWithReg.getAttribute('reg').toString(),
        'attributes': ''
      };
    }
  }

  return {};
}

Map<String, dynamic> makeTranslationGroup(
    XmlElement translationGroupElement, String targetLang) {
  // TODO: extract xml:lang, get rid of targetLang argument
  return {
    'translationLemmas': translationGroupElement
        .findAllElements('t')
        .map((lemmaElement) => makeLemma(lemmaElement, targetLang))
        .toList(),
    'restriction': makeRestriction(translationGroupElement),
    'exampleGroups': translationGroupElement
        .findAllElements('xg')
        .map((exampleGroup) => makeExample(exampleGroup))
        .toList(),
  };
}

Map<String, dynamic> makeDictEntry(XmlElement dictElement, String dictPrefix,
    String srcLang, String targetLang) {
  return {
    'dictName': '$dictPrefix$srcLang$targetLang',
    'srcLang': srcLang,
    'targetLang': targetLang,
    'lookupLemmas': dictElement
        .findAllElements('l')
        .map((lemmaElement) => makeLemma(lemmaElement, srcLang))
        .toList(),
    'translationGroups': dictElement
        .findAllElements('tg')
        .map((translationGroupElement) =>
            makeTranslationGroup(translationGroupElement, targetLang))
        .toList(),
  };
}
