grammar PostScript;

postscript_program: command* ;

command: '{' code_sequence '}' ;

code_sequence: (operand | operator | command)* ;

operand: NUMBER | STRING | NAME ;

operator: OPERATOR ;

NUMBER: (DIGIT+ ('.' DIGIT*)?) | (DIGIT* '.' DIGIT+) ;

STRING: '(' (~['()\\])* ')' ;

NAME: '/' [a-zA-Z_][a-zA-Z0-9_]* ;

OPERATOR: '+' | '-' | '*' | '/' | 'eq' | 'ne' | 'gt' | 'lt' | 'le' | 'ge' ;

DIGIT: [0-9] ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

