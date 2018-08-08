grammar Hello;

@Header {
package no.dervis.antlr.demo.hello
}

r : 'hello' ID ;
ID : [a-z]+ ;
WS : [ \t\r\n]+ -> skip ;
