// index.g4

grammar SimpleLanguage;

// Regras de sintaxe
program: statement+;
statement: declaration | assignment | print;
declaration: 'var' ID ';';
assignment: ID '=' expression ';';
print: 'print' expression ';';
expression: INT | ID;
ID: [a-zA-Z_][a-zA-Z_0-9]*;
INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
