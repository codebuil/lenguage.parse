// X86Assembly.g4

grammar X86Assembly;

// Regras de sintaxe
program: instruction+;
instruction: movInstruction | addInstruction;

movInstruction: 'mov' operand ',' operand;
addInstruction: 'add' operand ',' operand;

operand: REGISTER | MEMORY | IMMEDIATE;
REGISTER: '%eax' | '%ebx' | '%ecx' | '%edx';
MEMORY: '[' REGISTER ']';
IMMEDIATE: INT;

// Definição de tokens
INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
