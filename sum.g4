// Accumulator.g4

grammar Accumulator;

// Regras de sintaxe
program: line+;
line: DOUBLE ';' ;
DOUBLE: [0-9]+ ('.' [0-9]*)? | '.' [0-9]+; // Números de ponto flutuante
WS: [ \t\r\n]+ -> skip; // Ignora espaços em branco
