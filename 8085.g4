grammar Assembly8085;

program: statement+;

statement: label? opcode (operand1 (',' operand2)?)? ;

label: ID ':' ;

opcode: 'MOV' | 'ADD' | 'SUB' | 'HLT' ;  // Exemplo de algumas instruções Assembly 8085

operand1: REGISTER | NUMBER ;

operand2: REGISTER | NUMBER ;

REGISTER: 'A' | 'B' | 'C' | 'D' | 'E' | 'H' | 'L' ;

NUMBER: [0-9]+ ;

ID: [a-zA-Z]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco
