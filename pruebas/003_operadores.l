/* Basic operators */
/*n this simple flex program, there’s no C code in the third section. The flex library*/
/*( -lfl ) provides a tiny main program that just calls the scanner,*/

%%
"+" {  }
"-" { printf("Resta\n"); }
"*" { printf("Multiplicación\n"); }
"/" { printf("División\n"); }
"|" { printf("Abs\n"); }
[0-9]+ { printf("Número: %s\n", yytext); }
\n  {  }
[ \t] {  }
.  { printf("Simbolo desconocido\n"); }
%%
