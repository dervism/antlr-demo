# Minimal example

Install and setup ANTLR:

	$ brew install antlr
	$ export CLASSPATH=".:/usr/local/Cellar/antlr/4.7.1/antlr-4.7.1-complete.jar"

Create the grammar:

	$ touch Hello.g4
	$ nano Hello.g4

Add the following text:

	grammar Hello;
	r : 'hello' ID ;
	ID : [a-z]+ ;
	WS : [ \t\r\n]+ -> skip ;

Save the file with ^O and ^X. Then run ANTLR on the grammar:

	$ antlr4 Hello.g4
	$ javac *.java

To test the grammar, run grun:

	$ grun Hello r -tokens
	$ hello TestInput
	$ <<press ^D to exit and see output>>

You should then see the following output:

```
[@0,0:4='hello',<'hello'>,1:0]
[@1,7:9='est',<ID>,1:7]
[@2,11:14='nput',<ID>,1:11]
[@3,16:15='<EOF>',<EOF>,2:0]
```
