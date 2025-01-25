
(* The type of tokens. *)

type token = 
  | WHERE
  | TP of (Lang.attrib_tp)
  | SUB
  | STRINGCONSTANT of (string)
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
  | INTCONSTANT of (int)
  | IDENTIFIER of (string)
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
  | BCONSTANT of (bool)
  | ARROW
  | ADD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Lang.prog)
