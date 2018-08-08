grammar Hello;

@Header {
package no.dervis.hello
}

r : 'hello' ID ;
ID : [a-z]+ ;
WS : [ \t\r\n]+ -> skip ;
