%{
#include <stdio.h>
#include <string.h>

#define MAX_WORD_LENGTH 100

int max_length = 0;
char current_word[MAX_WORD_LENGTH];

void update_max_length() {
    int length = strlen(current_word);
    if (length > max_length) {
        max_length = length;
    }
}
%}

%%

[a-zA-Z]+  { 
                // Copy the current word and update the maximum length
                strncpy(current_word, yytext, MAX_WORD_LENGTH - 1);
                current_word[MAX_WORD_LENGTH - 1] = '\0';  // Ensure null-termination
                update_max_length(); 
            }

.|\n      { /* Ignore other characters */ }

%%

int main() {
    printf("Enter the text (press Ctrl+Z to end input):\n");
    yylex();  // Start lexical analysis
    printf("The length of the longest word is: %d\n", max_length);
    return 0;
}

int yywrap() {
    return 1;
}
