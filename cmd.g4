// WindowsBatch.g4

grammar WindowsBatch;

// Regras de sintaxe
program: command+;
command: echoCommand | setCommand | callCommand | remCommand;

echoCommand: 'echo' STRING?;
setCommand: 'set' VAR '=' (STRING | VAR);
callCommand: 'call' STRING;
remCommand: 'rem' ANY*;

// Definição de tokens
VAR: '%' .*? '%';  // Variável entre %%
STRING: '"' .*? '"';
ANY: .;
WS: [ \t\r\n]+ -> skip;
