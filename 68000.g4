grammar Assembly68000;

program: statement+ ;

statement: label? opcode operand (',' operand)? ;

label: ID ':' ;

opcode: 'MOVE' | 'ADD' | 'SUB' | 'MULU' | 'DIVU' | 'AND' | 'OR' | 'NOT' | 'BRA' ;

operand: register | immediate | memory ;

register: 'D0' | 'D1' | 'D2' | 'D3' | 'D4' | 'D5' | 'D6' | 'D7' | 'A0' | 'A1' | 'A2' | 'A3' | 'A4' | 'A5' | 'A6' | 'A7' ;

immediate: '#' INT ;

memory: INT '(' register ')' ;

INT: [0-9]+ ;

ID: [a-zA-Z]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

