final Map<String, dynamic> paradigmTemplates = {
  'sma': {
    'A': {
      // name: 'A+Ord paradigm'
      // morphology:
      //   pos: A
      // lexicon:
      //   XPATH:
      //     ord_type: './/l/@type'
      //   ord_type:
      //     - 'Ord'
      //
      // Prepend '+A+{{ ord_type }}' to the elements in the list
      //
      'Ord': [
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Gen',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Ess',
        '+Pl+Nom',
        '+Pl+Acc',
        '+Pl+Gen',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com'
      ],
      // name: 'adjectives'
      // morphology:
      //   pos: A
      //
      // Prepend '+A' in front of the elements in the list
      //
      'Default': [
        '+Attr',
        '+Sg+Nom',
        '+Der/Comp+A+Attr',
        '+Der/Comp+A+Sg+Nom',
        '+Der/Superl+A+Sg+Nom'
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
      // name: 'numerals'
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
      // lexicon:
      // XPATH:
      //   ord_type: './/l/@type'
      // ord_type:
      //   - 'Ord'
      //
      // Prepend '+A+{{ ord_type }}' to the elements in the list
      //
      'Ord': [
        '+Attr',
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Gen',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Ess',
        '+Pl+Nom',
        '+Pl+Acc',
        '+Pl+Gen',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com'
      ],
      // lexicon:
      // XPATH:
      //   context: './/l/@paradigme'
      // context:
      //   - 'cases'
      //
      // Prepend '+A' in front of the elements in the list
      //
      'Cases': [
        '+Attr',
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Gen',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Ess',
        '+Pl+Nom',
        '+Pl+Acc',
        '+Pl+Gen',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com'
      ],
      //
      // Prepend '+A' in front of the elements in the list
      //
      'Default': [
        '+Attr',
        '+Sg+Nom',
        '+Pl+Nom',
        '+Der/Comp+A+Attr',
        '+Der/Comp+A+Sg+Nom',
        '+Der/Superl+A+Sg+Nom'
      ]
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
      // name: 'Pronoun dem paradigm'
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
      'Default': [
        'A+Attr',
        'A+Der/Comp+A+Attr',
        'A+Der/Superl+A+Attr',
        'A+Sg+Nom',
        'A+Der/Comp+A+Sg+Nom',
        'A+Der/Superl+A+Sg+Nom',
        'A+Pl+Nom',
        'A+Der/Comp+A+Pl+Nom',
        'A+Der/Superl+A+Pl+Nom',
        'A+Sg+Acc',
        'A+Der/Comp+A+Sg+Acc',
        'A+Der/Superl+A+Sg+Acc',
        'A+Pl+Acc',
        'A+Der/Comp+A+Pl+Acc',
        'A+Der/Superl+A+Pl+Acc',
        'A+Sg+Gen',
        'A+Der/Comp+A+Sg+Gen',
        'A+Der/Superl+A+Sg+Gen',
        'A+Pl+Gen',
        'A+Der/Comp+A+Pl+Gen',
        'A+Der/Superl+A+Pl+Gen',
        'A+Sg+Ill',
        'A+Der/Comp+A+Sg+Ill',
        'A+Der/Superl+A+Sg+Ill',
        'A+Pl+Ill',
        'A+Der/Comp+A+Pl+Ill',
        'A+Der/Superl+A+Pl+Ill',
        'A+Sg+Ine',
        'A+Der/Comp+A+Sg+Ine',
        'A+Der/Superl+A+Sg+Ine',
        'A+Pl+Ine',
        'A+Der/Comp+A+Pl+Ine',
        'A+Der/Superl+A+Pl+Ine',
        'A+Sg+Ela',
        'A+Der/Comp+A+Sg+Ela',
        'A+Der/Superl+A+Sg+Ela',
        'A+Pl+Ela',
        'A+Der/Comp+A+Pl+Ela',
        'A+Der/Superl+A+Pl+Ela',
        'A+Sg+Com',
        'A+Der/Comp+A+Sg+Com',
        'A+Der/Superl+A+Sg+Com',
        'A+Pl+Com',
        'A+Der/Comp+A+Pl+Com',
        'A+Der/Superl+A+Pl+Com',
        'A+Sg+Abe',
        'A+Der/Comp+A+Sg+Abe',
        'A+Der/Superl+A+Sg+Abe',
        'A+Pl+Abe',
        'A+Der/Comp+A+Pl+Abe',
        'A+Der/Superl+A+Pl+Abe',
        'A+Ess',
        'A+Der/Comp+A+Ess',
        'A+Der/Superl+A+Ess'
      ],
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
      // name: "General adjective paradigm"
      // morphology:
      //   pos: A
      //
      // Prepend '+A' in front of the elements in the list
      //
      'Default': [
        '+Attr',
        '+Pl+Nom',
        '+Der/Comp+A+Attr',
        '+Der/Comp+A+Sg+Nom',
        '+Der/Superl+A+Sg+Nom',
      ],
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
      // name: "adjectives"
      // morphology:
      //   pos:
      //     - A
      //
      // Prepend '+A' in front of the elements in the list
      //
      'Default': [
        '+Attr',
        '+Sg+Nom',
        '+Sg+Gen',
        '+Sg+Acc',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Sg+Abe',
        '+Ess',
        '+Par',
        '+Pl+Nom',
        '+Pl+Gen',
        '+Pl+Acc',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com',
        '+Pl+Abe',
        '+Comp+Sg+Nom',
        '+Comp+Sg+Gen',
        '+Comp+Sg+Acc',
        '+Comp+Sg+Ill',
        '+Comp+Sg+Loc',
        '+Comp+Sg+Com',
        '+Comp+Sg+Abe',
        '+Comp+Ess',
        '+Comp+Par',
        '+Comp+Pl+Nom',
        '+Comp+Pl+Gen',
        '+Comp+Pl+Acc',
        '+Comp+Pl+Ill',
        '+Comp+Pl+Loc',
        '+Comp+Pl+Com',
        '+Comp+Pl+Abe',
        '+Superl+Sg+Nom',
        '+Superl+Sg+Gen',
        '+Superl+Sg+Acc',
        '+Superl+Sg+Ill',
        '+Superl+Sg+Loc',
        '+Superl+Sg+Com',
        '+Superl+Sg+Abe',
        '+Superl+Ess',
        '+Superl+Par',
        '+Superl+Pl+Nom',
        '+Superl+Pl+Gen',
        '+Superl+Pl+Acc',
        '+Superl+Pl+Ill',
        '+Superl+Pl+Loc',
        '+Superl+Pl+Com',
        '+Superl+Pl+Abe',
        '+Der/vuõtt+N+Sg+Nom',
      ],
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
      // name: "numerals"
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
      // name: "personal pronouns"
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
      // name: "adjectives"
      // morphology:
      //   pos: A
      //
      // Prepend '+A' to the elements of the list
      //
      'Default': [
        '+Sg+Nom',
        '+Sg+Gen',
        '+Sg+Par',
        '+Sg+Ine',
        '+Sg+Ill',
        '+Sg+Ela',
        '+Sg+Ade',
        '+Sg+All',
        '+Sg+Abl',
        '+Sg+Ess',
        '+Sg+Tra',
        '+Sg+Ins',
        '+Sg+Com',
        '+Pl+Nom',
        '+Pl+Gen',
        '+Pl+Par',
        '+Pl+Ine',
        '+Pl+Ill',
        '+Pl+Ela',
        '+Pl+Ade',
        '+Pl+All',
        '+Pl+Abl',
        '+Pl+Ess',
        '+Pl+Tra',
        '+Pl+Ins',
        '+Pl+Com',
        '+Comp+Sg+Nom',
        '+Comp+Sg+Gen',
        '+Comp+Sg+Ill',
        '+Comp+Pl+Nom',
        '+Comp+Pl+Gen',
        '+Comp+Pl+Ill',
        '+Superl+Sg+Nom',
        '+Superl+Sg+Gen',
        '+Superl+Sg+Ill',
        '+Superl+Pl+Nom',
        '+Superl+Pl+Gen',
        '+Superl+Pl+Ill',
      ],
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
      // name: "verbs"
      // morphology:
      //   pos: V
      //
      // Prepend '+V' to the elements of the list
      //
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
