Los archivos:

001_count_letras.l 
002_traductor.l
003_operadores.l
004_preCalculadora.l

Son ejemplos de flex
Para generar el ejecutable del parser:
Traducir programa.
$flex 001_count_letras.l 
Salida fichero lex.cc.y

Compilar con la biblioteca de flex.
$cc lex.yy.c -lfl
Salida a.out

Ejecutar el programa
$./a.out

Para 005_calculadora.l y 005_calculadora.y usar make de la siguiente forma
$make calc
Para borrar los archivos generados por make calc usar:
$make clean
