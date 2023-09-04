// GoParser.g4

grammar GoParser;

// Regras de sintaxe
program: packageClause? importDeclarations? topDeclarations?;

packageClause: 'package' IDENTIFIER ';';

importDeclarations: importDeclaration+;

importDeclaration: 'import' (
    '."' STRING '"' ';' |
    '(' STRING '""' ')' ';'
);

topDeclarations: topDeclaration+;

topDeclaration: functionDeclaration;

functionDeclaration: 'func' IDENTIFIER '(' parameters? ')' returnType? block;

parameters: parameterDecl (',' parameterDecl)*;

parameterDecl: IDENTIFIER type;

returnType: '->' type;

type: IDENTIFIER;

block: '{' (statement)* '}';

statement: simpleStmt | returnStmt;

simpleStmt: assignment | declaration;

assignment: expressionList '=' expressionList;

declaration: 'var' IDENTIFIER (type '=')? expressionList;

expressionList: expression (',' expression)*;

expression: IDENTIFIER;

returnStmt: 'return' expressionList?;

// Definição de tokens
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
STRING: '"' .*? '"';
WS: [ \t\r\n]+ -> skip;
