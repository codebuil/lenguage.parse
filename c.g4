// CLike.g4

grammar CLike;

// Regras de sintaxe
program: statement+;
statement: expression ';' ;
expression: additiveExpression;
additiveExpression: multiplicativeExpression (('+' | '-') multiplicativeExpression)* ;
multiplicativeExpression: primaryExpression (('*' | '/') primaryExpression)* ;
primaryExpression: INT | '(' expression ')' ;

// Definição de tokens
INT: [0-9]+ ;
WS: [ \t\r\n]+ -> skip ;
