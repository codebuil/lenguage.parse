// XSharpLike.g4

grammar XSharpLike;

// Regras de sintaxe
program: statement+;
statement: variableDeclaration | expressionStatement;
variableDeclaration: 'LOCAL' IDENTIFIER (':=' expression)? ';';
expressionStatement: expression ';';
expression: additiveExpression;
additiveExpression: multiplicativeExpression (('+' | '-') multiplicativeExpression)*;
multiplicativeExpression: primaryExpression (('*' | '/') primaryExpression)*;
primaryExpression: INT | IDENTIFIER | '(' expression ')';
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
