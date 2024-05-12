%{
#include<stdio.h>
#include "calculator.tab.h"
extern int yylval;
extern int yylex();
%}

%%

[0-9]+ {
    yylval = atoi(yytext);
    return NUMBER;
}

[\t] return 0;
[\n] return 0;
. return yytext[0];

%%

int yywrap() {
    return 1;
}
