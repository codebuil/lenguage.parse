// CppLike.g4

grammar CppLike;

// Regras de sintaxe
program: statement+;
statement: declaration | expression ';' ;
declaration: type variableName ('=' expression)? ;
type: 'int' | 'float' | 'double' ;
variableName: ID ;
expression: additiveExpression;
additiveExpression: multiplicativeExpression (('+' | '-') multiplicativeExpression)* ;
multiplicativeExpression: primaryExpression (('*' | '/') primaryExpression)* ;
primaryExpression: INT | FLOAT | '(' expression ')' ;

// Definição de tokens
ID: [a-zA-Z_][a-zA-Z_0-9]* ;
INT: [0-9]+ ;
FLOAT: [0-9]* '.' [0-9]+ ;
WS: [ \t\r\n]+ -> skip ;
