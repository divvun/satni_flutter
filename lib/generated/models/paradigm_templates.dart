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
      // name: "proper place nouns - tanta pluralia"
      // morphology:
      //   pos: N
      //   type: Prop
      // lexicon:
      //   XPATH:
      //     sem_type: ".//l/@sem_type"
      //     nr: ".//l/@nr"
      //     type: ".//l/@type"
      //   sem_type:
      //     - "Plc"
      //     - "Org"
      //     - "Obj"
      //   nr: "Pl"
      //   type: "Prop"
      //
      // Prepend '+N+Prop+Sem/' first, then sem_type
      //
      'prop_tanta_plur': [
        '+Pl+Gen',
        '+Pl+Ill',
        '+Pl+Ine',
        '+Pl+Ela',
      ],
      // name: "proper nouns"
      // morphology:
      //   pos: N
      //   type: Prop
      //
      // Prepend '+N+Prop'
      //
      'Prop': [
        '+Sg+Gen',
        '+Sg+Acc',
        '+Sg+Ill',
        '+Sg+Ine',
        '+Sg+Ela',
        '+Sg+Com',
      ],
      // name: 'common nouns - tanta pluralia'
      // morphology:
      //   pos: N
      //   number: Pl
      // lexicon:
      //   XPATH:
      //     num: './/l/@num'
      //   num:
      //     - 'Pl'
      //     - 'pl'
      //
      // Prepend '+N' to the elements in the list
      //
      'plur_tanta': [
        '+Pl+Nom',
        '+Pl+Gen',
        '+Pl+Acc',
        '+Pl+Ill',
        '+Pl+Ine',
        'Pl+Ela',
        '+Pl+Com',
      ],
      // name: "proper nouns with semantic type"
      // morphology:
      //   pos: N
      //   type: Prop
      // lexicon:
      //   XPATH:
      //     sem_type: ".//l/@sem_type"
      //   sem_type:
      //     - "Plc"
      //     - "Org"
      //     - "Obj"
      //
      // Prepend '+N+Prop+Sem/', the sem_type to the elements in the list
      //
      'prop_sem': [
        '+Sg+Gen',
        '+Sg+Ill',
        '+Sg+Ine',
        '+Sg+Ela',
      ],
      // name: 'nouns'
      // morphology:
      //   pos: N
      //
      // Prepend '+N' to the elements in the list
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
      // name: 'impersonal verbs'
      // morphology:
      //   pos: V
      // lexicon:
      //   XPATH:
      //     context: './/l/@context'
      //   context: 'upers'
      //
      // Prepend '+V' to the elements of the list
      //
      'impersonal': [
        '+Ind+Prs+Sg3',
        '+Ind+Prt+Sg3',
        '+ConNeg',
        '+PrfPrc',
        '+Ger',
        '+VGen',
      ],
      // name: "verb homonymy (plus valence)"
      // morphology:
      //   pos: V
      // lexicon:
      //   XPATH:
      //     homonymy: ".//l/@hid"
      //     valence: ".//l/@type"
      //   homonymy:
      //     - "Hom1"
      //     - "Hom2"
      //
      // Prepend '+V' to the elements of the list
      //
      'verb_hom': [
        '+Ind+Prs+Sg1',
        '+Ind+Prs+Sg2',
        '+Ind+Prs+Sg3',
        '+Ind+Prs+Du1',
        '+Ind+Prs+Du2',
        '+Ind+Prs+Du3',
        '+Ind+Prs+Pl1',
        '+Ind+Prs+Pl2',
        '+Ind+Prs+Pl3',
        '+Ind+Prt+Sg1',
        '+Ind+Prt+Sg2',
        '+Ind+Prt+Sg3',
        '+Ind+Prt+Du1',
        '+Ind+Prt+Du2',
        '+Ind+Prt+Du3',
        '+Ind+Prt+Pl1',
        '+Ind+Prt+Pl2',
        '+Ind+Prt+Pl3',
        '+ConNeg',
        '+PrfPrc',
        '+Ger',
        '+VGen',
      ],
      // name: "verbs"
      // morphology:
      //   pos: V
      //
      // Prepend '+V' to the elements of the list
      //
      'Default': [
        '+Ind+Prs+Sg1',
        '+Ind+Prs+Sg2',
        '+Ind+Prs+Sg3',
        '+Ind+Prs+Du1',
        '+Ind+Prs+Du2',
        '+Ind+Prs+Du3',
        '+Ind+Prs+Pl1',
        '+Ind+Prs+Pl2',
        '+Ind+Prs+Pl3',
        '+Ind+Prt+Sg1',
        '+Ind+Prt+Sg2',
        '+Ind+Prt+Sg3',
        '+Ind+Prt+Du1',
        '+Ind+Prt+Du2',
        '+Ind+Prt+Du3',
        '+Ind+Prt+Pl1',
        '+Ind+Prt+Pl2',
        '+Ind+Prt+Pl3',
        '+ConNeg',
        '+PrfPrc',
        '+Ger',
        '+VGen',
      ],
    }
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
      // morphology:
      // pos: N
      // noun_type:
      //   - 'Coll'
      //
      // Prepend '+N+Coll' to the elements in the list
      //
      'Coll': ['+Sg+Nom', '+Sg+Acc', '+Sg+Ill', '+Sg+Loc', '+Sg+Com', '+Ess'],
      // name: 'Noun+G3, Noun+G7, Noun+NomAg paradigms'
      // morphology:
      //   pos: N
      // lexicon:
      //   XPATH:
      //     nom_type: './/l/@type'
      //   nom_type:
      //     - 'G3'
      //     - 'G7'
      //     - 'NomAg'
      //
      // Prepend '+N+{{ nom_type }}' to the elements in the list
      //
      'nom_type': [
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
      // name: 'Nouns without illative plural paradigm'
      // description: |
      //   Remove illative plural when the lexicon contains illpl='no'
      //   ex.) eahketroađđi
      // morphology:
      //   pos: N
      // lexicon:
      //   XPATH:
      //     illpl: './/l/@illpl'
      //     lex_pos: './/l/@pos'
      //   illpl: 'no'
      //   lex_pos: 'N'
      //
      // Prepend '+N' to the elements in the list
      //
      'illpl': [
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Gen',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Ess'
      ],
      //
      // Prepend '+N' to the elements in the list
      //
      'Default': [
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
      // name: 'Common noun pluralia tanta'
      // morphology:
      //   pos: N
      //   number: Pl
      // lexicon:
      //   XPATH:
      //     nr: './/l/@nr'
      //     lex_pos: './/l/@pos'
      //   nr:
      //     - 'Pl'
      //     - 'pl'
      //   lex_pos: 'N'
      //
      // Prepend '+N' to the elements in the list
      //
      'plur_tanta': [
        '+Pl+Nom',
        '+Pl+Acc',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com',
        '+Ess'
      ],
      // name: 'Proper nouns tanta pluralia'
      // morphology:
      //   pos: 'N'
      //   type: 'Prop'
      //   number: 'Pl'
      //   semantics:
      //     - 'Sem/Plc'
      //     - 'Sem/Obj'
      // lexicon:
      //   XPATH:
      //     type: './/l/@type'
      //     nr: './/l/@nr'
      //     sem_type: './/l/@sem_type'
      //   type: 'Prop'
      //   nr:
      //     - 'Pl'
      //     - 'pl'
      //
      // Prepend '+N+Prop' first, then sem_type, semantics
      //
      // Original template
      // {% if sem_type %}
      // {{ lemma }}+N+Prop+{{ sem_type }}+Pl+Gen
      // {{ lemma }}+N+Prop+{{ sem_type }}+Pl+Loc
      // {{ lemma }}+N+Prop+{{ sem_type }}+Pl+Ill
      // {% elif semantics %}
      // {{ lemma }}+N+Prop+{{ semantics }}+Pl+Gen
      // {{ lemma }}+N+Prop+{{ semantics }}+Pl+Loc
      // {{ lemma }}+N+Prop+{{ semantics }}+Pl+Ill
      // {% else %}
      // {{ lemma }}+N+Prop+Pl+Gen
      // {{ lemma }}+N+Prop+Pl+Loc
      // {{ lemma }}+N+Prop+Pl+Ill
      // {% endif %}
      'prop_tanta_plur': ['+Pl+Gen', '+Pl+Loc', '+Pl+Ill'],
      // name: 'Proper person nouns'
      // description: 'Generates a paradigm for proper nouns.'
      // morphology:
      //   pos: N
      // lexicon:
      //   XPATH:
      //     sem_type: './/l/@sem_type'
      //     type: './/l/@type'
      //   type: Prop
      //   sem_type:
      //     - 'mal'
      //     - 'Mal'
      //     - 'fem'
      //     - 'Fem'
      //     - 'Ani'
      //     - 'ani'
      //
      // Prepend '+N+Prop' first, then followed, according to type, +Sem/{{ capitalised type}}
      //
      'prop_person': [
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Gen',
        '+Sg+Loc',
        '+Sg+Ill',
        '+Sg+Com',
        '+Pl+Nom',
        '+Pl+Acc',
        '+Pl+Gen',
        '+Pl+Loc',
        '+Pl+Ill',
        '+Pl+Com',
        '+Ess'
      ],

      // lexicon:
      //   XPATH:
      //     sem_type: './/l/@sem_type'
      //     type: './/l/@type'
      //   type: Prop
      //   sem_type:
      //     - 'Org'
      //     - 'org'
      // Prepend '+N+Prop' first then according to type, add +Sem/{{ capitalised type}}
      //
      //
      // Add '+N+Prop+Sem/Org
      //
      'prop_org': [
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Gen',
        '+Sg+Loc',
        '+Sg+Ill',
        '+Sg+Com'
      ],

      // name: 'Proper place nouns'
      // description: 'Generates a paradigm for proper nouns.'
      // morphology:
      //   pos: N
      // lexicon:
      //   XPATH:
      //     sem_type: './/l/@sem_type'
      //     type: './/l/@type'
      //   type: Prop
      //   sem_type:
      //     - 'Plc'
      //     - 'plc'
      //
      //
      // Prepend '+N+Prop+Sem/Plc' to the elements of the list
      //
      'prop_place': ['+Sg+Gen', '+Sg+Loc', '+Sg+Ill']
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
      // lexicon:
      //   XPATH:
      //     context: './/l/@context'
      //   context:
      //     - 'dat'
      //
      // Prepend '+V' to the elements of the list
      //
      'impersonal_dat': [
        '+Ind+Prs+Sg3',
        '+Ind+Prs+Pl3',
        '+Ind+Prt+Sg3',
        '+Ind+Prt+Pl3',
        '+Ind+Prs+ConNeg',
        '+Ind+Prt+ConNeg',
        '+PrfPrc'
      ],
      // lexicon:
      //   XPATH:
      //     context: './/l/@context'
      //   context:
      //     - 'upers'
      //
      // Prepend '+V' to the elements of the list
      //
      'impersonal': [
        '+Ind+Prs+Sg3',
        '+Ind+Prt+Sg3',
        '+Ind+Prs+ConNeg',
        '+Ind+Prt+ConNeg',
        '+PrfPrc'
      ],
      // name: 'Negative verb paradigm'
      // morphology:
      //   pos: V
      //   negative:
      //     - 'Neg'
      //
      // Prepend '+V+Neg' to the elements of the list
      //
      'negative': [
        '+Ind+Sg1',
        '+Ind+Sg2',
        '+Ind+Sg3',
        '+Ind+Du1',
        '+Ind+Du2',
        '+Ind+Du3',
        '+Ind+Pl1',
        '+Ind+Pl2',
        '+Ind+Pl3',
        '+Ind+Prs+ConNeg',
        '+Ind+Prt+ConNeg',
        '+PrfPrc'
      ],
      // name: 'Reciprocal verb paradigm'
      // description: 'Use Pl3 for paradigm for reciprocal verbs, such as `deaivvadit`'
      // morphology:
      //   pos: V
      // lexicon:
      //   XPATH:
      //     context: './/l/@context'
      //   context:
      //     - 'sii'
      //
      // Prepend '+V' to the elements of the list
      //
      'reciprocal': [
        '+Ind+Prs+Du1',
        '+Ind+Prs+Du2',
        '+Ind+Prs+Du3',
        '+Ind+Prs+Pl1',
        '+Ind+Prs+Pl2',
        '+Ind+Prs+Pl3',
        '+Ind+Prt+Du1',
        '+Ind+Prt+Du2',
        '+Ind+Prt+Du3',
        '+Ind+Prt+Pl1',
        '+Ind+Prt+Pl2',
        '+Ind+Prt+Pl3',
        '+Ind+Prs+ConNeg',
        '+Ind+Prt+ConNeg',
        '+PrfPrc'
      ],
      // name: 'General verb paradigm'
      // morphology:
      //   pos: V
      //
      // Prepend '+V' to the elements of the list
      //
      'Default': [
        '+Ind+Prs+Sg1',
        '+Ind+Prs+Sg2',
        '+Ind+Prs+Sg3',
        '+Ind+Prs+Du1',
        '+Ind+Prs+Du2',
        '+Ind+Prs+Du3',
        '+Ind+Prs+Pl1',
        '+Ind+Prs+Pl2',
        '+Ind+Prs+Pl3',
        '+Ind+Prt+Sg1',
        '+Ind+Prt+Sg2',
        '+Ind+Prt+Sg3',
        '+Ind+Prt+Du1',
        '+Ind+Prt+Du2',
        '+Ind+Prt+Du3',
        '+Ind+Prt+Pl1',
        '+Ind+Prt+Pl2',
        '+Ind+Prt+Pl3',
        '+Ind+Prs+ConNeg',
        '+Ind+Prt+ConNeg',
        '+PrfPrc'
      ],
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
      // name: "General noun paradigm"
      // morphology:
      //   pos: N
      //
      // Prepend '+N' in front of the elements in the list
      //

      'Default': [
        '+Sg+Nom',
        '+Sg+Acc',
        '+Sg+Gen',
        '+Sg+Ill',
        '+Sg+Loc',
        '+Sg+Com',
        '+Sg+Abe',
        '+Ess',
        '+Par',
        '+Pl+Nom',
        '+Pl+Acc',
        '+Pl+Gen',
        '+Pl+Ill',
        '+Pl+Loc',
        '+Pl+Com',
        '+Pl+Abe',
      ]
    },
    'V': {
      // name: "verb homonymy (plus valence)"
      // morphology:
      //   pos: V
      // lexicon:
      //   XPATH:
      //     homonymy: ".//l/@hid"
      //     valence: ".//l/@type"
      //   homonymy:
      //     - "Hom1"
      //     - "Hom2"
      //
      // Prepend +{{ homonymy }}'+V' in front of the elements in the list
      //
      'hom': [
        '+Ind+Prs+Sg1',
        '+Ind+Prs+Sg2',
        '+Ind+Prs+Sg3',
        '+Ind+Prs+Du1',
        '+Ind+Prs+Du2',
        '+Ind+Prs+Du3',
        '+Ind+Prs+Pl1',
        '+Ind+Prs+Pl2',
        '+Ind+Prs+Pl3',
        '+Ind+Prt+Sg1',
        '+Ind+Prt+Sg2',
        '+Ind+Prt+Sg3',
        '+Ind+Prt+Du1',
        '+Ind+Prt+Du2',
        '+Ind+Prt+Du3',
        '+Ind+Prt+Pl1',
        '+Ind+Prt+Pl2',
        '+Ind+Prt+Pl3',
        '+Ind+Prs+ConNeg',
        '+Ind+Prt+ConNeg',
        '+PrfPrc',
      ],
      // name: "General verb paradigm"
      // morphology:
      //   pos: V
      //
      // Prepend '+V' in front of the elements in the list
      //
      'Default': [
        '+Ind+Prs+Sg1',
        '+Ind+Prs+Sg2',
        '+Ind+Prs+Sg3',
        '+Ind+Prs+Du1',
        '+Ind+Prs+Du2',
        '+Ind+Prs+Du3',
        '+Ind+Prs+Pl1',
        '+Ind+Prs+Pl2',
        '+Ind+Prs+Pl3',
        '+Ind+Prt+Sg1',
        '+Ind+Prt+Sg2',
        '+Ind+Prt+Sg3',
        '+Ind+Prt+Du1',
        '+Ind+Prt+Du2',
        '+Ind+Prt+Du3',
        '+Ind+Prt+Pl1',
        '+Ind+Prt+Pl2',
        '+Ind+Prt+Pl3',
        '+Ind+Prs+ConNeg',
        '+Ind+Prt+ConNeg',
        '+PrfPrc',
      ]
    }
  }
};
