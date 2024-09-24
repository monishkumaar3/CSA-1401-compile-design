%{
#include <stdio.h>
#include <string.h>

// Declare a list of keywords
char *keywords[] = {
    "auto", "break", "case", "char", "const", "continue", "default", "do",
    "double", "else", "enum", "extern", "float", "for", "goto", "if", "int",
    "long", "register", "return", "short", "signed", "sizeof", "static", "struct",
    "switch", "typedef", "union", "unsigned", "void", "volatile", "while"
};
int is_keyword(char *word) {
    for (int i = 0; i < 32; i++) {
        if (strcmp(word, keywords[i]) == 0) {
            return 1;  // It's a keyword
        }
    }
    return 0;  // It's not a keyword
}
%}

%%

[a-zA-Z_][a-zA-Z0-9_]*    { 
                              if (is_keyword(yytext)) {
                                  printf("%s is a keyword\n", yytext);
                              } else {
                                  printf("%s is an identifier\n", yytext);
                              }
                           }
.                         { /* Ignore other characters like symbols and numbers */ }

%%

int main() {
    printf("Enter the code to analyze (press Ctrl+Z to end input):\n");
    yylex();  // Start lexical analysis
    return 0;
}

int yywrap() {
    return 1;
}
