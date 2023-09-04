grammar Assembly65000;

program: statement+ ;

statement: label? opcode operand (',' operand)? ;

label: ID ':' ;

opcode: 'ADD' | 'SUB' | 'MOV' | 'LDA' | 'STA' ;

operand: REGISTER | IMMEDIATE ;

REGISTER: 'R0' | 'R1' | 'R2' | 'R3' | 'R4' | 'R5' | 'R6' | 'R7' ;

IMMEDIATE: '#' INT ;

INT: [0-9]+ ;

ID: [a-zA-Z]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco
