//For my final project, I coded the poopular game, WORDLE. Essentialy the user presses a button and the computer randomly picks a 5-letter word from an array of predetermined words. Then the user
//can play the game, and the computer will give the user feedback as to wheter or not they got the letter or word correct. With more time, I would have added more words to the possible words and
//made it so that you can not get the same word twice. The part of the project that was the most challenging was figuring out how to check, and then display the green, yellow, or white letter,
//depending on whether or not the letter is correct. The most fun part of the project was actually coding a game that I would have thought to be impossible at the beginning of the year. For the
//project, I had to figure out both the syntax of a StringList and the right functions to properly use them.


StringList [] words = new StringList [11];
StringList [] guesses = new StringList [6];
color[][] colors = new color[6][5];

void setup() {
  size(1000, 800);
  textAlign(CENTER, CENTER);
}

void draw() {
  if (startScreen == true) {
    startScreen();
  }
  if (startScreen == false) {
    background(0);
    board();
    choose();
    if (pick == true && roundOver == false) {
      for (int b = 0; b < guesses.length; b++) {
        for (int a = 0; a < guesses[b].size(); a++) {
          fill(255);
          text(guesses[b].get(a), a * boardL + 150, b * boardL + 150);
        }
      }
    }
    if (numGuesses >= 1) {
      for (int b = 0; b < numGuesses; b++) {
        for (int a = 0; a < guesses[numGuesses - 1].size(); a++) {
          fill(colors[b][a]);
          text(guesses[b].get(a), a * boardL + 150, b * boardL + 150);
        }
      }
    }
    push();
    fill(255);
    textSize(25);
    text("Guesses Remaining: " + guessesRem, 800, 125);
    text("Rounds won: " + roundsWon, 800, 225);
    text("Rounds lost: " + roundsLost, 800, 325);
    pop();
    roundOver();
  }
}

//Harry and Hinming both suggested that I add basic instructions to the start screen, and I agreed with them because I felt that it might not be intuitive that you have click the button to get a 
//word and begin playing.
