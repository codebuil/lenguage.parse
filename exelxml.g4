grammar ExcelXML;

document: element ;

element: startTag content? endTag ;

startTag: '<' NAME (attribute)* '>' ;

endTag: '</' NAME '>' ;

attribute: NAME '=' STRING ;

content: element | TEXT ;

TEXT: ~[<]+ ;

NAME: [a-zA-Z_][a-zA-Z0-9_]* ;

STRING: '"' (~["])* '"' ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

