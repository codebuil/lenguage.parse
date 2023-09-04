// PascalLike.g4

grammar PascalLike;

// Regras de sintaxe
program: 'program' IDENTIFIER ';' block '.';
block: declarations compoundStatement;
declarations: (variableDeclaration | procedureDeclaration)*;
variableDeclaration: 'var' (variableDeclarations)+;
variableDeclarations: IDENTIFIER (',' IDENTIFIER)* ':' type ';';
type: 'integer' | 'real' | 'boolean';
procedureDeclaration: 'procedure' IDENTIFIER ';' block ';';
compoundStatement: 'begin' statementList 'end';
statementList: statement (';' statement)*;
statement: assignmentStatement | procedureCallStatement | ifStatement | whileStatement;
assignmentStatement: variable ':=' expression;
procedureCallStatement: IDENTIFIER '(' actualParameters ')';
ifStatement: 'if' condition 'then' statement ('else' statement)?;
whileStatement: 'while' condition 'do' statement;
condition: expression;
expression: simpleExpression (('=' | '<>' | '<' | '<=' | '>' | '>=') simpleExpression)?;
simpleExpression: term (('+' | '-' | 'or') term)*;
term: factor (('*' | '/' | 'and') factor)*;
factor: NUMBER | BOOL | 'not' factor | variable | '(' expression ')';
variable: IDENTIFIER;
actualParameters: expression (',' expression)*;

// Definição de tokens
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
NUMBER: [0-9]+ ('.' [0-9]*)?;
BOOL: 'true' | 'false';
WS: [ \t\r\n]+ -> skip;
