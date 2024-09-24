%{
#include <stdio.h>
#include <string.h>

void invalid_format() {
    printf("Error: Invalid DOB format (DD/MM/YYYY expected)\n");
}
%}

%%
[0-9][0-9]/[0-1][0-9]/[0-9]{4} { /* Valid format (basic check) */ }
. { invalid_format(); }  /* Any other character is invalid */
%%

int yywrap() {
    return 1;
}

int main() {
    char dob[11];  // Allow space for 10 digits and separator

    printf("Enter student's DOB (DD/MM/YYYY): ");
    scanf("%s", dob);

    yylex();

    return 0;
}