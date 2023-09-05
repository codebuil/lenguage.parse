// TypeScriptLike.g4

grammar TypeScriptLike;

// Regras de sintaxe
program: statement+;
statement: variableDeclaration | expressionStatement;
variableDeclaration: 'let' IDENTIFIER ('=' expression)? ';';
expressionStatement: expression ';';
expression: additiveExpression;
additiveExpression: multiplicativeExpression (('+' | '-') multiplicativeExpression)*;
multiplicativeExpression: primaryExpression (('*' | '/') primaryExpression)*;
primaryExpression: INT | FLOAT | IDENTIFIER | '(' expression ')';
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
INT: [0-9]+;
FLOAT: [0-9]* '.' [0-9]+;
WS: [ \t\r\n]+ -> skip;
