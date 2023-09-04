// RustLike.g4

grammar RustLike;

// Regras de sintaxe
program: statement+;
statement: variableDeclaration | expressionStatement;
variableDeclaration: 'let' IDENTIFIER ':' type '=' expression ';';
expressionStatement: expression ';';
expression: assignmentExpression;
assignmentExpression: IDENTIFIER '=' additiveExpression;
additiveExpression: multiplicativeExpression (('+' | '-') multiplicativeExpression)*;
multiplicativeExpression: primaryExpression ('*' primaryExpression)*;
primaryExpression: INT | IDENTIFIER | '(' expression ')';
type: 'i32';
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
