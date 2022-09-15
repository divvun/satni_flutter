import 'package:freezed_annotation/freezed_annotation.dart';

import 'lemma.dart';
import 'translation_group.dart';

part 'dict_entry.freezed.dart';
part 'dict_entry.g.dart';

@freezed
class DictEntry with _$DictEntry {
  const factory DictEntry({
    required String dictName,
    required String srcLang,
    required String targetLang,
    required List<Lemma> lemmas,
    required List<TranslationGroup> translationGroups,
  }) = _DictEntry;

  factory DictEntry.fromJson(Map<String, dynamic> json) =>
      _$DictEntryFromJson(json);
}

final toImport = {
  '__typename': 'Query',
  'dictEntryList': [
    {
      '__typename': 'DictEntryType',
      'dictName': 'sammallahtismefin',
      'srcLang': 'sme',
      'targetLang': 'fin',
      'translationGroups': [
        {
          '__typename': 'TranslationGroupType',
          'translationLemmas': {
            '__typename': 'LemmaTypeConnection',
            'edges': [
              {
                '__typename': 'LemmaTypeEdge',
                'node': {
                  '__typename': 'LemmaType',
                  'lemma': 'porohärkä',
                  'presentationLemma': 'porohärkä',
                  'language': 'fin',
                  'pos': 'N'
                }
              },
              {
                '__typename': 'LemmaTypeEdge',
                'node': {
                  '__typename': 'LemmaType',
                  'lemma': 'härkä',
                  'presentationLemma': 'härkä',
                  'language': 'fin',
                  'pos': 'N'
                }
              }
            ]
          },
          'exampleGroups': []
        }
      ],
      'lookupLemmas': {
        '__typename': 'LemmaTypeConnection',
        'edges': [
          {
            '__typename': 'LemmaTypeEdge',
            'node': {
              '__typename': 'LemmaType',
              'lemma': 'heargi',
              'presentationLemma': 'heargi',
              'language': 'sme',
              'pos': 'N',
              'spuriousAttributes': {
                '__typename': 'SpuriousAttributeTypeConnection',
                'edges': []
              }
            }
          }
        ]
      }
    },
    {
      '__typename': 'DictEntryType',
      'dictName': 'gtsmenob',
      'srcLang': 'sme',
      'targetLang': 'nob',
      'translationGroups': [
        {
          '__typename': 'TranslationGroupType',
          'translationLemmas': {
            '__typename': 'LemmaTypeConnection',
            'edges': [
              {
                '__typename': 'LemmaTypeEdge',
                'node': {
                  '__typename': 'LemmaType',
                  'lemma': 'kjørerein',
                  'presentationLemma': 'kjørerein',
                  'language': 'nob',
                  'pos': 'N'
                }
              }
            ]
          },
          'exampleGroups': []
        }
      ],
      'lookupLemmas': {
        '__typename': 'LemmaTypeConnection',
        'edges': [
          {
            '__typename': 'LemmaTypeEdge',
            'node': {
              '__typename': 'LemmaType',
              'lemma': 'heargi',
              'presentationLemma': 'heargi',
              'language': 'sme',
              'pos': 'N',
              'spuriousAttributes': {
                '__typename': 'SpuriousAttributeTypeConnection',
                'edges': []
              }
            }
          }
        ]
      }
    },
    {
      '__typename': 'DictEntryType',
      'dictName': 'gtsmefin',
      'srcLang': 'sme',
      'targetLang': 'fin',
      'translationGroups': [
        {
          '__typename': 'TranslationGroupType',
          'translationLemmas': {
            '__typename': 'LemmaTypeConnection',
            'edges': [
              {
                '__typename': 'LemmaTypeEdge',
                'node': {
                  '__typename': 'LemmaType',
                  'lemma': 'porohärkä',
                  'presentationLemma': 'porohärkä',
                  'language': 'fin',
                  'pos': 'N'
                }
              },
              {
                '__typename': 'LemmaTypeEdge',
                'node': {
                  '__typename': 'LemmaType',
                  'lemma': 'ajoporo',
                  'presentationLemma': 'ajoporo',
                  'language': 'fin',
                  'pos': 'N'
                }
              }
            ]
          },
          'exampleGroups': []
        }
      ],
      'lookupLemmas': {
        '__typename': 'LemmaTypeConnection',
        'edges': [
          {
            '__typename': 'LemmaTypeEdge',
            'node': {
              '__typename': 'LemmaType',
              'lemma': 'heargi',
              'presentationLemma': 'heargi',
              'language': 'sme',
              'pos': 'N',
              'spuriousAttributes': {
                '__typename': 'SpuriousAttributeTypeConnection',
                'edges': []
              }
            }
          }
        ]
      }
    },
    {
      '__typename': 'DictEntryType',
      'dictName': 'gtsmesmn',
      'srcLang': 'sme',
      'targetLang': 'smn',
      'translationGroups': [
        {
          '__typename': 'TranslationGroupType',
          'translationLemmas': {
            '__typename': 'LemmaTypeConnection',
            'edges': [
              {
                '__typename': 'LemmaTypeEdge',
                'node': {
                  '__typename': 'LemmaType',
                  'lemma': 'ergi',
                  'presentationLemma': 'ergi',
                  'language': 'smn',
                  'pos': 'N'
                }
              }
            ]
          },
          'exampleGroups': []
        }
      ],
      'lookupLemmas': {
        '__typename': 'LemmaTypeConnection',
        'edges': [
          {
            '__typename': 'LemmaTypeEdge',
            'node': {
              '__typename': 'LemmaType',
              'lemma': 'heargi',
              'presentationLemma': 'heargi',
              'language': 'sme',
              'pos': 'N',
              'spuriousAttributes': {
                '__typename': 'SpuriousAttributeTypeConnection',
                'edges': []
              }
            }
          }
        ]
      }
    }
  ]
};
