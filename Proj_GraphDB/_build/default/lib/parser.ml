
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHERE
    | TP of (
# 2 "lib/parser.mly"
       (Lang.attrib_tp)
# 16 "lib/parser.ml"
  )
    | SUB
    | STRINGCONSTANT of (
# 5 "lib/parser.mly"
       (string)
# 22 "lib/parser.ml"
  )
    | SET
    | RPAREN
    | RETURN
    | RBRACKET
    | RBRACE
    | NE
    | MUL
    | MOD
    | MATCH
    | LT
    | LPAREN
    | LE
    | LBRACKET
    | LBRACE
    | INTCONSTANT of (
# 4 "lib/parser.mly"
       (int)
# 41 "lib/parser.ml"
  )
    | IDENTIFIER of (
# 1 "lib/parser.mly"
       (string)
# 46 "lib/parser.ml"
  )
    | GT
    | GE
    | EQ
    | EOF
    | DOT
    | DIV
    | DELETE
    | CREATE
    | COMMA
    | COLON
    | BLOR
    | BLAND
    | BCONSTANT of (
# 3 "lib/parser.mly"
       (bool)
# 63 "lib/parser.ml"
  )
    | ARROW
    | ADD
  
end

include MenhirBasics

# 23 "lib/parser.mly"
   open Lang 
