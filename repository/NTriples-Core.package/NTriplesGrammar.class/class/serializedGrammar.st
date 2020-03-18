grammar
serializedGrammar
^ 'NTriples <: BuiltInRules {

Object = 
  reference | blankNodeLabel | literal

Predicate = 
  reference

Subject = 
  reference | blankNodeLabel

Triple =
  Subject Predicate Object "."

Triples =
  Triple*

blankNodeLabel = 
  "_:" alnum (alnum | ".")*

document = 
  Triple? (tripleSeparator Triple)* spaces*

escapedChar =
  "\\" ("t" | "b" | "n" | "\\" | "r" | "\''" | "\"")

firstRule = "start"

languageTag =
  "@" letter+ ("-" alnum+)*

literal = 
  stringLiteral stringLiteralAddition?

reference =
  "<" (~">" any)* ">"

stringLiteral = 
 "\"" (~"\"" (escapedChar | unicodeChar | any ))* "\""

stringLiteralAddition =
  "^^" reference -- reference
  | languageTag

tripleSeparator =
  ("\n" spaces)* "\n"

unicodeChar =
  "\\u" hexDigit hexDigit hexDigit hexDigit --short
  | "\\U" hexDigit hexDigit hexDigit hexDigit hexDigit hexDigit hexDigit hexDigit --long}'