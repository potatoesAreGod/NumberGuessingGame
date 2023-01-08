Module GuessGame
    Public Sub Main()
        Dim num As Integer = Int((100 * Rnd) + 1)
        Dim guessCount As Integer = 0
        Dim guess As Integer

        Console.WriteLine("Guess a number between 1 - 100!")

        While guess <> num
            Console.WriteLine("Please enter your guess: ")
            guess = Console.ReadLine()
            guessCount += 1

            If guess < num Then
                Console.WriteLine("Your guess was too low!")

            ElseIf guess > num Then
                Console.WriteLine("Your guess was too high!")

            ElseIf guess = num Then
                Console.WriteLine("You win!")
                Console.WriteLine("You needed, {0}, attempts to guess the number.", guessCount)
                Console.WriteLine("Press any key to exit . . .")
                Console.ReadKey(True)
                
            End If
        End While
    End Sub
End Module
