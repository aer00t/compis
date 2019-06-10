calc: 005_calculadora.l 005_calculadora.y
	bison -d 005_calculadora.y
	flex 005_calculadora.l
	gcc -o $@ 005_calculadora.tab.c lex.yy.c -lfl
clean: 
	rm -rf *.tab.* calc lex.yy.c
