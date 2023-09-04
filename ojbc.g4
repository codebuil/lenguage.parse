// ObjectiveC.g4

grammar ObjectiveC;

// Regras de sintaxe
program: declaration+;
declaration: classDeclaration | methodDeclaration;

classDeclaration: '@interface' className ':' superClass? interfaceDeclarations? '@end';
className: IDENTIFIER;
superClass: IDENTIFIER;
interfaceDeclarations: instanceVariables methodDeclaration*;

methodDeclaration: returnType? methodName methodParameters? ';';
returnType: type;
methodName: '-' IDENTIFIER;
methodParameters: '(' parameterList? ')';
parameterList: parameter (',' parameter)*;
parameter: type paramName;
type: IDENTIFIER;
paramName: IDENTIFIER;

// Definição de tokens
IDENTIFIER: [a-zA-Z_][a-zA-Z_0-9]*;
WS: [ \t\r\n]+ -> skip;
