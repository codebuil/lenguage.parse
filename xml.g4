grammar SimpleXML;

document: prolog? element ;

prolog: '<?' XMLDecl '?>' ;

XMLDecl: 'xml' VersionInfo EncodingDecl? SDDecl? ;

VersionInfo: 'version' Eq STRING ;

Eq: '=' ;

EncodingDecl: 'encoding' Eq STRING ;

SDDecl: 'standalone' Eq STRING ;

element: startTag content? endTag ;

startTag: '<' NAME attribute* '>' ;

endTag: '</' NAME '>' ;

attribute: NAME Eq STRING ;

content: element | TEXT ;

TEXT: ~[<]+ ;

NAME: [a-zA-Z_][a-zA-Z0-9_]* ;

STRING: '"' (~["])* '"' ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

