grammar JavaScript;

program: statement+ ;

statement: variableDeclaration
         | assignmentStatement
         | ifStatement
         | whileStatement
         | functionDeclaration
         ;

variableDeclaration: 'var' ID (',' ID)* ';' ;

assignmentStatement: ID '=' expression ';' ;

ifStatement: 'if' '(' expression ')' '{' statement+ '}' ('else' '{' statement+ '}')? ;

whileStatement: 'while' '(' expression ')' '{' statement+ '}' ;

functionDeclaration: 'function' ID '(' parameterList? ')' '{' statement+ '}' ;

parameterList: ID (',' ID)* ;

expression: expression ('+'|'-'|'*'|'/'|'%'|'=='|'!='|'>'|'<'|'>='|'<=') expression
          | '(' expression ')'
          | ID
          | NUMBER
          | STRING
          | 'true'
          | 'false'
          | 'null'
          ;

ID: [a-zA-Z_]+[a-zA-Z0-9_]* ;
NUMBER: [0-9]+ ('.' [0-9]+)? ;
STRING: '"' (ESC | ~["\\])* '"' ;

fragment ESC: '\\' (["\\/bfnrt] | UNICODE) ;
fragment UNICODE: 'u' HEX HEX HEX HEX ;
fragment HEX: [0-9a-fA-F] ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

