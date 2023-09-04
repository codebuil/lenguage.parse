// AWKLike.g4

grammar AWKLike;

// Regras de sintaxe
program: statement+;
statement: printStatement | ifStatement | assignment;
printStatement: 'print' expression;
ifStatement: 'if' '(' condition ')' '{' statement+ '}' ('else' '{' statement+ '}')?;
assignment: VAR '=' expression;

condition: expression (comparisonOperator expression)?;
expression: term (('+' | '-') term)*;
term: factor (('*' | '/') factor)*;
factor: VAR | INT | STRING;

// Definição de tokens
VAR: [a-zA-Z_][a-zA-Z_0-9]*;
INT: [0-9]+;
STRING: '"' .*? '"';
WS: [ \t\r\n]+ -> skip;

// Operadores de comparação
comparisonOperator: '==' | '!=' | '<' | '<=' | '>' | '>=';
a