%token <string> IDENTIFIER
%token <Lang.attrib_tp> TP
%token <bool> BCONSTANT
%token <int> INTCONSTANT
%token <string> STRINGCONSTANT
%token BLAND BLOR
%token EQ GE GT LE LT NE
%token ADD SUB MUL DIV MOD
%token LBRACE RBRACE LBRACKET RBRACKET LPAREN RPAREN 
%token DOT COMMA COLON
%token CREATE DELETE MATCH RETURN SET WHERE
%token ARROW
%token EOF

%start<Lang.prog> main

%left BLOR
%left BLAND
%left EQ GE GT LE LT NE
%left ADD SUB
%left MUL DIV MOD

%{ open Lang %}

%%

main: prog EOF { $1 }

prog: td = list(tpDecl);  q = query 
     { let (nts, rts) = List.partition_map Fun.id td in Prog (DBG(nts, rts), q) }

tpDecl:
| n = nodeTpDecl { Either.Left n }
| r = relTpDecl { Either.Right r }


query: cls = list(clause) { Query cls }

/* TODO: to be completed */
clause: 
| CREATE; pts = separated_list(COMMA, pattern) { Create pts }
| SET; updates = separated_list(COMMA, update) { Set updates }
| MATCH; pts = separated_list(COMMA, pattern) { Match pts }

update: 
    | vn = IDENTIFIER; DOT; fn = IDENTIFIER; EQ; e = expr { (vn,fn, e) }


/* TODO: to be completed */
pattern: 
| np = npattern { SimpPattern np }
| np1 = npattern; id = relspec; np2 = pattern { CompPattern (np1, id, np2) }

// Définition de relspec pour spécifier les relations entre les nœuds
relspec: SUB; LBRACKET; COLON; ident = IDENTIFIER; RBRACKET; ARROW { ident }

npattern: 
| LPAREN; v = IDENTIFIER; COLON; t = IDENTIFIER; RPAREN { DeclPattern(v, t) }
| LPAREN; v = IDENTIFIER; RPAREN { VarRefPattern(v) }


/* Expressions */

primary_expr:
| vn = IDENTIFIER; DOT; fn = IDENTIFIER 
    { AttribAcc(vn, fn) }
| c = BCONSTANT
    { Const(BoolV(c)) }
| c = INTCONSTANT
    { Const(IntV(c)) }
| c = STRINGCONSTANT
    { Const(StringV(c)) }
| LPAREN e = expr RPAREN
    { e }

/* TODO: to be completed */
expr:
    | a = primary_expr { a }
    | c = STRINGCONSTANT { Const(StringV(c)) }

/* Types */
nodeTpDecl: LPAREN; COLON; i = IDENTIFIER; a = attrib_declList; RPAREN  { DBN (i, a) }

attrib_decl: i = IDENTIFIER; t = TP { (i, t) }
attrib_declList: 
| LBRACE; ads = separated_list(COMMA, attrib_decl); RBRACE { ads }


/* Relational type declarations of the form (:nt1) -[:rt]-> (:nt2) */

nodeTpRef: LPAREN; COLON; si = IDENTIFIER; RPAREN { si }
relTpDecl: si = nodeTpRef;
           SUB; LBRACKET; COLON; rlab = IDENTIFIER; RBRACKET; ARROW; 
           ti = nodeTpRef
           { Graphstruct.DBR (si, rlab, ti) }

%%
