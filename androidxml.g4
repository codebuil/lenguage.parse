// XMLLike.g4

grammar XMLLike;

// Regras de sintaxe
document: element;
element: startTag content? endTag;
startTag: '<' NAME (attribute)* '>';
endTag: '</' NAME '>';
content: (element | TEXT)*;
attribute: NAME '=' STRING;
TEXT: ~[<>&]+;
NAME: [a-zA-Z_][a-zA-Z_0-9]*;
STRING: '"' .*? '"';
WS: [ \t\r\n]+ -> skip;
