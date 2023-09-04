grammar FTP;

ftp_command: user_command | pass_command | pwd_command | cwd_command ;

user_command: 'USER' SP username CRLF ;

pass_command: 'PASS' SP password CRLF ;

pwd_command: 'PWD' CRLF ;

cwd_command: 'CWD' SP path CRLF ;

username: TEXT ;

password: TEXT ;

path: TEXT ;

SP: ' ' ;

CRLF: '\r\n' ;

TEXT: ~[\r\n]+ ;

WS: [ \t\r\n]+ -> skip ; // Ignorar espaços em branco

