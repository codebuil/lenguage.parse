// ARM7Assembly.g4

grammar ARM7Assembly;

// Regras de sintaxe
program: instruction+;
instruction: movInstruction | addInstruction;

movInstruction: 'mov' register ',' immediate;
addInstruction: 'add' register ',' register ',' register;

register: 'r' INT;
immediate: '#' INT;

// Definição de tokens
INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
