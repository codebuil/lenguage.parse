grammar Assembly4004;

program: statement+ ;

statement: label? opcode operand ;

label: ID ':' ;

opcode: 'NOP' | 'HLT' | 'CLA' | 'CMA' | 'INC' | 'DEC' ;

operand: REGISTER | NUMBER ;

REGISTER: 'R0' | 'R1' | 'R2' | 'R3' ;

NUMBER: [0-9]+ ;

ID: [a-zA-Z]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

