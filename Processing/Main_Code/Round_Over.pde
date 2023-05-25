int roundsWon = 0;
int roundsLost = 0;

void roundOver() {
  textSize(20);
  if (roundOver == true && roundsWon >= 1 || roundOver == true && roundsLost >= 1) {
    if (roundWon == false) {
      fill(255, 0, 0);
      text("Round lost. Click for new word.", 800, 400);
      StringList word = new StringList (words[wordChoice]);
      String correctWord = join(word.toArray(), "");
      text("Word: " + correctWord, 800, 600);
    } else if (roundWon == true) {
      fill(0, 255, 0);
      text("Round won. Click for new word.", 800, 400);
    }
    pick = false;
  }
}
