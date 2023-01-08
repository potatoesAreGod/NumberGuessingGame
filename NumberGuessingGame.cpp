#include <iostream>
#include <ctime>
int guessCount = 0;
int guess;
int num;
int main()
{
    srand(time(nullptr));
    num = rand() % 100 + 1;

    do
    {
        std::cout << "Guess a number between 1-100: ";
        std::cin >> guess;
        guessCount++;
        if (guess < num)
        {
            std::cout << "You guessed too low, try again" << std::endl;
        }
        else if (guess > num)
        {
            std::cout << "You guessed too high, try again" << std::endl;
        }
    } while (guess != num);

    std::cout << "Congrats!! You guessed correct" << std::endl;
    std::cout << "You guessed " << guessCount << " times" << std::endl;
    system("pause");
    return 0;
}