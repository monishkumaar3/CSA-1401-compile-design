%{
#include <stdio.h>

// Function to check if a string starts with a vowel
int starts_with_vowel(char *str) {
    char first_char = str[0];
    return first_char == 'a' || first_char == 'e' || first_char == 'i' || 
           first_char == 'o' || first_char == 'u' ||
           first_char == 'A' || first_char == 'E' || first_char == 'I' || 
           first_char == 'O' || first_char == 'U';
}
%}

%%

[aAeEiIoOuU][a-zA-Z]* { 
                            printf("%s starts with a vowel\n", yytext); 
                        }

.|\n                  { /* Ignore other characters and new lines */ }

%%

int main() {
    printf("Enter strings (press Ctrl+Z to end input):\n");
    yylex();  // Start lexical analysis
    return 0;
}

int yywrap() {
    return 1;
}
