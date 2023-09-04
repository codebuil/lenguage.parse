// ExcelLike.g4

grammar ExcelLike;

// Regras de sintaxe
program: expression;
expression: term (('+' | '-') term)*;
term: factor (('*' | '/') factor)*;
factor: functionCall | cellReference | NUMBER;
functionCall: FUNCTION '(' expression (',' expression)* ')';
cellReference: '$'? LETTER NUMBER;
LETTER: [A-Za-z];
NUMBER: [0-9]+;
FUNCTION: [A-Za-z]+;

// Definição de tokens
WS: [ \t\r\n]+ -> skip;
