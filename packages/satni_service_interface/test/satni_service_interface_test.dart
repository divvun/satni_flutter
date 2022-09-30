import 'package:satni_service_interface/satni_service_interface.dart';
import 'package:test/test.dart';

void main() {
  group('Test conversion from the graphql backend to the repo models', () {
    test('SpuriousAttribute', () {
      expect(
          SpuriousAttribute.fromJson({
            "__typename": "SpuriousAttributeType",
            "name": "nr",
            "value": "Pl"
          }),
          SpuriousAttribute(name: 'nr', value: 'Pl'));
    });

    test('Lemma', () {
      expect(
          Lemma.fromJson({
            "__typename": "LemmaType",
            "lemma": "boahkut",
            "presentationLemma": "boahkut",
            "language": "sme",
            "pos": "N",
            "spuriousAttributes": [
              {
                "__typename": "SpuriousAttributeType",
                "name": "nr",
                "value": "Pl"
              }
            ]
          }),
          Lemma(
              lemma: "boahkut",
              presentationLemma: "boahkut",
              pos: "N",
              spuriousAttributes: [
                SpuriousAttribute(name: "nr", value: "Pl")
              ]));
    });
  });

  test('DictEntry', () {
    expect(
        DictEntry.fromJson({
          "__typename": "DictEntryType",
          "dictName": "gtsmenob",
          "srcLang": "sme",
          "targetLang": "nob",
          "lookupLemmas": [
            {
              "__typename": "LemmaType",
              "lemma": "boahkut",
              "presentationLemma": "boahkut",
              "language": "sme",
              "pos": "N",
              "spuriousAttributes": [
                {
                  "__typename": "SpuriousAttributeType",
                  "name": "nr",
                  "value": "Pl"
                }
              ]
            }
          ],
          "translationGroups": [
            {
              "__typename": "TranslationGroupType",
              "translationLemmas": [
                {
                  "__typename": "LemmaType",
                  "lemma": "vaksine",
                  "presentationLemma": "vaksine",
                  "language": "nob",
                  "pos": "N"
                }
              ],
              "exampleGroups": [
                {
                  "__typename": "ExampleGroupType",
                  "example":
                      'Das leat dieđut boahkuheami birra ja makkár oalgeváikkuhusat sáhttet leat boahkuin.',
                  "translation":
                      "Der er det informasjon om vaksineringa og hvilke bivirkninger som kan være av vaksinen."
                }
              ]
            }
          ]
        }),
        DictEntry(
            dictName: 'gtsmenob',
            srcLang: 'sme',
            targetLang: 'nob',
            lookupLemmas: [
              Lemma.fromJson({
                "lemma": "boahkut",
                "presentationLemma": "boahkut",
                "language": "sme",
                "pos": "N",
                "spuriousAttributes": [
                  {"name": "nr", "value": "Pl"}
                ]
              })
            ],
            translationGroups: [
              TranslationGroup.fromJson({
                "translationLemmas": [
                  {
                    "lemma": "vaksine",
                    "presentationLemma": "vaksine",
                    "language": "nob",
                    "pos": "N"
                  }
                ],
                "exampleGroups": [
                  {
                    "example":
                        'Das leat dieđut boahkuheami birra ja makkár oalgeváikkuhusat sáhttet leat boahkuin.',
                    "translation":
                        "Der er det informasjon om vaksineringa og hvilke bivirkninger som kan være av vaksinen."
                  }
                ]
              })
            ]));
  });
}
