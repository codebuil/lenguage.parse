// PythonLike.g4

grammar PythonLike;

// Regras de sintaxe
program: statement+;
statement: printStatement | ifStatement | assignment | expressionStatement;
printStatement: 'print' expression ';';
ifStatement: 'if' expression ':' block ('else' ':' block)?;
assignment: variable '=' expression ';';
expressionStatement: expression ';';
block: NEWLINE INDENT statement+ DEDENT;

expression: logicalOr;
logicalOr: logicalAnd ('or' logicalAnd)*;
logicalAnd: equality ('and' equality)*;
equality: comparison (('==' | '!=') comparison)*;
comparison: term (('<' | '>' | '<=' | '>=') term)*;
term: factor (('+' | '-') factor)*;
factor: primary ('*' primary)*;
primary: INT | FLOAT | STRING | variable | '(' expression ')';
variable: IDENTIFIER;

// Definição de tokens
INT: [0-9]+;
FLOAT: [0-9]* '.' [0-9]+;
STRING: '"' .*? '"';
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
NEWLINE: '\r'? '\n' | '\r';
INDENT: '    ';
DEDENT: '\u0004';

WS: [ \t]+ -> skip;
