%{
#include <stdio.h>
%}

%%
"+"          { printf("Plus operator: %s\n", yytext); }
"-"          { printf("Minus operator: %s\n", yytext); }
"*"          { printf("Multiplication operator: %s\n", yytext); }
"/"          { printf("Division operator: %s\n", yytext); }
"%"          { printf("Modulus operator: %s\n", yytext); }
"="          { printf("Assignment operator: %s\n", yytext); }
"=="         { printf("Equal to operator: %s\n", yytext); }
"!="         { printf("Not equal to operator: %s\n", yytext); }
">"          { printf("Greater than operator: %s\n", yytext); }
"<"          { printf("Less than operator: %s\n", yytext); }
">="         { printf("Greater than or equal to operator: %s\n", yytext); }
"<="         { printf("Less than or equal to operator: %s\n", yytext); }
"&&"         { printf("Logical AND operator: %s\n", yytext); }
"||"         { printf("Logical OR operator: %s\n", yytext); }
"!"          { printf("Logical NOT operator: %s\n", yytext); }
.            { printf("Invalid operator: %s\n", yytext); }

%%

int main() {
    printf("Enter an expression: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
