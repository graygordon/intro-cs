boolean startScreen = true;
boolean pick = false;
int wordChoice;

void startScreen () {
  background(100);
  fill(200);
  rect(350, 350, 300, 100);
  fill(0);
  textSize(50);
  text("WORDLE", 500, 50);
  text("Click to start", 500, 400);
  textSize(20);
  text("After you click, to get a word and begin the game, you need to click the box that says: Click for word. Once you have", 500, 600);
  text("a word, the box will say: Play!! and you can type in your guess. Press enter to check your guess and start the next one.", 500, 630);
}

void choose() {
  fill(200);
  rect(200, 715, 300, 75);
  fill(0);
  if (roundOver == true) {
    text("Click for word", 350, 750);
  } else {
    text("PLAY!!", 350, 750);
  }
}

void mousePressed () {
  if (mouseX >= 350 && mouseX <= 650 && mouseY >= 350 && mouseY <= 450) {
    startScreen = false;
  }
  if (mouseX >= 200 && mouseX <= 500 && mouseY >= 715 && mouseY <= 790 && pick == false) {
    for (int a = 0; a < 6; a++) {
      guesses[a] = new StringList ();
      for (int b = 0; b < 5; b++) {
        colors[a][b] = color(255);
      }
    }
    words[0] = new StringList ("h", "o", "u", "s", "e");
    words[1] = new StringList ("i", "r", "a", "t", "e");
    words[2] = new StringList ("a", "d", "e", "i", "u");
    words[3] = new StringList ("b", "l", "e", "a", "k");
    words[4] = new StringList ("g", "r", "a", "z", "e");
    words[5] = new StringList ("d", "u", "c", "a", "t");
    words[6] = new StringList ("e", "n", "j", "o", "y");
    words[7] = new StringList ("s", "o", "u", "n", "d");
    words[8] = new StringList ("a", "b", "o", "u", "t");
    words[9] = new StringList ("a", "l", "e", "r", "t");
    words[10] = new StringList ("a", "r", "g", "u", "e");
    pick = true;
    numCorrect = 0;
    roundOver = false;
    roundWon = false;
    numGuesses = 0;
    guessesRem = 6;
    wordChoice = (int) random(10);
  }
}
