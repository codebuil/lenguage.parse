// Java.g4

grammar Java;

// Regras de sintaxe
compilationUnit: packageDeclaration? importDeclaration* classDeclaration EOF;
packageDeclaration: 'package' qualifiedName ';';
importDeclaration: 'import' qualifiedName ';';
classDeclaration: 'class' IDENTIFIER '{' fieldDeclaration* methodDeclaration* '}';
fieldDeclaration: type IDENTIFIER ';';
methodDeclaration: type IDENTIFIER '(' formalParameters? ')' '{' methodBody '}';
formalParameters: formalParameter (',' formalParameter)*;
formalParameter: type IDENTIFIER;
methodBody: statement*;
statement: 'if' '(' expression ')' statement ('else' statement)? 
         | 'while' '(' expression ')' statement 
         | 'return' expression? ';' 
         | expression? ';' ;
expression: primaryExpression ('+' primaryExpression)*;
primaryExpression: IDENTIFIER | INT;
type: 'int' | 'void'; // Simplificado para int e void
qualifiedName: IDENTIFIER ('.' IDENTIFIER)*;

// Definição de tokens
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
