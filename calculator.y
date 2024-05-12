%{
#include <stdio.h>
#include "calculator.tab.h"

extern int yylex();
void yyerror(const char *s);
%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%

ArithmeticExpression: E {
    printf("\nResult=%d\n", $$);
    return 0;
};

E: E '+' E { $$ = $1 + $3; }
 | E '-' E { $$ = $1 - $3; }
 | E '*' E { $$ = $1 * $3; }
 | E '/' E { $$ = $1 / $3; }
 | E '%' E { $$ = $1 % $3; }
 | '(' E ')' { $$ = $2; }
 | NUMBER { $$ = $1; }
;

%%

int main() {
    yyparse();
    return 0;
}

void yyerror(const char *s) {
    printf("\nError: %s\n", s);
}
