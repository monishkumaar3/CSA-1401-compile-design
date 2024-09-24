%{
#include <stdio.h>
%}

%%
[a-zA-Z]+ { printf("Word: %s\n", yytext); }
[<>=!]= { printf("Relational operator: %s\n", yytext); }
. { printf("Unknown token: %s\n", yytext); }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}