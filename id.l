%{
#include <stdio.h>
%}

%%
[a-zA-Z_][a-zA-Z0-9_]*   { printf("%s is a valid identifier\n", yytext); }
[0-9]+                    { printf("%s is a number, not a valid identifier\n", yytext); }
.                         { printf("%s is an invalid identifier\n", yytext); }

%%

int main() {
    printf("Enter a string: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
