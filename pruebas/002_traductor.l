/* Basic English translation */

%%
"hello" { printf("Hola"); }
"bye" { printf("Adios"); }
"god" { printf("Dios"); }
. { printf("%s",yytext); }
%%


int main(int argc, char **argv)
{
yylex();
return 0;
}