# 74 "lib/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_main) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: main. *)

  | MenhirState05 : (('s, _menhir_box_main) _menhir_cell1_LPAREN _menhir_cell0_IDENTIFIER, _menhir_box_main) _menhir_state
    (** State 05.
        Stack shape : LPAREN IDENTIFIER.
        Start symbol: main. *)

  | MenhirState12 : (('s, _menhir_box_main) _menhir_cell1_attrib_decl, _menhir_box_main) _menhir_state
    (** State 12.
        Stack shape : attrib_decl.
        Start symbol: main. *)

  | MenhirState16 : (('s, _menhir_box_main) _menhir_cell1_tpDecl, _menhir_box_main) _menhir_state
    (** State 16.
        Stack shape : tpDecl.
        Start symbol: main. *)

  | MenhirState24 : (('s, _menhir_box_main) _menhir_cell1_nodeTpRef _menhir_cell0_IDENTIFIER, _menhir_box_main) _menhir_state
    (** State 24.
        Stack shape : nodeTpRef IDENTIFIER.
        Start symbol: main. *)

  | MenhirState34 : (('s, _menhir_box_main) _menhir_cell1_list_tpDecl_, _menhir_box_main) _menhir_state
    (** State 34.
        Stack shape : list(tpDecl).
        Start symbol: main. *)

  | MenhirState35 : (('s, _menhir_box_main) _menhir_cell1_SET, _menhir_box_main) _menhir_state
    (** State 35.
        Stack shape : SET.
        Start symbol: main. *)

  | MenhirState39 : (('s, _menhir_box_main) _menhir_cell1_IDENTIFIER _menhir_cell0_IDENTIFIER, _menhir_box_main) _menhir_state
    (** State 39.
        Stack shape : IDENTIFIER IDENTIFIER.
        Start symbol: main. *)

  | MenhirState41 : (('s, _menhir_box_main) _menhir_cell1_LPAREN, _menhir_box_main) _menhir_state
    (** State 41.
        Stack shape : LPAREN.
        Start symbol: main. *)

  | MenhirState52 : (('s, _menhir_box_main) _menhir_cell1_update, _menhir_box_main) _menhir_state
    (** State 52.
        Stack shape : update.
        Start symbol: main. *)

  | MenhirState56 : (('s, _menhir_box_main) _menhir_cell1_MATCH, _menhir_box_main) _menhir_state
    (** State 56.
        Stack shape : MATCH.
        Start symbol: main. *)

  | MenhirState65 : (('s, _menhir_box_main) _menhir_cell1_pattern, _menhir_box_main) _menhir_state
    (** State 65.
        Stack shape : pattern.
        Start symbol: main. *)

  | MenhirState74 : (('s, _menhir_box_main) _menhir_cell1_npattern _menhir_cell0_relspec, _menhir_box_main) _menhir_state
    (** State 74.
        Stack shape : npattern relspec.
        Start symbol: main. *)

  | MenhirState77 : (('s, _menhir_box_main) _menhir_cell1_CREATE, _menhir_box_main) _menhir_state
    (** State 77.
        Stack shape : CREATE.
        Start symbol: main. *)

  | MenhirState81 : (('s, _menhir_box_main) _menhir_cell1_clause, _menhir_box_main) _menhir_state
    (** State 81.
        Stack shape : clause.
        Start symbol: main. *)


and ('s, 'r) _menhir_cell1_attrib_decl = 
  | MenhirCell1_attrib_decl of 's * ('s, 'r) _menhir_state * (Lang.attrib_decl)

and ('s, 'r) _menhir_cell1_clause = 
  | MenhirCell1_clause of 's * ('s, 'r) _menhir_state * (Lang.clause)

and ('s, 'r) _menhir_cell1_list_tpDecl_ = 
  | MenhirCell1_list_tpDecl_ of 's * ('s, 'r) _menhir_state * (((string, Lang.attrib_decl list) Graphstruct.db_node,
   (string, string) Graphstruct.db_rel)
  Either.t list)

and ('s, 'r) _menhir_cell1_nodeTpRef = 
  | MenhirCell1_nodeTpRef of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_npattern = 
  | MenhirCell1_npattern of 's * ('s, 'r) _menhir_state * (Lang.node_pattern)

and ('s, 'r) _menhir_cell1_pattern = 
  | MenhirCell1_pattern of 's * ('s, 'r) _menhir_state * (Lang.pattern)

and 's _menhir_cell0_relspec = 
  | MenhirCell0_relspec of 's * (string)

and ('s, 'r) _menhir_cell1_tpDecl = 
  | MenhirCell1_tpDecl of 's * ('s, 'r) _menhir_state * (((string, Lang.attrib_decl list) Graphstruct.db_node,
   (string, string) Graphstruct.db_rel)
  Either.t)

and ('s, 'r) _menhir_cell1_update = 
  | MenhirCell1_update of 's * ('s, 'r) _menhir_state * (string * string * Lang.expr)

and ('s, 'r) _menhir_cell1_CREATE = 
  | MenhirCell1_CREATE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IDENTIFIER = 
  | MenhirCell1_IDENTIFIER of 's * ('s, 'r) _menhir_state * (
# 1 "lib/parser.mly"
       (string)
# 191 "lib/parser.ml"
)

and 's _menhir_cell0_IDENTIFIER = 
  | MenhirCell0_IDENTIFIER of 's * (
# 1 "lib/parser.mly"
       (string)
# 198 "lib/parser.ml"
)

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MATCH = 
  | MenhirCell1_MATCH of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SET = 
  | MenhirCell1_SET of 's * ('s, 'r) _menhir_state

and _menhir_box_main = 
  | MenhirBox_main of (Lang.prog) [@@unboxed]

let _menhir_action_01 =
  fun i t ->
    (
# 84 "lib/parser.mly"
                                    ( (i, t) )
# 218 "lib/parser.ml"
     : (Lang.attrib_decl))

let _menhir_action_02 =
  fun xs ->
    let ads = 
# 241 "<standard.mly>"
    ( xs )
# 226 "lib/parser.ml"
     in
    (
# 86 "lib/parser.mly"
                                                           ( ads )
# 231 "lib/parser.ml"
     : (Lang.attrib_decl list))

let _menhir_action_03 =
  fun xs ->
    let pts = 
# 241 "<standard.mly>"
    ( xs )
# 239 "lib/parser.ml"
     in
    (
# 41 "lib/parser.mly"
                                               ( Create pts )
# 244 "lib/parser.ml"
     : (Lang.clause))

let _menhir_action_04 =
  fun xs ->
    let updates = 
# 241 "<standard.mly>"
    ( xs )
# 252 "lib/parser.ml"
     in
    (
# 42 "lib/parser.mly"
                                               ( Set updates )
# 257 "lib/parser.ml"
     : (Lang.clause))

let _menhir_action_05 =
  fun xs ->
    let pts = 
# 241 "<standard.mly>"
    ( xs )
# 265 "lib/parser.ml"
     in
    (
# 43 "lib/parser.mly"
                                              ( Match pts )
# 270 "lib/parser.ml"
     : (Lang.clause))

let _menhir_action_06 =
  fun a ->
    (
# 78 "lib/parser.mly"
                       ( a )
# 278 "lib/parser.ml"
     : (Lang.expr))

let _menhir_action_07 =
  fun c ->
    (
# 79 "lib/parser.mly"
                         ( Const(StringV(c)) )
# 286 "lib/parser.ml"
     : (Lang.expr))

let _menhir_action_08 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 294 "lib/parser.ml"
     : (Lang.clause list))

let _menhir_action_09 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 302 "lib/parser.ml"
     : (Lang.clause list))

let _menhir_action_10 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 310 "lib/parser.ml"
     : (((string, Lang.attrib_decl list) Graphstruct.db_node,
   (string, string) Graphstruct.db_rel)
  Either.t list))

let _menhir_action_11 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 320 "lib/parser.ml"
     : (((string, Lang.attrib_decl list) Graphstruct.db_node,
   (string, string) Graphstruct.db_rel)
  Either.t list))

let _menhir_action_12 =
  fun () ->
    (
# 145 "<standard.mly>"
    ( [] )
# 330 "lib/parser.ml"
     : (Lang.attrib_decl list))

let _menhir_action_13 =
  fun x ->
    (
# 148 "<standard.mly>"
    ( x )
# 338 "lib/parser.ml"
     : (Lang.attrib_decl list))

let _menhir_action_14 =
  fun () ->
    (
# 145 "<standard.mly>"
    ( [] )
# 346 "lib/parser.ml"
     : (Lang.pattern list))

let _menhir_action_15 =
  fun x ->
    (
# 148 "<standard.mly>"
    ( x )
# 354 "lib/parser.ml"
     : (Lang.pattern list))

let _menhir_action_16 =
  fun () ->
    (
# 145 "<standard.mly>"
    ( [] )
# 362 "lib/parser.ml"
     : ((string * string * Lang.expr) list))

let _menhir_action_17 =
  fun x ->
    (
# 148 "<standard.mly>"
    ( x )
# 370 "lib/parser.ml"
     : ((string * string * Lang.expr) list))

let _menhir_action_18 =
  fun _1 ->
    (
# 27 "lib/parser.mly"
               ( _1 )
# 378 "lib/parser.ml"
     : (Lang.prog))

let _menhir_action_19 =
  fun a i ->
    (
# 82 "lib/parser.mly"
                                                                        ( DBN (i, a) )
# 386 "lib/parser.ml"
     : ((string, Lang.attrib_decl list) Graphstruct.db_node))

let _menhir_action_20 =
  fun si ->
    (
# 91 "lib/parser.mly"
                                                  ( si )
# 394 "lib/parser.ml"
     : (string))

let _menhir_action_21 =
  fun t v ->
    (
# 58 "lib/parser.mly"
                                                        ( DeclPattern(v, t) )
# 402 "lib/parser.ml"
     : (Lang.node_pattern))

let _menhir_action_22 =
  fun v ->
    (
# 59 "lib/parser.mly"
                                 ( VarRefPattern(v) )
# 410 "lib/parser.ml"
     : (Lang.node_pattern))

let _menhir_action_23 =
  fun np ->
    (
# 51 "lib/parser.mly"
                ( SimpPattern np )
# 418 "lib/parser.ml"
     : (Lang.pattern))

let _menhir_action_24 =
  fun id np1 np2 ->
    (
# 52 "lib/parser.mly"
                                              ( CompPattern (np1, id, np2) )
# 426 "lib/parser.ml"
     : (Lang.pattern))

let _menhir_action_25 =
  fun fn vn ->
    (
# 66 "lib/parser.mly"
    ( AttribAcc(vn, fn) )
# 434 "lib/parser.ml"
     : (Lang.expr))

let _menhir_action_26 =
  fun c ->
    (
# 68 "lib/parser.mly"
    ( Const(BoolV(c)) )
# 442 "lib/parser.ml"
     : (Lang.expr))

let _menhir_action_27 =
  fun c ->
    (
# 70 "lib/parser.mly"
    ( Const(IntV(c)) )
# 450 "lib/parser.ml"
     : (Lang.expr))

let _menhir_action_28 =
  fun c ->
    (
# 72 "lib/parser.mly"
    ( Const(StringV(c)) )
# 458 "lib/parser.ml"
     : (Lang.expr))

let _menhir_action_29 =
  fun e ->
    (
# 74 "lib/parser.mly"
    ( e )
# 466 "lib/parser.ml"
     : (Lang.expr))

let _menhir_action_30 =
  fun q td ->
    (
# 30 "lib/parser.mly"
     ( let (nts, rts) = List.partition_map Fun.id td in Prog (DBG(nts, rts), q) )
# 474 "lib/parser.ml"
     : (Lang.prog))

let _menhir_action_31 =
  fun cls ->
    (
# 37 "lib/parser.mly"
                          ( Query cls )
# 482 "lib/parser.ml"
     : (Lang.query))

let _menhir_action_32 =
  fun rlab si ti ->
    (
# 95 "lib/parser.mly"
           ( Graphstruct.DBR (si, rlab, ti) )
# 490 "lib/parser.ml"
     : ((string, string) Graphstruct.db_rel))

let _menhir_action_33 =
  fun ident ->
    (
# 55 "lib/parser.mly"
                                                                   ( ident )
# 498 "lib/parser.ml"
     : (string))

let _menhir_action_34 =
  fun x ->
    (
# 250 "<standard.mly>"
    ( [ x ] )
# 506 "lib/parser.ml"
     : (Lang.attrib_decl list))

let _menhir_action_35 =
  fun x xs ->
    (
# 253 "<standard.mly>"
    ( x :: xs )
# 514 "lib/parser.ml"
     : (Lang.attrib_decl list))

let _menhir_action_36 =
  fun x ->
    (
# 250 "<standard.mly>"
    ( [ x ] )
# 522 "lib/parser.ml"
     : (Lang.pattern list))

let _menhir_action_37 =
  fun x xs ->
    (
# 253 "<standard.mly>"
    ( x :: xs )
# 530 "lib/parser.ml"
     : (Lang.pattern list))

let _menhir_action_38 =
  fun x ->
    (
# 250 "<standard.mly>"
    ( [ x ] )
# 538 "lib/parser.ml"
     : ((string * string * Lang.expr) list))

let _menhir_action_39 =
  fun x xs ->
    (
# 253 "<standard.mly>"
    ( x :: xs )
# 546 "lib/parser.ml"
     : ((string * string * Lang.expr) list))

let _menhir_action_40 =
  fun n ->
    (
# 33 "lib/parser.mly"
                 ( Either.Left n )
# 554 "lib/parser.ml"
     : (((string, Lang.attrib_decl list) Graphstruct.db_node,
   (string, string) Graphstruct.db_rel)
  Either.t))

let _menhir_action_41 =
  fun r ->
    (
# 34 "lib/parser.mly"
                ( Either.Right r )
# 564 "lib/parser.ml"
     : (((string, Lang.attrib_decl list) Graphstruct.db_node,
   (string, string) Graphstruct.db_rel)
  Either.t))

let _menhir_action_42 =
  fun e fn vn ->
    (
# 46 "lib/parser.mly"
                                                          ( (vn,fn, e) )
# 574 "lib/parser.ml"
     : (string * string * Lang.expr))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ADD ->
        "ADD"
    | ARROW ->
        "ARROW"
    | BCONSTANT _ ->
        "BCONSTANT"
    | BLAND ->
        "BLAND"
    | BLOR ->
        "BLOR"
    | COLON ->
        "COLON"
    | COMMA ->
        "COMMA"
    | CREATE ->
        "CREATE"
    | DELETE ->
        "DELETE"
    | DIV ->
        "DIV"
    | DOT ->
        "DOT"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | GE ->
        "GE"
    | GT ->
        "GT"
    | IDENTIFIER _ ->
        "IDENTIFIER"
    | INTCONSTANT _ ->
        "INTCONSTANT"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LE ->
        "LE"
    | LPAREN ->
        "LPAREN"
    | LT ->
        "LT"
    | MATCH ->
        "MATCH"
    | MOD ->
        "MOD"
    | MUL ->
        "MUL"
    | NE ->
        "NE"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | RETURN ->
        "RETURN"
    | RPAREN ->
        "RPAREN"
    | SET ->
        "SET"
    | STRINGCONSTANT _ ->
        "STRINGCONSTANT"
    | SUB ->
        "SUB"
    | TP _ ->
        "TP"
    | WHERE ->
        "WHERE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_80 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_list_tpDecl_ -> _ -> _menhir_box_main =
    fun _menhir_stack _v ->
      let cls = _v in
      let _v = _menhir_action_31 cls in
      let MenhirCell1_list_tpDecl_ (_menhir_stack, _, td) = _menhir_stack in
      let q = _v in
      let _v = _menhir_action_30 q td in
      let _1 = _v in
      let _v = _menhir_action_18 _1 in
      MenhirBox_main _v
  
  let rec _menhir_run_82 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_clause -> _ -> _menhir_box_main =
    fun _menhir_stack _v ->
      let MenhirCell1_clause (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_09 x xs in
      _menhir_goto_list_clause_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_clause_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState81 ->
          _menhir_run_82 _menhir_stack _v
      | MenhirState34 ->
          _menhir_run_80 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_35 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SET (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState35 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENTIFIER _v ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CREATE | EOF | MATCH | SET ->
          let _v = _menhir_action_16 () in
          _menhir_goto_loption_separated_nonempty_list_COMMA_update__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_36 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENTIFIER _v ->
              let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | EQ ->
                  let _menhir_s = MenhirState39 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | STRINGCONSTANT _v ->
                      _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | LPAREN ->
                      _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | INTCONSTANT _v ->
                      _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | IDENTIFIER _v ->
                      _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | BCONSTANT _v ->
                      _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_40 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let c = _v in
      let _v = _menhir_action_28 c in
      _menhir_goto_primary_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_primary_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let a = _v in
      let _v = _menhir_action_06 a in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState39 ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState41 ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_50 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_IDENTIFIER _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_IDENTIFIER (_menhir_stack, fn) = _menhir_stack in
      let MenhirCell1_IDENTIFIER (_menhir_stack, _menhir_s, vn) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_42 e fn vn in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_update (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState52 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENTIFIER _v ->
              _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | CREATE | EOF | MATCH | SET ->
          let x = _v in
          let _v = _menhir_action_38 x in
          _menhir_goto_separated_nonempty_list_COMMA_update_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_update_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState35 ->
          _menhir_run_54 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState52 ->
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_54 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_SET -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_17 x in
      _menhir_goto_loption_separated_nonempty_list_COMMA_update__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_loption_separated_nonempty_list_COMMA_update__ : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_SET -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_SET (_menhir_stack, _menhir_s) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_04 xs in
      _menhir_goto_clause _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_clause : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_clause (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SET ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState81
      | MATCH ->
          _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState81
      | CREATE ->
          _menhir_run_77 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState81
      | EOF ->
          let _v_0 = _menhir_action_08 () in
          _menhir_run_82 _menhir_stack _v_0
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_56 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MATCH (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | CREATE | EOF | MATCH | SET ->
          let _v = _menhir_action_14 () in
          _menhir_run_76 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_57 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENTIFIER _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v in
              let _v = _menhir_action_22 v in
              _menhir_goto_npattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | COLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENTIFIER _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | RPAREN ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (t, v) = (_v_0, _v) in
                      let _v = _menhir_action_21 t v in
                      _menhir_goto_npattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_npattern : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _menhir_stack = MenhirCell1_npattern (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COLON ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENTIFIER _v_0 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RBRACKET ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | ARROW ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              let ident = _v_0 in
                              let _v = _menhir_action_33 ident in
                              let _menhir_stack = MenhirCell0_relspec (_menhir_stack, _v) in
                              (match (_tok : MenhirBasics.token) with
                              | LPAREN ->
                                  _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState74
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | COMMA | CREATE | EOF | MATCH | SET ->
          let np = _v in
          let _v = _menhir_action_23 np in
          _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_pattern : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState74 ->
          _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState77 ->
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState65 ->
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState56 ->
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_75 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_npattern _menhir_cell0_relspec -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_relspec (_menhir_stack, id) = _menhir_stack in
      let MenhirCell1_npattern (_menhir_stack, _menhir_s, np1) = _menhir_stack in
      let np2 = _v in
      let _v = _menhir_action_24 id np1 np2 in
      _menhir_goto_pattern _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_64 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_pattern (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState65 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | CREATE | EOF | MATCH | SET ->
          let x = _v in
          let _v = _menhir_action_36 x in
          _menhir_goto_separated_nonempty_list_COMMA_pattern_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_pattern_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState65 ->
          _menhir_run_66 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState77 ->
          _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState56 ->
          _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_66 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_pattern -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_pattern (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_37 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_pattern_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_63 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_15 x in
      _menhir_goto_loption_separated_nonempty_list_COMMA_pattern__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_loption_separated_nonempty_list_COMMA_pattern__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState77 ->
          _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState56 ->
          _menhir_run_76 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_78 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_CREATE -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_CREATE (_menhir_stack, _menhir_s) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_03 xs in
      _menhir_goto_clause _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_76 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_MATCH -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_MATCH (_menhir_stack, _menhir_s) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_05 xs in
      _menhir_goto_clause _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_77 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CREATE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState77
      | CREATE | EOF | MATCH | SET ->
          let _v = _menhir_action_14 () in
          _menhir_run_78 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_53 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_update -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_update (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_39 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_update_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_48 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_29 e in
          _menhir_goto_primary_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_41 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState41 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGCONSTANT _v ->
          _menhir_run_40 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INTCONSTANT _v ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IDENTIFIER _v ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BCONSTANT _v ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_42 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let c = _v in
      let _v = _menhir_action_27 c in
      _menhir_goto_primary_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_43 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENTIFIER _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (fn, vn) = (_v_0, _v) in
              let _v = _menhir_action_25 fn vn in
              _menhir_goto_primary_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_46 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let c = _v in
      let _v = _menhir_action_26 c in
      _menhir_goto_primary_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_34 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_list_tpDecl_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SET ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | MATCH ->
          _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | CREATE ->
          _menhir_run_77 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState34
      | EOF ->
          let _v_0 = _menhir_action_08 () in
          _menhir_run_80 _menhir_stack _v_0
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_30 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_tpDecl -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_tpDecl (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_11 x xs in
      _menhir_goto_list_tpDecl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_tpDecl_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState16 ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | COLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENTIFIER _v ->
              let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAREN ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer
              | LBRACE ->
                  let _menhir_s = MenhirState05 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENTIFIER _v ->
                      _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | RBRACE ->
                      let _v = _menhir_action_12 () in
                      _menhir_goto_loption_separated_nonempty_list_COMMA_attrib_decl__ _menhir_stack _menhir_lexbuf _menhir_lexer _v
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_04 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_LPAREN _menhir_cell0_IDENTIFIER -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_IDENTIFIER (_menhir_stack, si) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_20 si in
      _menhir_goto_nodeTpRef _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_nodeTpRef : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState24 ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState00 ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState16 ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_28 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_nodeTpRef _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_IDENTIFIER (_menhir_stack, rlab) = _menhir_stack in
      let MenhirCell1_nodeTpRef (_menhir_stack, _menhir_s, si) = _menhir_stack in
      let ti = _v in
      let _v = _menhir_action_32 rlab si ti in
      let r = _v in
      let _v = _menhir_action_41 r in
      _menhir_goto_tpDecl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_tpDecl : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_tpDecl (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState16
      | CREATE | EOF | MATCH | SET ->
          let _v_0 = _menhir_action_10 () in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_18 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_nodeTpRef (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SUB ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COLON ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | IDENTIFIER _v ->
                      let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RBRACKET ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | ARROW ->
                              let _menhir_s = MenhirState24 in
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | LPAREN ->
                                  let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  (match (_tok : MenhirBasics.token) with
                                  | COLON ->
                                      let _tok = _menhir_lexer _menhir_lexbuf in
                                      (match (_tok : MenhirBasics.token) with
                                      | IDENTIFIER _v ->
                                          let _menhir_stack = MenhirCell0_IDENTIFIER (_menhir_stack, _v) in
                                          let _tok = _menhir_lexer _menhir_lexbuf in
                                          (match (_tok : MenhirBasics.token) with
                                          | RPAREN ->
                                              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer
                                          | _ ->
                                              _eRR ())
                                      | _ ->
                                          _eRR ())
                                  | _ ->
                                      _eRR ())
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_06 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TP _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (t, i) = (_v_0, _v) in
          let _v = _menhir_action_01 i t in
          (match (_tok : MenhirBasics.token) with
          | COMMA ->
              let _menhir_stack = MenhirCell1_attrib_decl (_menhir_stack, _menhir_s, _v) in
              let _menhir_s = MenhirState12 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | IDENTIFIER _v ->
                  _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | RBRACE ->
              let x = _v in
              let _v = _menhir_action_34 x in
              _menhir_goto_separated_nonempty_list_COMMA_attrib_decl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_attrib_decl_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState12 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState05 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_13 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_attrib_decl -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_attrib_decl (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_35 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_attrib_decl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_08 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_LPAREN _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_13 x in
      _menhir_goto_loption_separated_nonempty_list_COMMA_attrib_decl__ _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_goto_loption_separated_nonempty_list_COMMA_attrib_decl__ : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_LPAREN _menhir_cell0_IDENTIFIER -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let xs = _v in
      let _v = _menhir_action_02 xs in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENTIFIER (_menhir_stack, i) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let a = _v in
          let _v = _menhir_action_19 a i in
          let n = _v in
          let _v = _menhir_action_40 n in
          _menhir_goto_tpDecl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | CREATE | EOF | MATCH | SET ->
          let _v = _menhir_action_10 () in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00 _tok
      | _ ->
          _eRR ()
  
end

let main =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_main v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

# 97 "lib/parser.mly"
  

# 1341 "lib/parser.ml"
