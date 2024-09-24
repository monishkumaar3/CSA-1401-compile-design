#include <stdio.h>
#include <ctype.h>

int main() {
    char sentence[1000];
    int vowelCount = 0, consonantCount = 0;
    int i;

    // Taking input
    printf("Enter a sentence: ");
    fgets(sentence, sizeof(sentence), stdin);

    // Loop through the sentence to check for vowels and consonants
    for ( i = 0; sentence[i] != '\0'; i++) {
        char ch = tolower(sentence[i]);  // Convert character to lowercase for uniformity

        // Check if the character is a vowel
        if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
            vowelCount++;
        }
        // Check if the character is a consonant
        else if (ch >= 'a' && ch <= 'z') {
            consonantCount++;
        }
    }

    // Display the result
    printf("Number of vowels: %d\n", vowelCount);
    printf("Number of consonants: %d\n", consonantCount);

    return 0;
}

