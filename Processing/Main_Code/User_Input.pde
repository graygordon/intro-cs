int timesPressed = 0;

void keyPressed() {
  if (pick == true) {
    if (keyCode != 8 && keyCode !=10 && timesPressed < 5 && numGuesses < 6) {
      guesses[numGuesses].append(String.valueOf(key));
      timesPressed++;
    } else if (keyCode == 8 && timesPressed > 0 && numGuesses < 6) {
      guesses[numGuesses].remove(timesPressed - 1);
      timesPressed--;
    } else if (keyCode == 10 && timesPressed == 5) {
      numCorrect = 0;
      checkWord();
      numGuesses++;
      guessesRem--;
      timesPressed = 0;
      if (roundOver == true) {
        if (roundWon == false) {
          roundsLost++;
        } else if (roundWon == true) {
          roundsWon++;
        }
      }
    }
  }
}
