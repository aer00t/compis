/* simplest version of calculator */
%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(char* s);
int yylex();
%}



/* declare tokens */
%token NUMBER
%token ADD SUB MUL DIV ABS
%token EOL

%%
calclist: 
| calclist exp EOL { printf("= %d\n", $2); }
;

exp: factor
| exp ADD factor { $$ = $1 + $3; printf("suma %d + %d \n",$1,$3); }
| exp SUB factor { $$ = $1 - $3; printf("resta %d - %d \n",$1,$3); }
;

factor: term
| factor MUL term { $$ = $1 * $3; printf("multi %d * %d \n",$1,$3); }
| factor DIV term { $$ = $1 / $3; printf("div %d / %d \n",$1,$3); }
;

term: NUMBER
| ABS term
{ $$ = $2 >= 0? $2 : - $2; }
;
%%

int main()
{
yyparse();
return 0;
}

void yyerror(char *s)
{
fprintf(stderr, "error: %s\n", s);
exit(1);
}