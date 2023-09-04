// MakeLike.g4

grammar MakeLike;

// Regras de sintaxe
program: statement+;
statement: target ':' dependencies (':' recipe)? NEWLINE;
target: IDENTIFIER;
dependencies: IDENTIFIER (IDENTIFIER)*;
recipe: INDENT (command NEWLINE)+ DEDENT;
command: STRING;
 
// Definição de tokens
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
STRING: '"' .*? '"';
INDENT: '\t';
NEWLINE: '\r'? '\n' | '\r';
DEDENT: '\u0004';
 
WS: [ \t]+ -> skip;
