grammar X64Assembly;

program: statement+ ;

statement: label? instruction ;

label: ID ':' ;

instruction: 'mov' operand ',' operand
           | 'add' operand ',' operand
           | 'sub' operand ',' operand
           | 'mul' operand
           | 'div' operand
           | 'jmp' ID
           | 'cmp' operand ',' operand
           | 'je' ID
           | 'jne' ID
           | 'jl' ID
           | 'jg' ID
           ;

operand: register
        | memory
        | immediate
        ;

register: 'rax' | 'rbx' | 'rcx' | 'rdx' | 'rsi' | 'rdi' | 'rsp' | 'rbp' ;

memory: '[' register ']' ;

immediate: '$' INT ;

ID: [a-zA-Z_]+[a-zA-Z0-9_]* ;

INT: [0-9]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

