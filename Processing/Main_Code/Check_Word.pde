int numGuesses = 0;
int numCorrect = 0;
int guessesRem = 6;
boolean roundOver = true;
boolean roundWon = true;

void checkWord () {
  for (int a = 0; a < words[wordChoice].size(); a++) {
    String word1 = words[wordChoice].get(a);
    String word2 = guesses[numGuesses].get(a);
    boolean lettersMatch = true;
    for (int b = 0; b < word1.length(); b++) {
      if (word1.charAt(b) != word2.charAt(b)) {
        lettersMatch = false;
      }
    }
    if (lettersMatch == true) {
      colors[numGuesses][a] = color(0, 255, 0);
      numCorrect++;
    } else if (words[wordChoice].hasValue(guesses[numGuesses].get(a))) {
      colors[numGuesses][a] = color(255, 255, 0);
    } else {
      colors[numGuesses][a] = color(255, 255, 255);
    }
  }
  if (numCorrect == 5 && guessesRem > 0) {
    roundOver = true;
    roundWon = true;
  } else if (numCorrect != 5 && numGuesses + 1 == 6) {
    roundOver = true;
    roundWon = false;
  } else {
    roundOver = false;
    roundWon = false;
  }
}
