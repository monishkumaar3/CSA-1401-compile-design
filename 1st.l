%{
#include <stdio.h>
%}

%%

[A-Z]+    { printf("Capitalized word found: %s\n", yytext); }
\n        { /* Do nothing for new lines */ }
.         { /* Ignore all other characters */ }

%%

int main() {
    printf("Enter the input text:\n");
    yylex();  // Start scanning for patterns
    return 0;
}

int yywrap() {
    return 1;
}
