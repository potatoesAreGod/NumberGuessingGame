#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main() {
    int num = 1;
    int guess = 1;
    int guessCount = 0;
    srand(time(NULL));
    num = rand() % 100 + 1;
    printf("Welcome to Number Guessing Game. Guess a number between 1-100\n");

    for (int i = 1; i <= 8; i--) {
        printf("\nMake a guess? ");
        scanf("%d", &guess);
        if (guess > num) {
            printf("You guessed higher than the correct number");
            guessCount++;
        }
        else if (guess < num) {
            printf("You guessed lower than the correct number");
            guessCount++;
        }
        else {
            break;
        }
    }
    printf("\nYou WON!! You needed %d attempts\n", guessCount);
    system("pause");
    return 0;
}