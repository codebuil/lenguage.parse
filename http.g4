grammar HTTP;

http_message: request | response ;

request: method SP request_target SP http_version CRLF headers CRLF ;

response: http_version SP status_code SP reason_phrase CRLF headers CRLF ;

method: 'GET' ;

request_target: '/' ;

http_version: 'HTTP/1.0' | 'HTTP/1.1' ;

headers: header* ;

header: field_name ':' field_value CRLF ;

field_name: TOKEN ;

field_value: TEXT ;

status_code: DIGIT DIGIT DIGIT ;

reason_phrase: TEXT ;

TOKEN: [!#$%&'*+.^_`|~-a-zA-Z0-9]+ ;

TEXT: ~[\x00-\x1F\x7F]+ ;

DIGIT: [0-9] ;

SP: ' ' ;

CRLF: '\r\n' ;

WS: [ \t]+ -> skip ; // Ignorar espaços em branco

