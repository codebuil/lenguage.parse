grammar VBScript;

program: statement+ ;

statement: variableDeclaration
         | assignmentStatement
         | ifStatement
         | whileStatement
         | forStatement
         | functionDeclaration
         | expressionStatement
         | exitStatement
         | printStatement
         ;

variableDeclaration: 'Dim' ID (',' ID)* ;

assignmentStatement: ID '=' expression ;

ifStatement: 'If' expression 'Then' statement+ ('Else' statement+)? 'End If' ;

whileStatement: 'While' expression 'End While' ;

forStatement: 'For' ID '=' expression 'To' expression 'Step' expression 'Next' ;

functionDeclaration: 'Function' ID '(' parameterList? ')' statement+ 'End Function' ;

parameterList: ID (',' ID)* ;

expressionStatement: expression ;

exitStatement: 'Exit' ;

printStatement: 'Print' expression ;

expression: expression ('+'|'-'|'*'|'/'|'<'|'>'|'='|'<>'|'&') expression
          | '(' expression ')'
          | ID
          | NUMBER
          | STRING
          | 'True'
          | 'False'
          | 'Nothing'
          | 'Null'
          ;

ID: [a-zA-Z_]+[a-zA-Z0-9_]* ;
NUMBER: [0-9]+ ('.' [0-9]+)? ;
STRING: '"' (ESC | ~["\\])* '"' ;

fragment ESC: '\\' (["\\/bfnrt] | UNICODE) ;
fragment UNICODE: 'u' HEX HEX HEX HEX ;
fragment HEX: [0-9a-fA-F] ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

