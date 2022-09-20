// Package imports:
import 'package:test/test.dart';
import 'package:xml/xml.dart';

// Project imports:
import 'package:satni_xml_backend/satni_xml_backend.dart';

void main() {
  group('xml2dict', () {
    test('Get spurious attributes', () {
      expect(
          makeSpuriousAttributes(
              XmlDocument.parse('<l pos="N" nr="Pl">boahkut</l>')
                  .findAllElements('l')
                  .first),
          {'nr': 'Pl'});
    });

    test('Get lemma', () {
      expect(
          makeLemma(
              XmlDocument.parse('<l pos="N" nr="Pl">boahkut</l>')
                  .findAllElements('l')
                  .first,
              'sme'),
          {
            'lemma': 'boahkut',
            'presentation_lemma': 'boahkut',
            'language': 'sme',
            'pos': 'N',
            'dialect': null,
            'country': null,
            'spurious_attributes': {'nr': 'Pl'}
          });
    });

    test('Get examples', () {
      expect(makeExample(XmlDocument.parse('''<xg>
          <x>e</x>
          <xt>t</xt>
        </xg>''').findAllElements('xg').first),
          {'example': 'e', 'translation': 't'});
    });

    test('Get restriction from re element', () {
      expect(
          makeRestriction(XmlDocument.parse('<tg><re x="fad">re</re></tg>')
              .findAllElements('tg')
              .first),
          {'restriction': 're', 'attributes': '[x="fad"]'});
    });

    test('Get restriction from t element', () {
      expect(
          makeRestriction(XmlDocument.parse('<tg><t reg="fad">re</t></tg>')
              .findAllElements('tg')
              .first),
          {'restriction': 'fad', 'attributes': ''});
    });

    test('Result of makeRestriction where there are no re', () {
      expect(
          makeRestriction(XmlDocument.parse('<tg><t>re</t></tg>')
              .findAllElements('tg')
              .first),
          {});
    });

    test('Make tg without re', () {
      expect(makeTranslationGroup(XmlDocument.parse('''<tg xml:lang="nob">
        <t pos="N">utvalg</t>
        <t src="fad" pos="N">valgmulighet</t>
      </tg>''').findAllElements('tg').first, 'nob'), {
        'translationLemmas': [
          {
            'lemma': 'utvalg',
            'presentation_lemma': 'utvalg',
            'language': 'nob',
            'pos': 'N',
            'dialect': null,
            'country': null,
            'spurious_attributes': {}
          },
          {
            'lemma': 'valgmulighet',
            'presentation_lemma': 'valgmulighet',
            'language': 'nob',
            'pos': 'N',
            'dialect': null,
            'country': null,
            'spurious_attributes': {'src': 'fad'}
          }
        ],
        'restriction': {},
        'exampleGroups': []
      });
    });

    test('Make tg with re', () {
      expect(makeTranslationGroup(XmlDocument.parse('''<tg xml:lang="nob">
        <re x="fad">som tjener til føde</re>
        <t pos="N">næringsmiddel</t>
      </tg>''').findAllElements('tg').first, 'nob'), {
        'translationLemmas': [
          {
            'lemma': 'næringsmiddel',
            'presentation_lemma': 'næringsmiddel',
            'language': 'nob',
            'pos': 'N',
            'dialect': null,
            'country': null,
            'spurious_attributes': {}
          }
        ],
        'restriction': {
          'restriction': 'som tjener til føde',
          'attributes': '[x="fad"]'
        },
        'exampleGroups': []
      });
    });

    test('Make tg with <t reg>', () {
      expect(makeTranslationGroup(XmlDocument.parse('''<tg xml:lang="nob">
            <t pos="N" type="Prop" sem_type="Plc" reg="Troms">Reinøya</t>
         </tg>''').findAllElements('tg').first, 'nob'), {
        'translationLemmas': [
          {
            'lemma': 'Reinøya',
            'presentation_lemma': 'Reinøya',
            'language': 'nob',
            'pos': 'N',
            'dialect': null,
            'country': null,
            'spurious_attributes': {
              'type': 'Prop',
              'sem_type': 'Plc',
              'reg': 'Troms'
            }
          }
        ],
        'restriction': {'restriction': 'Troms', 'attributes': ''},
        'exampleGroups': []
      });
    });

    test('Make dict element', () {
      expect(makeDictEntry(XmlDocument.parse('''<e>
      <lg>
        <l pos="N">bátnečorru</l>
      </lg>
      <mg>
        <tg xml:lang="nob">
          <re>lat. alveoli</re>
          <t pos="N">tannrygg</t>
          <t type="expl">fremre del av gommen</t>
        </tg>
      </mg>
    </e>''').findAllElements('e').first, 'gt', 'sme', 'nob'), {
        'dictName': 'gtsmenob',
        'srcLang': 'sme',
        'targetLang': 'nob',
        'lookupLemmas': [
          {
            'lemma': 'bátnečorru',
            'presentation_lemma': 'bátnečorru',
            'language': 'sme',
            'pos': 'N',
            'dialect': null,
            'country': null,
            'spurious_attributes': {}
          }
        ],
        'translationGroups': [
          {
            'translationLemmas': [
              {
                'lemma': 'tannrygg',
                'presentation_lemma': 'tannrygg',
                'language': 'nob',
                'pos': 'N',
                'dialect': null,
                'country': null,
                'spurious_attributes': {}
              },
              {
                'lemma': 'fremre del av gommen',
                'presentation_lemma': 'fremre del av gommen',
                'language': 'nob',
                'pos': null,
                'dialect': null,
                'country': null,
                'spurious_attributes': {'type': 'expl'}
              }
            ],
            'restriction': {'restriction': 'lat. alveoli', 'attributes': '[]'},
            'exampleGroups': []
          }
        ]
      });
    });
  });
}
