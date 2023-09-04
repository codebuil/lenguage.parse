// Calculadora.g4

grammar Calculadora;

// Regras de sintaxe
expressao: termo ('+' termo | '-' termo)*;
termo: fator ('*' fator | '/' fator)*;
fator: numero;

// Definição de tokens
numero: INT;
INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
