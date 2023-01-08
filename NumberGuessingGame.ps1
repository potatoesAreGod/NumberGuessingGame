[int]$guess = 0
[int]$guessCount = 0
[int]$num = Get-Random -Minimum 1 -Maximum 100


do {
    try {
        $guess = Read-Host "Guess a number between 1-100"

    }
    catch {
        Write-Host "Invalid number"
        continue
    }

    if ($guess -lt $num) {
        Write-Host "You guessed too low, try again!"
    }
    elseif ($guess -gt $num) {
        Write-Host "You guessed too high, try again"
    }

    $guessCount += 1
    
} until ($guess -eq $num)


Write-Host "Correct!!"
Write-Host "It took you ${guessCount} attempts"
