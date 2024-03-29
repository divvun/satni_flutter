// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:satni_graphql_service/satni_graphql_service.dart';

void main() {
  group('Convert graphql models to interface models', () {
    // final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('SpuriousAttribute', () {
      expect(
          SpuriousAttribute.fromJson(
            Query$DictArticles$dictEntryList$lookupLemmas$spuriousAttributes
                .fromJson({
              "__typename": "SpuriousAttributeType",
              "name": "nr",
              "value": "Pl"
            }).toJson(),
          ),
          SpuriousAttribute(name: 'nr', value: 'Pl'));
    });

    test('Lemma', () {
      expect(
          Lemma.fromJson(
            Query$DictArticles$dictEntryList$lookupLemmas.fromJson({
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
            }).toJson(),
          ),
          Lemma(
              lemma: "boahkut",
              presentationLemma: "boahkut",
              pos: "N",
              language: 'sme',
              spuriousAttributes: [
                SpuriousAttribute(name: "nr", value: "Pl")
              ]));
    });

    test('DictEntry', () {
      expect(
          DictEntry.fromJson(
            Query$DictArticles$dictEntryList.fromJson({
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
            }).toJson(),
          ),
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

    test('Term', () {
      expect(
          Term.fromJson(
            Query$TermArticles$conceptList$terms.fromJson({
              "__typename": "TermType",
              "note": null,
              "sanctioned": true,
              "source": null,
              "status": null,
              "expression": {
                "__typename": "LemmaType",
                "lemma": "heargi",
                "presentationLemma": "heargi",
                "language": "sme",
                "pos": "N"
              }
            }).toJson(),
          ),
          Term(
              sanctioned: true,
              expression: Lemma(
                  lemma: 'heargi',
                  presentationLemma: 'heargi',
                  pos: 'N',
                  language: 'sme')));
    });

    test('Concept', () {
      final a = Query$TermArticles$conceptList.fromJson({
        "__typename": "ConceptType",
        "name": "Boazodoallu:heargi",
        "explanation": null,
        "definition": null,
        "terms": [
          {
            "__typename": "TermType",
            "note": null,
            "sanctioned": true,
            "source": null,
            "status": null,
            "expression": {
              "__typename": "LemmaType",
              "lemma": "ajoporo",
              "presentationLemma": "ajoporo",
              "language": "fin",
              "pos": "N"
            }
          },
          {
            "__typename": "TermType",
            "note": null,
            "sanctioned": true,
            "source": null,
            "status": null,
            "expression": {
              "__typename": "LemmaType",
              "lemma": "härkä",
              "presentationLemma": "härkä",
              "language": "fin",
              "pos": "N"
            }
          }
        ]
      }).toJson();
      expect(
          Concept.fromJson(a),
          Concept(
            name: 'Boazodoallu:heargi',
            terms: [
              Term(
                  sanctioned: true,
                  expression: Lemma(
                      lemma: 'ajoporo',
                      presentationLemma: 'ajoporo',
                      pos: 'N',
                      language: 'fin')),
              Term(
                  sanctioned: true,
                  expression: Lemma(
                      lemma: 'härkä',
                      presentationLemma: 'härkä',
                      pos: 'N',
                      language: 'fin'))
            ],
          ));
    });
  });
}
