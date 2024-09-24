%{
#include <stdio.h>
%}

%%

[0-9]      { printf("%s is a digit.\n", yytext); }
.          { printf("%s is not a digit.\n", yytext); }

%%

int main() {
    printf("Enter the input:\n");
    yylex();  // Start scanning for patterns
    return 0;
}

int yywrap() {
    return 1;
}
