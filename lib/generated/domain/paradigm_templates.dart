final Map<String, dynamic> paradigmTemplates = {
  'sma': {
    'A': {
      'Default': {
        'header': ['', 'Pos', 'Comp' 'Sup'],
        'rows': [
          {
            'name': 'Attr',
            'paradigms': [
              '+A+Attr',
              '+A+Der/Comp+A+Attr',
              '+A+Der/Superl+A+Attr'
            ],
          },
          {
            'name': 'Sg/Nom',
            'paradigms': [
              '+A+Sg+Nom',
              '+A+Der/Comp+A+Sg+Nom',
              '+A+Der/Superl+A+Sg+Nom'
            ],
          },
          {
            'name': 'Pl/Nom',
            'paradigms': [
              '+A+Pl+Nom',
              '+A+Der/Comp+A+Pl+Nom',
              '+A+Der/Superl+A+Pl+Nom'
            ],
          },
          {
            'name': 'Sg/Acc',
            'paradigms': [
              '+A+Sg+Acc',
              '+A+Der/Comp+A+Sg+Acc',
              '+A+Der/Superl+A+Sg+Acc'
            ],
          },
          {
            'name': 'Pl/Acc',
            'paradigms': [
              '+A+Pl+Acc',
              '+A+Der/Comp+A+Pl+Acc',
              '+A+Der/Superl+A+Pl+Acc'
            ],
          },
          {
            'name': 'Sg/Gen',
            'paradigms': [
              '+A+Sg+Gen',
              '+A+Der/Comp+A+Sg+Gen',
              '+A+Der/Superl+A+Sg+Gen'
            ],
          },
          {
            'name': 'Pl/Gen',
            'paradigms': [
              '+A+Pl+Gen',
              '+A+Der/Comp+A+Pl+Gen',
              '+A+Der/Superl+A+Pl+Gen'
            ],
          },
          {
            'name': 'Sg/Ill',
            'paradigms': [
              '+A+Sg+Ill',
              '+A+Der/Comp+A+Sg+Ill',
              '+A+Der/Superl+A+Sg+Ill'
            ],
          },
          {
            'name': 'Pl/Ill',
            'paradigms': [
              '+A+Pl+Ill',
              '+A+Der/Comp+A+Pl+Ill',
              '+A+Der/Superl+A+Pl+Ill'
            ],
          },
          {
            'name': 'Sg/Ine',
            'paradigms': [
              '+A+Sg+Ine',
              '+A+Der/Comp+A+Sg+Ine',
              '+A+Der/Superl+A+Sg+Ine'
            ],
          },
          {
            'name': 'Pl/Ine',
            'paradigms': [
              '+A+Pl+Ine',
              '+A+Der/Comp+A+Pl+Ine',
              '+A+Der/Superl+A+Pl+Ine'
            ],
          },
          {
            'name': 'Sg/Ela',
            'paradigms': [
              '+A+Sg+Ela',
              '+A+Der/Comp+A+Sg+Ela',
              '+A+Der/Superl+A+Sg+Ela'
            ],
          },
          {
            'name': 'Pl/Ela',
            'paradigms': [
              '+A+Pl+Ela',
              '+A+Der/Comp+A+Pl+Ela',
              '+A+Der/Superl+A+Pl+Ela'
            ],
          },
          {
            'name': 'Sg/Com',
            'paradigms': [
              '+A+Sg+Com',
              '+A+Der/Comp+A+Sg+Com',
              '+A+Der/Superl+A+Sg+Com'
            ],
          },
          {
            'name': 'Pl/Com',
            'paradigms': [
              '+A+Pl+Com',
              '+A+Der/Comp+A+Pl+Com',
              '+A+Der/Superl+A+Pl+Com'
            ],
          },
          {
            'name': 'Ess',
            'paradigms': ['+A+Ess', '+A+Der/Comp+A+Ess', '+A+Der/Superl+A+Ess'],
          },
        ]
      },
    },
    'N': {
      'Default': {
        'header': ['', 'Sg', 'Pl'],
        'rows': [
          {
            'name': 'Nom',
            'paradigms': ['+N+Sg+Nom', '+N+Pl+Nom'],
          },
          {
            'name': 'Acc',
            'paradigms': ['+N+Sg+Acc', '+N+Pl+Acc'],
          },
          {
            'name': 'Gen',
            'paradigms': ['+N+Sg+Gen', '+N+Pl+Gen'],
          },
          {
            'name': 'Ill',
            'paradigms': ['+N+Sg+Ill', '+N+Pl+Ill'],
          },
          {
            'name': 'Ine',
            'paradigms': ['+N+Sg+Ine', '+N+Pl+Ine'],
          },
          {
            'name': 'Ela',
            'paradigms': ['+N+Sg+Ela', '+N+Pl+Ela'],
          },
          {
            'name': 'Com',
            'paradigms': ['+N+Sg+Com', '+N+Pl+Com'],
          },
          {
            'name': 'Ess',
            'paradigms': ['+N+Ess'],
          },
        ]
      },
    },
    'Num': {
      // 'name': 'numerals'
      // morphology:
      //   pos: Num
      //
      // Prepend '+Num' to the elements of the list
      //
      'Default': [
        '+Sg+Nom',
        '+Sg+Gen',
        '+Sg+Acc',
        '+Sg+Ill',
        '+Sg+Ine',
        '+Sg+Ela',
        '+Sg+Com',
        '+Pl+Nom',
        '+Pl+Gen',
        '+Pl+Acc',
        '+Pl+Ill',
        '+Pl+Ine',
        '+Pl+Ela',
        '+Pl+Com',
        '+Ess',
      ]
    },
    'V': {
      'Default': {
        'header': ['', 'Prs', 'Prt'],
        'rows': [
          {
            'name': 'manne',
            'paradigms': ['+V+Ind+Prs+Sg1', '+V+Ind+Prt+Sg1'],
          },
          {
            'name': 'datne',
            'paradigms': ['+V+Ind+Prs+Sg2', '+V+Ind+Prt+Sg2'],
          },
          {
            'name': 'dïhte',
            'paradigms': ['+V+Ind+Prs+Sg3', '+V+Ind+Prt+Sg3'],
          },
          {
            'name': 'månnoeh',
            'paradigms': ['+V+Ind+Prs+Du1', '+V+Ind+Prt+Du1'],
          },
          {
            'name': 'dotne/dåtnoeh',
            'paradigms': ['+V+Ind+Prs+Du2', '+V+Ind+Prt+Du2'],
          },
          {
            'name': 'dah guaktah',
            'paradigms': ['+V+Ind+Prs+Du3', '+V+Ind+Prt+Du3'],
          },
          {
            'name': 'mij',
            'paradigms': ['+V+Ind+Prs+Pl1', '+V+Ind+Prt+Pl1'],
          },
          {
            'name': 'dijjieh',
            'paradigms': ['+V+Ind+Prs+Pl2', '+V+Ind+Prt+Pl2'],
          },
          {
            'name': 'dah',
            'paradigms': ['+V+Ind+Prs+Pl3', '+V+Ind+Prt+Pl3'],
          },
          {
            'name': 'ij',
            'paradigms': ['+V+ConNeg']
          },
          {
            'name': 'lea',
            'paradigms': ['+V+PrfPrc']
          },
          {
            'name': 'lea',
            'paradigms': ['+V+Ger']
          },
        ]
      }
    },
  },
  'sme': {
    'A': {
      'Default': {
        'header': ['', 'Pos', 'Comp' 'Sup'],
        'rows': [
          {
            'name': 'Attr',
            'paradigms': [
              '+A+Attr',
              '+A+Der/Comp+A+Attr',
              '+A+Der/Superl+A+Attr'
            ],
          },
          {
            'name': 'Sg/Nom',
            'paradigms': [
              '+A+Sg+Nom',
              '+A+Der/Comp+A+Sg+Nom',
              '+A+Der/Superl+A+Sg+Nom'
            ],
          },
          {
            'name': 'Pl/Nom',
            'paradigms': [
              '+A+Pl+Nom',
              '+A+Der/Comp+A+Pl+Nom',
              '+A+Der/Superl+A+Pl+Nom'
            ],
          },
          {
            'name': 'Sg/Acc',
            'paradigms': [
              '+A+Sg+Acc',
              '+A+Der/Comp+A+Sg+Acc',
              '+A+Der/Superl+A+Sg+Acc'
            ],
          },
          {
            'name': 'Pl/Acc',
            'paradigms': [
              '+A+Pl+Acc',
              '+A+Der/Comp+A+Pl+Acc',
              '+A+Der/Superl+A+Pl+Acc'
            ],
          },
          {
            'name': 'Sg/Gen',
            'paradigms': [
              '+A+Sg+Gen',
              '+A+Der/Comp+A+Sg+Gen',
              '+A+Der/Superl+A+Sg+Gen'
            ],
          },
          {
            'name': 'Pl/Gen',
            'paradigms': [
              '+A+Pl+Gen',
              '+A+Der/Comp+A+Pl+Gen',
              '+A+Der/Superl+A+Pl+Gen'
            ],
          },
          {
            'name': 'Sg/Ill',
            'paradigms': [
              '+A+Sg+Ill',
              '+A+Der/Comp+A+Sg+Ill',
              '+A+Der/Superl+A+Sg+Ill'
            ],
          },
          {
            'name': 'Pl/Ill',
            'paradigms': [
              '+A+Pl+Ill',
              '+A+Der/Comp+A+Pl+Ill',
              '+A+Der/Superl+A+Pl+Ill'
            ],
          },
          {
            'name': 'Sg/Loc',
            'paradigms': [
              '+A+Sg+Loc',
              '+A+Der/Comp+A+Sg+Loc',
              '+A+Der/Superl+A+Sg+Loc'
            ],
          },
          {
            'name': 'Pl/Loc',
            'paradigms': [
              '+A+Pl+Loc',
              '+A+Der/Comp+A+Pl+Loc',
              '+A+Der/Superl+A+Pl+Loc'
            ],
          },
          {
            'name': 'Sg/Com',
            'paradigms': [
              '+A+Sg+Com',
              '+A+Der/Comp+A+Sg+Com',
              '+A+Der/Superl+A+Sg+Com'
            ],
          },
          {
            'name': 'Pl/Com',
            'paradigms': [
              '+A+Pl+Com',
              '+A+Der/Comp+A+Pl+Com',
              '+A+Der/Superl+A+Pl+Com'
            ],
          },
          {
            'name': 'Ess',
            'paradigms': ['+A+Ess', '+A+Der/Comp+A+Ess', '+A+Der/Superl+A+Ess'],
          },
        ]
      }
    },
    'Adv': {
      //
      // Prepend '+A' in front of the elements in the list
      //
      'Default': [
        '+Der/AAdv+Adv',
        '+Der/Comp+A+Der/AAdv+Adv',
        '+Der/Superl+A+Der/AAdv+Adv'
      ]
    },
    'N': {
      'Default': {
        'header': ['', 'Sg', 'Pl'],
        'rows': [
          {
            'name': 'Nom',
            'paradigms': ['+N+Sg+Nom', '+N+Pl+Nom'],
          },
          {
            'name': 'Acc',
            'paradigms': ['+N+Sg+Acc', '+N+Pl+Acc'],
          },
          {
            'name': 'Gen',
            'paradigms': ['+N+Sg+Gen', '+N+Pl+Gen'],
          },
          {
            'name': 'Ill',
            'paradigms': ['+N+Sg+Ill', '+N+Pl+Ill'],
          },
          {
            'name': 'Loc',
            'paradigms': ['+N+Sg+Loc', '+N+Pl+Loc'],
          },
          {
            'name': 'Com',
            'paradigms': ['+N+Sg+Com', '+N+Pl+Com'],
          },
          {
            'name': 'Ess',
            'paradigms': ['+N+Ess'],
          },
        ]
      },
    },
    'Num': {
      //
      // Prepend '+Num' to the elements of the list
      //
      'Default': [
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Gen',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Pl+Nom',
        '+Pl+Acc',
        '+Pl+Gen',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com',
        '+Ess'
      ]
    },
    'Pron': {
      // 'name': 'Pronoun dem paradigm'
      // morphology:
      //   pos: Pron
      //   pron_type: Dem
      //
      // Prepend '+Pron+Dem' to the elements of the list
      //
      'dem': [
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Ess',
        '+Pl+Nom',
        '+Pl+Acc',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com'
      ],
      // morphology:
      //   pron_type: Indef
      //
      // Prepend '+Pron+Indef' to the elements of the list
      //
      'indef': [
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Ess',
        '+Pl+Nom',
        '+Pl+Acc',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com'
      ],
      // morphology:
      //   pron_type: Pers
      //
      // Prepend '+Pron+Pers', then
      // for i in [1,2,3]
      // for j in ['Sg', 'Du', 'Pl']
      // f'{j}{i}
      //
      'pers': ['+Nom', '+Acc', '+Gen', '+Ill', '+Loc', '+Com', '+Ess'],
    },
    'V': {
      'Default': {
        'header': ['', 'Prs', 'Prt'],
        'rows': [
          {
            'paradigms': ['+V+Ind+Prs+Sg1', '+V+Ind+Prt+Sg1'],
            'name': 'mun',
          },
          {
            'paradigms': ['+V+Ind+Prs+Sg2', '+V+Ind+Prt+Sg2'],
            'name': 'don',
          },
          {
            'paradigms': ['+V+Ind+Prs+Sg3', '+V+Ind+Prt+Sg3'],
            'name': 'son',
          },
          {
            'paradigms': ['+V+Ind+Prs+Du1', '+V+Ind+Prt+Du1'],
            'name': 'moai',
          },
          {
            'paradigms': ['+V+Ind+Prs+Du2', '+V+Ind+Prt+Du2'],
            'name': 'doai',
          },
          {
            'paradigms': ['+V+Ind+Prs+Du3', '+V+Ind+Prt+Du3'],
            'name': 'soai',
          },
          {
            'paradigms': ['+V+Ind+Prs+Pl1', '+V+Ind+Prt+Pl1'],
            'name': 'mii',
          },
          {
            'paradigms': ['+V+Ind+Prs+Pl2', '+V+Ind+Prt+Pl2'],
            'name': 'dii',
          },
          {
            'paradigms': ['+V+Ind+Prs+Pl3', '+V+Ind+Prt+Pl3'],
            'name': 'sii',
          },
          {
            'name': 'otne in',
            'paradigms': ['+V+Ind+Prs+ConNeg']
          },
          {
            'name': 'ikte in',
            'paradigms': ['+V+Ind+Prt+ConNeg']
          },
          {
            'name': 'lean',
            'paradigms': ['+V+PrfPrc']
          },
        ]
      }
    },
  },
  'smj': {
    'A': {
      'Default': {
        'header': ['', 'Pos', 'Comp' 'Sup'],
        'rows': [
          {
            'name': 'Attr',
            'paradigms': [
              '+A+Attr',
              '+A+Der/Comp+A+Attr',
              '+A+Der/Superl+A+Attr'
            ],
          },
          {
            'name': 'Sg/Nom',
            'paradigms': [
              '+A+Sg+Nom',
              '+A+Der/Comp+A+Sg+Nom',
              '+A+Der/Superl+A+Sg+Nom'
            ],
          },
          {
            'name': 'Pl/Nom',
            'paradigms': [
              '+A+Pl+Nom',
              '+A+Der/Comp+A+Pl+Nom',
              '+A+Der/Superl+A+Pl+Nom'
            ],
          },
          {
            'name': 'Sg/Acc',
            'paradigms': [
              '+A+Sg+Acc',
              '+A+Der/Comp+A+Sg+Acc',
              '+A+Der/Superl+A+Sg+Acc'
            ],
          },
          {
            'name': 'Pl/Acc',
            'paradigms': [
              '+A+Pl+Acc',
              '+A+Der/Comp+A+Pl+Acc',
              '+A+Der/Superl+A+Pl+Acc'
            ],
          },
          {
            'name': 'Sg/Gen',
            'paradigms': [
              '+A+Sg+Gen',
              '+A+Der/Comp+A+Sg+Gen',
              '+A+Der/Superl+A+Sg+Gen'
            ],
          },
          {
            'name': 'Pl/Gen',
            'paradigms': [
              '+A+Pl+Gen',
              '+A+Der/Comp+A+Pl+Gen',
              '+A+Der/Superl+A+Pl+Gen'
            ],
          },
          {
            'name': 'Sg/Ill',
            'paradigms': [
              '+A+Sg+Ill',
              '+A+Der/Comp+A+Sg+Ill',
              '+A+Der/Superl+A+Sg+Ill'
            ],
          },
          {
            'name': 'Pl/Ill',
            'paradigms': [
              '+A+Pl+Ill',
              '+A+Der/Comp+A+Pl+Ill',
              '+A+Der/Superl+A+Pl+Ill'
            ],
          },
          {
            'name': 'Sg/Ine',
            'paradigms': [
              '+A+Sg+Ine',
              '+A+Der/Comp+A+Sg+Ine',
              '+A+Der/Superl+A+Sg+Ine'
            ],
          },
          {
            'name': 'Pl/Ine',
            'paradigms': [
              '+A+Pl+Ine',
              '+A+Der/Comp+A+Pl+Ine',
              '+A+Der/Superl+A+Pl+Ine'
            ],
          },
          {
            'name': 'Sg/Ela',
            'paradigms': [
              '+A+Sg+Ela',
              '+A+Der/Comp+A+Sg+Ela',
              '+A+Der/Superl+A+Sg+Ela'
            ],
          },
          {
            'name': 'Pl/Ela',
            'paradigms': [
              '+A+Pl+Ela',
              '+A+Der/Comp+A+Pl+Ela',
              '+A+Der/Superl+A+Pl+Ela'
            ],
          },
          {
            'name': 'Sg/Com',
            'paradigms': [
              '+A+Sg+Com',
              '+A+Der/Comp+A+Sg+Com',
              '+A+Der/Superl+A+Sg+Com'
            ],
          },
          {
            'name': 'Pl/Com',
            'paradigms': [
              '+A+Pl+Com',
              '+A+Der/Comp+A+Pl+Com',
              '+A+Der/Superl+A+Pl+Com'
            ],
          },
          {
            'name': 'Sg/Abe',
            'paradigms': [
              '+A+Sg+Abe',
              '+A+Der/Comp+A+Sg+Abe',
              '+A+Der/Superl+A+Sg+Abe'
            ],
          },
          {
            'name': 'Pl/Abe',
            'paradigms': [
              '+A+Pl+Abe',
              '+A+Der/Comp+A+Pl+Abe',
              '+A+Der/Superl+A+Pl+Abe'
            ],
          },
          {
            'name': 'Ess',
            'paradigms': ['+A+Ess', '+A+Der/Comp+A+Ess', '+A+Der/Superl+A+Ess'],
          },
        ]
      },
    },
    'N': {
      'Default': {
        'header': ['', 'Sg', 'Pl'],
        'rows': [
          {
            'name': 'Nom',
            'paradigms': ['+N+Sg+Nom', '+N+Pl+Nom'],
          },
          {
            'name': 'Acc',
            'paradigms': ['+N+Sg+Acc', '+N+Pl+Acc'],
          },
          {
            'name': 'Gen',
            'paradigms': ['+N+Sg+Gen', '+N+Pl+Gen'],
          },
          {
            'name': 'Ill',
            'paradigms': ['+N+Sg+Ill', '+N+Pl+Ill'],
          },
          {
            'name': 'Ine',
            'paradigms': ['+N+Sg+Ine', '+N+Pl+Ine'],
          },
          {
            'name': 'Ela',
            'paradigms': ['+N+Sg+Ela', '+N+Pl+Ela'],
          },
          {
            'name': 'Com',
            'paradigms': ['+N+Sg+Com', '+N+Pl+Com'],
          },
          {
            'name': 'Abe',
            'paradigms': ['+N+Abe'],
          },
          {
            'name': 'Ess',
            'paradigms': ['+N+Ess'],
          },
        ]
      },
    },
    'V': {
      'Default': {
        'header': ['', 'Sg', 'Pl'],
        'rows': [
          {
            'name': 'mån',
            'paradigms': ['+V+Ind+Prs+Sg1', '+V+Ind+Prt+Sg1'],
          },
          {
            'name': 'duon',
            'paradigms': ['+V+Ind+Prs+Sg2', '+V+Ind+Prt+Sg2'],
          },
          {
            'name': 'sån',
            'paradigms': ['+V+Ind+Prs+Sg3', '+V+Ind+Prt+Sg3'],
          },
          {
            'name': 'måj',
            'paradigms': ['+V+Ind+Prs+Du1', '+V+Ind+Prt+Du1'],
          },
          {
            'name': 'dåj',
            'paradigms': ['+V+Ind+Prs+Du2', '+V+Ind+Prt+Du2'],
          },
          {
            'name': 'såj',
            'paradigms': ['+V+Ind+Prs+Du3', '+V+Ind+Prt+Du3'],
          },
          {
            'name': 'mij',
            'paradigms': ['+V+Ind+Prs+Pl1', '+V+Ind+Prt+Pl1'],
          },
          {
            'name': 'dij',
            'paradigms': ['+V+Ind+Prs+Pl2', '+V+Ind+Prt+Pl2'],
          },
          {
            'name': 'sij',
            'paradigms': ['+V+Ind+Prs+Pl3', '+V+Ind+Prt+Pl3'],
          },
          {
            'name': 'uddni iv',
            'paradigms': ['+V+Ind+ConNeg']
          },
          {
            'name': 'iektu ittjiv',
            'paradigms': ['+V+Ind+ConNeg']
          },
          {
            'name': 'lav',
            'paradigms': ['+V+PrfPrc']
          }
        ],
      }
    }
  },
  'smn': {
    'A': {
      'Default': {
        'header': ['', 'Pos', 'Comp' 'Sup'],
        'rows': [
          {
            'name': 'Attr',
            'paradigms': [
              '+A+Attr',
              '+A+Der/Comp+A+Attr',
              '+A+Der/Superl+A+Attr'
            ],
          },
          {
            'name': 'Sg/Nom',
            'paradigms': [
              '+A+Sg+Nom',
              '+A+Der/Comp+A+Sg+Nom',
              '+A+Der/Superl+A+Sg+Nom'
            ],
          },
          {
            'name': 'Pl/Nom',
            'paradigms': [
              '+A+Pl+Nom',
              '+A+Der/Comp+A+Pl+Nom',
              '+A+Der/Superl+A+Pl+Nom'
            ],
          },
          {
            'name': 'Sg/Acc',
            'paradigms': [
              '+A+Sg+Acc',
              '+A+Der/Comp+A+Sg+Acc',
              '+A+Der/Superl+A+Sg+Acc'
            ],
          },
          {
            'name': 'Pl/Acc',
            'paradigms': [
              '+A+Pl+Acc',
              '+A+Der/Comp+A+Pl+Acc',
              '+A+Der/Superl+A+Pl+Acc'
            ],
          },
          {
            'name': 'Sg/Gen',
            'paradigms': [
              '+A+Sg+Gen',
              '+A+Der/Comp+A+Sg+Gen',
              '+A+Der/Superl+A+Sg+Gen'
            ],
          },
          {
            'name': 'Pl/Gen',
            'paradigms': [
              '+A+Pl+Gen',
              '+A+Der/Comp+A+Pl+Gen',
              '+A+Der/Superl+A+Pl+Gen'
            ],
          },
          {
            'name': 'Sg/Ill',
            'paradigms': [
              '+A+Sg+Ill',
              '+A+Der/Comp+A+Sg+Ill',
              '+A+Der/Superl+A+Sg+Ill'
            ],
          },
          {
            'name': 'Pl/Ill',
            'paradigms': [
              '+A+Pl+Ill',
              '+A+Der/Comp+A+Pl+Ill',
              '+A+Der/Superl+A+Pl+Ill'
            ],
          },
          {
            'name': 'Sg/Ine',
            'paradigms': [
              '+A+Sg+Ine',
              '+A+Der/Comp+A+Sg+Ine',
              '+A+Der/Superl+A+Sg+Ine'
            ],
          },
          {
            'name': 'Pl/Ine',
            'paradigms': [
              '+A+Pl+Ine',
              '+A+Der/Comp+A+Pl+Ine',
              '+A+Der/Superl+A+Pl+Ine'
            ],
          },
          {
            'name': 'Sg/Com',
            'paradigms': [
              '+A+Sg+Com',
              '+A+Der/Comp+A+Sg+Com',
              '+A+Der/Superl+A+Sg+Com'
            ],
          },
          {
            'name': 'Pl/Com',
            'paradigms': [
              '+A+Pl+Com',
              '+A+Der/Comp+A+Pl+Com',
              '+A+Der/Superl+A+Pl+Com'
            ],
          },
          {
            'name': 'Sg/Abe',
            'paradigms': [
              '+A+Sg+Abe',
              '+A+Der/Comp+A+Sg+Abe',
              '+A+Der/Superl+A+Sg+Abe'
            ],
          },
          {
            'name': 'Pl/Abe',
            'paradigms': [
              '+A+Pl+Abe',
              '+A+Der/Comp+A+Pl+Abe',
              '+A+Der/Superl+A+Pl+Abe'
            ],
          },
          {
            'name': 'Par',
            'paradigms': ['+A+Par', '+A+Der/Comp+A+Par', '+A+Der/Superl+A+Par'],
          },
          {
            'name': 'Ess',
            'paradigms': ['+A+Ess', '+A+Der/Comp+A+Ess', '+A+Der/Superl+A+Ess'],
          },
        ]
      }
    },
    'N': {
      'Default': {
        'header': ['', 'Sg', 'Pl'],
        'rows': [
          {
            'name': 'Nom',
            'paradigms': ['+N+Sg+Nom', '+N+Pl+Nom'],
          },
          {
            'name': 'Acc',
            'paradigms': ['+N+Sg+Acc', '+N+Pl+Acc'],
          },
          {
            'name': 'Gen',
            'paradigms': ['+N+Sg+Gen', '+N+Pl+Gen'],
          },
          {
            'name': 'Ill',
            'paradigms': ['+N+Sg+Ill', '+N+Pl+Ill'],
          },
          {
            'name': 'Loc',
            'paradigms': ['+N+Sg+Loc', '+N+Pl+Loc'],
          },
          {
            'name': 'Com',
            'paradigms': ['+N+Sg+Com', '+N+Pl+Com'],
          },
          {
            'name': 'Abe',
            'paradigms': ['+N+Sg+Abe', '+N+Pl+Abe'],
          },
          {
            'name': 'Ess',
            'paradigms': ['+N+Ess'],
          },
          {
            'name': 'Par',
            'paradigms': ['+N+Par'],
          },
        ]
      },
    },
    'V': {
      'Default': {
        'header': ['', 'Prs', 'Prt'],
        'rows': [
          {
            'name': 'mun',
            'paradigms': ['+V+Ind+Prs+Sg1', '+V+Ind+Prt+Sg1'],
          },
          {
            'name': 'tun',
            'paradigms': ['+V+Ind+Prs+Sg2', '+V+Ind+Prt+Sg2'],
          },
          {
            'name': 'sun',
            'paradigms': ['+V+Ind+Prs+Sg3', '+V+Ind+Prt+Sg3'],
          },
          {
            'name': 'muoi',
            'paradigms': ['+V+Ind+Prs+Du1', '+V+Ind+Prt+Du1'],
          },
          {
            'name': 'tuoi',
            'paradigms': ['+V+Ind+Prs+Du2', '+V+Ind+Prt+Du2'],
          },
          {
            'name': 'suoi',
            'paradigms': ['+V+Ind+Prs+Du3', '+V+Ind+Prt+Du3'],
          },
          {
            'name': 'mij',
            'paradigms': ['+V+Ind+Prs+Pl1', '+V+Ind+Prt+Pl1'],
          },
          {
            'name': 'tij',
            'paradigms': ['+V+Ind+Prs+Pl2', '+V+Ind+Prt+Pl2'],
          },
          {
            'name': 'sij',
            'paradigms': ['+V+Ind+Prs+Pl3', '+V+Ind+Prt+Pl3'],
          },
          {
            'name': 'onne jiem',
            'paradigms': ['+V+Ind+Prs+ConNeg']
          },
          {
            'name': 'jieht jiem',
            'paradigms': ['+V+Ind+Prt+ConNeg']
          },
          {
            'name': 'lam',
            'paradigms': ['+V+PrfPrc']
          },
        ]
      }
    }
  },
  'sms': {
    'A': {
      'Default': {
        'header': ['', 'Pos', 'Comp' 'Sup'],
        'rows': [
          {
            'name': 'Attr',
            'paradigms': ['+A+Attr', '+A+Comp+Attr', '+A+Superl+Attr'],
          },
          {
            'name': 'Sg/Nom',
            'paradigms': ['+A+Sg+Nom', '+A+Comp+Sg+Nom', '+A+Superl+Sg+Nom'],
          },
          {
            'name': 'Pl/Nom',
            'paradigms': ['+A+Pl+Nom', '+A+Comp+Pl+Nom', '+A+Superl+Pl+Nom'],
          },
          {
            'name': 'Sg/Acc',
            'paradigms': ['+A+Sg+Acc', '+A+Comp+Sg+Acc', '+A+Superl+Sg+Acc'],
          },
          {
            'name': 'Pl/Acc',
            'paradigms': ['+A+Pl+Acc', '+A+Comp+Pl+Acc', '+A+Superl+Pl+Acc'],
          },
          {
            'name': 'Sg/Gen',
            'paradigms': ['+A+Sg+Gen', '+A+Comp+Sg+Gen', '+A+Superl+Sg+Gen'],
          },
          {
            'name': 'Pl/Gen',
            'paradigms': ['+A+Pl+Gen', '+A+Comp+Pl+Gen', '+A+Superl+Pl+Gen'],
          },
          {
            'name': 'Sg/Ill',
            'paradigms': ['+A+Sg+Ill', '+A+Comp+Sg+Ill', '+A+Superl+Sg+Ill'],
          },
          {
            'name': 'Pl/Ill',
            'paradigms': ['+A+Pl+Ill', '+A+Comp+Pl+Ill', '+A+Superl+Pl+Ill'],
          },
          {
            'name': 'Sg/Loc',
            'paradigms': ['+A+Sg+Loc', '+A+Comp+Sg+Loc', '+A+Superl+Sg+Loc'],
          },
          {
            'name': 'Pl/Loc',
            'paradigms': ['+A+Pl+Loc', '+A+Comp+Pl+Loc', '+A+Superl+Pl+Loc'],
          },
          {
            'name': 'Sg/Com',
            'paradigms': ['+A+Sg+Com', '+A+Comp+Sg+Com', '+A+Superl+Sg+Com'],
          },
          {
            'name': 'Pl/Com',
            'paradigms': ['+A+Pl+Com', '+A+Comp+Pl+Com', '+A+Superl+Pl+Com'],
          },
          {
            'name': 'Sg/Abe',
            'paradigms': ['+A+Sg+Abe', '+A+Comp+Sg+Abe', '+A+Superl+Sg+Abe'],
          },
          {
            'name': 'Pl/Abe',
            'paradigms': ['+A+Pl+Abe', '+A+Comp+Pl+Abe', '+A+Superl+Pl+Abe'],
          },
          {
            'name': 'Par',
            'paradigms': ['+A+Par', '+A+Comp+Par', '+A+Superl+Par'],
          },
          {
            'name': 'Ess',
            'paradigms': ['+A+Ess', '+A+Comp+Ess', '+A+Superl+Ess'],
          },
        ],
      }
    },
    'N': {
      'Default': {
        'header': ['', 'Sg', 'Pl'],
        'rows': [
          {
            'name': 'Nom',
            'paradigms': ['+N+Sg+Nom', '+N+Pl+Nom'],
          },
          {
            'name': 'Acc',
            'paradigms': ['+N+Sg+Acc', '+N+Pl+Acc'],
          },
          {
            'name': 'Gen',
            'paradigms': ['+N+Sg+Gen', '+N+Pl+Gen'],
          },
          {
            'name': 'Ill',
            'paradigms': ['+N+Sg+Ill', '+N+Pl+Ill'],
          },
          {
            'name': 'Loc',
            'paradigms': ['+N+Sg+Loc', '+N+Pl+Loc'],
          },
          {
            'name': 'Com',
            'paradigms': ['+N+Sg+Com', '+N+Pl+Com'],
          },
          {
            'name': 'Abe',
            'paradigms': ['+N+Sg+Abe', '+N+Pl+Abe'],
          },
          {
            'name': 'Ess',
            'paradigms': ['+N+Ess'],
          },
          {
            'name': 'Par',
            'paradigms': ['+N+Par'],
          },
        ]
      },
    },
    'Num': {
      // 'name': "numerals"
      // morphology:
      //   pos:
      //     - Num
      //
      // Prepend '+Num' in front of the elements in the list
      //
      'Default': [
        '+Sg+Nom',
        '+Sg+Gen',
        '+Sg+Acc',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Sg+Abe',
        '+Pl+Nom',
        '+Pl+Gen',
        '+Pl+Acc',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com',
        '+Pl+Abe',
        '+Ess',
        '+Par',
      ],
    },
    'Pron': {
      // 'name': "personal pronouns"
      // morphology:
      //   pos: Pron
      //   number:
      //     - Sg
      //     - Du
      //     - Pl
      // lexicon:
      //   XPATH:
      //     pos_type: ".//l/@type"
      //   pos_type:
      //     - "Pers"
      //
      // Prepend '+Pron+Pers' in front of the elements in the list
      //
      'pers': [
        ...['Sg', 'Du', 'Pl']
            .map((number) => [
                  '+Nom',
                  '+Gen',
                  '+Acc',
                  '+Ill',
                  '+Loc',
                  '+Com',
                  '+Abe'
                ].map((inf) => '$number$inf'))
            .expand((element) => element),
        '+Ess',
        '+Par',
      ]
    },
    'V': {
      'Default': {
        'header': ['', 'Prs', 'Prt'],
        'rows': [
          {
            'name': 'mon',
            'paradigms': ['+V+Ind+Prs+Sg1', '+V+Ind+Prt+Sg1'],
          },
          {
            'name': 'ton',
            'paradigms': ['+V+Ind+Prs+Sg2', '+V+Ind+Prt+Sg2'],
          },
          {
            'name': 'son',
            'paradigms': ['+V+Ind+Prs+Sg3', '+V+Ind+Prt+Sg3'],
          },
          {
            'name': 'mii',
            'paradigms': ['+V+Ind+Prs+Pl1', '+V+Ind+Prt+Pl1'],
          },
          {
            'name': 'tij',
            'paradigms': ['+V+Ind+Prs+Pl2', '+V+Ind+Prt+Pl2'],
          },
          {
            'name': 'sij',
            'paradigms': ['+V+Ind+Prs+Pl3', '+V+Ind+Prt+Pl3'],
          },
          {
            'name': '',
            'paradigms': ['+V+Ind+Prs+Sg4', '+V+Ind+Prt+Sg4'],
          },
          {
            'name': 'täʹbbe jiõm',
            'paradigms': ['+V+Ind+Prs+ConNeg']
          },
          {
            'name': 'jåhtta jiõm',
            'paradigms': ['+V+Ind+Prt+ConNeg']
          },
        ]
      }
    }
  },
  'nob': {
    'A': {
      'Default': {
        'header': ['', 'Comp' 'Sup'],
        'rows': [
          {
            'name': '',
            'paradigms': ['+A+Comp+Indef', '+A+Superl+Indef']
          }
        ]
      }
    },
    'V': {
      'Default': {
        'header': ['', 'Inf', 'Prs', 'Prt', 'PrfPrc', 'Imp'],
        'rows': [
          {
            'name': '',
            'paradigms': [
              '+V+Inf',
              '+V+Ind+Prs',
              '+V+Ind+Prt',
              '+V+PrfPrc',
              '+V+Imp'
            ]
          },
        ]
      }
    }
  },
  'fin': {
    'A': {
      'Default': {
        'header': ['', 'Pos', 'Comp' 'Sup'],
        'rows': [
          {
            'name': 'Attr',
            'paradigms': ['+A+Attr', '+A+Comp+Attr', '+A+Superl+Attr'],
          },
          {
            'name': 'Sg/Nom',
            'paradigms': ['+A+Sg+Nom', '+A+Comp+Sg+Nom', '+A+Superl+Sg+Nom'],
          },
          {
            'name': 'Pl/Nom',
            'paradigms': ['+A+Pl+Nom', '+A+Comp+Pl+Nom', '+A+Superl+Pl+Nom'],
          },
          {
            'name': 'Sg/Gen',
            'paradigms': ['+A+Sg+Gen', '+A+Comp+Sg+Gen', '+A+Superl+Sg+Gen'],
          },
          {
            'name': 'Pl/Gen',
            'paradigms': ['+A+Pl+Gen', '+A+Comp+Pl+Gen', '+A+Superl+Pl+Gen'],
          },
          {
            'name': 'Sg/Par',
            'paradigms': ['+A+Sg+Par', '+A+Comp+Sg+Par', '+A+Superl+Sg+Par'],
          },
          {
            'name': 'Pl/Par',
            'paradigms': ['+A+Pl+Par', '+A+Comp+Pl+Par', '+A+Superl+Pl+Par'],
          },
          {
            'name': 'Sg/All',
            'paradigms': ['+A+Sg+All', '+A+Comp+Sg+All', '+A+Superl+Sg+All'],
          },
          {
            'name': 'Pl/All',
            'paradigms': ['+A+Pl+All', '+A+Comp+Pl+All', '+A+Superl+Pl+All'],
          },
          {
            'name': 'Sg/Abl',
            'paradigms': ['+A+Sg+Abl', '+A+Comp+Sg+Abl', '+A+Superl+Sg+Abl'],
          },
          {
            'name': 'Pl/Abl',
            'paradigms': ['+A+Pl+Abl', '+A+Comp+Pl+Abl', '+A+Superl+Pl+Abl'],
          },
          {
            'name': 'Sg/Ade',
            'paradigms': ['+A+Sg+Ade', '+A+Comp+Sg+Ade', '+A+Superl+Sg+Ade'],
          },
          {
            'name': 'Pl/Ade',
            'paradigms': ['+A+Pl+Ade', '+A+Comp+Pl+Ade', '+A+Superl+Pl+Ade'],
          },
          {
            'name': 'Sg/Ill',
            'paradigms': ['+A+Sg+Ill', '+A+Comp+Sg+Ill', '+A+Superl+Sg+Ill'],
          },
          {
            'name': 'Pl/Ill',
            'paradigms': ['+A+Pl+Ill', '+A+Comp+Pl+Ill', '+A+Superl+Pl+Ill'],
          },
          {
            'name': 'Sg/Ine',
            'paradigms': ['+A+Sg+Ine', '+A+Comp+Sg+Ine', '+A+Superl+Sg+Ine'],
          },
          {
            'name': 'Pl/Ine',
            'paradigms': ['+A+Pl+Ine', '+A+Comp+Pl+Ine', '+A+Superl+Pl+Ine'],
          },
          {
            'name': 'Sg/Ela',
            'paradigms': ['+A+Sg+Ela', '+A+Comp+Sg+Ela', '+A+Superl+Sg+Ela'],
          },
          {
            'name': 'Pl/Ela',
            'paradigms': ['+A+Pl+Ela', '+A+Comp+Pl+Ela', '+A+Superl+Pl+Ela'],
          },
          {
            'name': 'Sg/Abe',
            'paradigms': ['+A+Sg+Abe', '+A+Comp+Sg+Abe', '+A+Superl+Sg+Abe'],
          },
          {
            'name': 'Pl/Abe',
            'paradigms': ['+A+Pl+Abe', '+A+Comp+Pl+Abe', '+A+Superl+Pl+Abe'],
          },
          {
            'name': 'Sg/Ess',
            'paradigms': ['+A+Sg+Ess', '+A+Comp+Sg+Ess', '+A+Superl+Sg+Ess'],
          },
          {
            'name': 'Pl/Ess',
            'paradigms': ['+A+Pl+Ess', '+A+Comp+Pl+Ess', '+A+Superl+Pl+Ess'],
          },
          {
            'name': 'Sg/Tra',
            'paradigms': ['+A+Sg+Tra', '+A+Comp+Sg+Tra', '+A+Superl+Sg+Tra'],
          },
          {
            'name': 'Pl/Tra',
            'paradigms': ['+A+Pl+Tra', '+A+Comp+Pl+Tra', '+A+Superl+Pl+Tra'],
          },
          {
            'name': 'Sg/Ins',
            'paradigms': ['+A+Sg+Ins', '+A+Comp+Sg+Ins', '+A+Superl+Sg+Ins'],
          },
          {
            'name': 'Pl/Ins',
            'paradigms': ['+A+Pl+Ins', '+A+Comp+Pl+Ins', '+A+Superl+Pl+Ins'],
          },
        ]
      }
    },
    'N': {
      'Default': {
        'header': ['', 'Sg', 'Pl'],
        'rows': [
          {
            'name': 'Nom',
            'paradigms': ['+N+Sg+Nom', '+N+Pl+Nom'],
          },
          {
            'name': 'Gen',
            'paradigms': ['+N+Sg+Gen', '+N+Pl+Gen'],
          },
          {
            'name': 'Acc',
            'paradigms': ['+N+Sg+Acc', '+N+Pl+Acc'],
          },
          {
            'name': 'Par',
            'paradigms': ['+N+Sg+Par', '+N+Pl+Par'],
          },
          {
            'name': 'Ine',
            'paradigms': ['+N+Sg+Ine', '+N+Pl+Ine'],
          },
          {
            'name': 'Ela',
            'paradigms': ['+N+Sg+Ela', '+N+Pl+Ela'],
          },
          {
            'name': 'Ill',
            'paradigms': ['+N+Sg+Ill', '+N+Pl+Ill'],
          },
          {
            'name': 'Ade',
            'paradigms': ['+N+Sg+Ade', '+N+Pl+Ade'],
          },
          {
            'name': 'Abl',
            'paradigms': ['+N+Sg+Abl', '+N+Pl+Abl'],
          },
          {
            'name': 'All',
            'paradigms': ['+N+Sg+All', '+N+Pl+All'],
          },
          {
            'name': 'Ess',
            'paradigms': ['+N+Sg+Ess', '+N+Pl+Ess'],
          },
          {
            'name': 'Tra',
            'paradigms': ['+N+Sg+Tra', '+N+Pl+Tra'],
          },
          {
            'name': 'Ins',
            'paradigms': ['+N+Sg+Ins', '+N+Pl+Ins'],
          },
          {
            'name': 'Abe',
            'paradigms': ['+N+Sg+Abe', '+N+Pl+Abe'],
          },
          {
            'name': 'Com',
            'paradigms': ['+N+Com'],
          },
        ]
      },
    },
    'V': {
      'Default': {
        'header': ['', 'Prs', 'Prt'],
        'rows': [
          {
            'name': '',
            'paradigms': ['+V+Act+Ind+Prs+Sg1', '+V+Act+Ind+Prt+Sg1']
          },
          {
            'name': '',
            'paradigms': ['+V+Act+Ind+Prs+Sg2', '+V+Act+Ind+Prt+Sg2']
          },
          {
            'name': '',
            'paradigms': ['+V+Act+Ind+Prs+Sg3', '+V+Act+Ind+Prt+Sg3']
          },
          {
            'name': '',
            'paradigms': ['+V+Act+Ind+Prs+Pl1', '+V+Act+Ind+Prt+Pl1']
          },
          {
            'name': '',
            'paradigms': ['+V+Act+Ind+Prs+Pl2', '+V+Act+Ind+Prt+Pl2']
          },
          {
            'name': '',
            'paradigms': ['+V+Act+Ind+Prs+Pl3', '+V+Act+Ind+Prt+Pl3']
          },
          {
            'name': '',
            'paradigms': ['+V+Ind+Prs+ConNeg']
          },
          {
            'name': '',
            'paradigms': ['+V+PrfPrc']
          }
        ]
      },
    },
  }
};

List<String> wantedParadigms(
  String language,
  String partOfSpeech,
  String subsection,
) {
  List<String> paradigms = [];
  for (var row in paradigmTemplates[language][partOfSpeech][subsection]
      ['rows']) {
    paradigms.addAll(
      List<String>.from(
        row['paradigms'].map(
          (paradigm) => paradigm,
        ),
      ),
    );
  }

  return paradigms;
}
