// SimpleEcho.g4

grammar SimpleEcho;

// Regras de sintaxe
program: echoCommand (',' echoCommand)*;
echoCommand: 'echo' STRING;

// Definição de tokens
STRING: '"' .*? '"';
WS: [ \t\r\n]+ -> skip;
