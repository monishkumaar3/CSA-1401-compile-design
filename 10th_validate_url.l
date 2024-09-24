%{
#include <stdio.h>
#include <string.h>

int url_valid = 1;

void check_url(char *url) {
    if (strstr(url, "http://") == NULL && strstr(url, "https://") == NULL) {
        printf("Error: URL must start with http:// or https://\n");
        url_valid = 0;
    }

    if (strstr(url, ".") == NULL) {
        printf("Error: URL must contain at least one dot (.)\n");
        url_valid = 0;
    }

    // Additional checks for specific URL patterns or restrictions (if applicable)
    // ...
}
%}

%%
http://[a-zA-Z0-9._-]+\.[a-zA-Z]{2,4} { check_url(yytext); }
https://[a-zA-Z0-9._-]+\.[a-zA-Z]{2,4} { check_url(yytext); }
. { printf("Error: Invalid character in URL\n"); url_valid = 0; }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();

    if (url_valid) {
        printf("URL is valid\n");
    } else {
        printf("URL is invalid\n");
    }

    return 0;
}