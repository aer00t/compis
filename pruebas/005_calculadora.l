/* recognize tokens for the calculator and print them out */
%{
#include "005_calculadora.tab.h"
%}

%%
"+" { 
    printf("suma\n");
    return ADD; 
    }
"-" { 
    printf("resta\n");
    return SUB; 
    }
"*" { 
    printf("multi\n");
    return MUL; 
    }
"/" { 
    printf("div\n");
    return DIV; 
    }
"|" { 
    printf("abs\n");
    return ABS; 
    }
[0-9]+ { 
    yylval = atoi(yytext);
    printf("numero %d\n",yylval);
    return NUMBER; 
    }
\n { return EOL; }
[ \t] { /* ignore whitespace */ }
. { printf("caracter desconocido %c\n", *yytext); }
%%
