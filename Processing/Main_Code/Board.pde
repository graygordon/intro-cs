int boardL = 100;

void board() {
  for (int a = 1; a < 7; a++) {
    for (int b = 1; b < 6; b++) {
      stroke(255);
      strokeWeight(4);
      fill(0);
      square(boardL * b, boardL * a, boardL);
    }
  }
  fill(255);
  textSize(50);
  text("WORDLE", 350, 50);
}
