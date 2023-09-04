// PerlLike.g4

grammar PerlLike;

// Regras de sintaxe
program: statement+;
statement: variableDeclaration | expressionStatement;
variableDeclaration: '$' IDENTIFIER ('=' expression)? ';';
expressionStatement: expression ';';
expression: assignmentExpression;
assignmentExpression: IDENTIFIER '=' additiveExpression;
additiveExpression: multiplicativeExpression (('+' | '-') multiplicativeExpression)*;
multiplicativeExpression: primaryExpression (('*' | '/') primaryExpression)*;
primaryExpression: INT | FLOAT | IDENTIFIER | '(' expression ')';
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
INT: [0-9]+;
FLOAT: [0-9]* '.' [0-9]+;
WS: [ \t\r\n]+ -> skip;
