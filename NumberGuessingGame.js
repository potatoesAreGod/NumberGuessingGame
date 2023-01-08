var readline = require("readline");
var terminal = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

let correctNumber = Math.floor(Math.random() * Math.floor(100)) + 1;
var guessCount = 0;

console.log("Guess a number between 1-100");
terminal.prompt();

terminal.on("line", function (answer) {
  guessCount++;
  let guess = parseInt(answer);

  if (guess > correctNumber) {
    console.log("You guessed to high");
    terminal.prompt();
  } else if (guess < correctNumber) {
    console.log("You guessed to low");
    terminal.prompt();
  } else if (guess === correctNumber) {
    console.log("Correct, you guessed " + guessCount + " times");
    terminal.close();
  } else {
    console.log("That wasn't a number");
  }
});
