// BashLike.g4

grammar BashLike;

// Regras de sintaxe
program: command+;
command: assignment | simpleCommand;

assignment: variable '=' expression;
variable: VAR_NAME;
expression: STRING | INT;

simpleCommand: commandName (arguments)?;
commandName: IDENTIFIER;
arguments: argument (argument)*;
argument: STRING | VAR_NAME;

// Definição de tokens
VAR_NAME: '$' IDENTIFIER;
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
STRING: '"' .*? '"';
INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
