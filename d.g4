// DLang.g4

grammar DLang;

// Regras de sintaxe
program: declaration*;
declaration: variableDeclaration | functionDeclaration;
variableDeclaration: type IDENTIFIER ('=' expression)? ';';
functionDeclaration: type IDENTIFIER '(' parameterList? ')' block;
parameterList: parameter (',' parameter)*;
parameter: type IDENTIFIER;
block: '{' statement* '}';
statement: variableDeclaration | assignment | expressionStatement;
assignment: IDENTIFIER '=' expression ';';
expressionStatement: expression ';';
expression: additiveExpression;
additiveExpression: multiplicativeExpression (('+' | '-') multiplicativeExpression)*;
multiplicativeExpression: primaryExpression (('*' | '/') primaryExpression)*;
primaryExpression: INT | FLOAT | IDENTIFIER | '(' expression ')';
type: 'int' | 'float'; // Simplificado para int e float
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
INT: [0-9]+;
FLOAT: [0-9]* '.' [0-9]+;
WS: [ \t\r\n]+ -> skip;
