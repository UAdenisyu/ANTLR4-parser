// define a grammar called Test 
grammar Test;
prog : 'test' ID EOF;         // match keyword test followed by an identifier
ID : [a-z]+ ;             // match lower-case identifiers
WS : [ \t\r\n]+ -> skip ; // skip spaces, tabs, newlines