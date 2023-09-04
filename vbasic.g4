// VisualBasic2.g4

grammar VisualBasic2;

// Regras de sintaxe
program: statement+;
statement: variableDeclaration ;
variableDeclaration: 'DIM' variableName ('AS' type)? ;
type: 'INTEGER' | 'STRING' ;
variableName: ID ;

// Definição de tokens
ID: [a-zA-Z_][a-zA-Z_0-9]* ;
WS: [ \t\r\n]+ -> skip ;
