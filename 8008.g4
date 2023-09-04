grammar Assembly8008;

program: statement+ ;

statement: label? opcode operand ;

label: ID ':' ;

opcode: 'NOP' | 'HLT' | 'LDA' | 'STA' | 'ADD' | 'SUB' | 'INR' | 'DCR' ;

operand: REGISTER | NUMBER ;

REGISTER: 'B' | 'C' | 'D' | 'E' | 'H' | 'L' | 'M' | 'A' ;

NUMBER: [0-9]+ ;

ID: [a-zA-Z]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

