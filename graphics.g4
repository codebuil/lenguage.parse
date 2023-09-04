// QBASICGraphics.g4

grammar QBASICGraphics;

// Regras de sintaxe
program: statement+;
statement: psetStatement | screenStatement | lineStatement | circleStatement;

psetStatement: 'PSET' expression ',' expression;
screenStatement: 'SCREEN' expression;
lineStatement: 'LINE' expression ',' expression '-' expression ',' expression;
circleStatement: 'CIRCLE' expression ',' expression ',' expression;

expression: INT;
INT: [0-9]+;
WS: [ \t\r\n]+ -> skip;
