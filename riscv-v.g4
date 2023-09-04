grammar RISCVAssembly;

program: statement+ ;

statement: label? instruction ;

label: ID ':' ;

instruction: 'add' register ',' register ',' register
           | 'sub' register ',' register ',' register
           | 'lw' register ',' INT '(' register ')'
           | 'sw' register ',' INT '(' register ')'
           | 'beq' register ',' register ',' ID
           | 'jal' ID
           | 'jalr' register ',' register
           ;

register: 'x0' | 'x1' | 'x2' | 'x3' | 'x4' | 'x5' | 'x6' | 'x7' | 'x8' | 'x9' | 'x10' | 'x11' | 'x12' | 'x13' | 'x14' | 'x15' ;

ID: [a-zA-Z]+ ;

INT: [0-9]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

