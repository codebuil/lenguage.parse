grammar RTF;

rtf_document: group* ;

group: '{' (control_word | control_symbol | rtf_text | group)* '}' ;

control_word: '\\' [a-zA-Z]+ (CONTROL_VALUE | HEX_VALUE)? ;

control_symbol: '\\' ([-_*{}|] | HEX_VALUE) ;

rtf_text: (~[{}\\])+ ;

CONTROL_VALUE: [0-9]+ ;

HEX_VALUE: '\\x' [0-9a-fA-F]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

