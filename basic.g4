// QBasic.g4

grammar QBasic;

// Regras de sintaxe
programa: linha+;
linha: LINHA_NUM ':' comando;
comando: PRINT texto | INPUT variavel;
texto: STRING;
variavel: VAR;

// Definição de tokens
LINHA_NUM: [0-9]+;
STRING: '"' .*? '"';
VAR: [A-Z]+;
PRINT: 'PRINT';
INPUT: 'INPUT';
WS: [ \t\r\n]+ -> skip;
