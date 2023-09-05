// Assembly8080Like.g4

grammar Assembly8080Like;

// Regras de sintaxe
program: line+;
line: label? instruction? comment? NEWLINE;
label: IDENTIFIER ':';
instruction: OPCODE OPERANDS;
comment: ';' ~[\r\n]*;
OPCODE: [a-zA-Z]{1,3};
OPERANDS: [a-zA-Z0-9,]+;
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
NEWLINE: '\r'? '\n' | '\r';
WS: [ \t]+ -> skip;
