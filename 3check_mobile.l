%{
#include <stdio.h>
%}

%%

^[7-9][0-9]{9}$    { printf("%s is a valid mobile number.\n", yytext); }
[0-9]{10}          { printf("%s is an invalid mobile number.\n", yytext); }
.                  { printf("%s is not a valid input.\n", yytext); }

%%

int main() {
    printf("Enter the mobile number to verify (or press Ctrl+Z to exit):\n");
    yylex();  // Start scanning for patterns
    return 0;
}

int yywrap() {
    return 1;
}
