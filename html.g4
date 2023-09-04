grammar HTML5;

htmlDocument: element ;

element: openTag content? closeTag
       | selfClosingTag
       ;

openTag: '<' tagName attribute* '>' ;

closeTag: '</' tagName '>' ;

selfClosingTag: '<' tagName attribute* '/>' ;

attribute: attributeName '=' attributeValue ;

attributeName: NAME ;

attributeValue: STRING ;

content: (element | TEXT)* ;

tagName: NAME ;

NAME: [a-zA-Z_][a-zA-Z0-9_]* ;

STRING: '"' (~["<"])* '"' ;

TEXT: ~[<>]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco
