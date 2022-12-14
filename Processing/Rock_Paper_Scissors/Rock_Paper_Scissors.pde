String userChoice = "Not chosen";
float computerChoice = -1;

void setup() {
  size(700, 700);
}

void draw() {
  background(200);
  if (userChoice == "Rock") {
  fill(0, 0, 255);
  } else {
  fill(255);
  }
  rect(width / 3 - 100, 100, 100, 50);
  if (userChoice == "Paper") {
  fill(0, 0, 255);
  } else {
  fill(255);
  }
  rect(width / 3 + 50, 100, 100, 50);
  if (userChoice == "Scissors") {
  fill(0, 0, 255);
  } else {
  fill(255);
  }
  rect(width / 3 + 200, 100, 100, 50);
  fill(225);
  rect(width / 3 + 50, 360, 100, 50);
  fill(0);
  textSize(30);
  text("Computer:", width / 3 + 50, 350);
  text("You:", width / 3 - 100, 90);
  text("Rock", width / 3 - 100, 140);
  text("Paper", width / 3 + 50, 140);
  text("Scissors", width / 3 + 200, 140);
  if (computerChoice >= 0 && computerChoice < 1) {
  text("Rock", width / 3 + 50, 400);
  } else if(computerChoice >= 1 && computerChoice < 2) {
  text("Paper", width / 3 + 50, 400);
  } else if(computerChoice >= 2 && computerChoice < 3) {
  text("Scissors", width / 3 + 50, 400);
  }
  if (userChoice == "Rock" && computerChoice >= 0 && computerChoice < 1) {
  text("You tied", width / 3 + 50, 275);
  } else if(userChoice == "Rock" && computerChoice >= 1 && computerChoice < 2) {
  text("You lose", width / 3 + 50, 275);
  } else if(userChoice == "Rock" && computerChoice >= 2 && computerChoice < 3) {
  text("You win", width / 3 + 50, 275);
  } else if(userChoice == "Paper" && computerChoice >= 0 && computerChoice < 1) {
  text("You win", width / 3 + 50, 275);
  } else if(userChoice == "Paper" && computerChoice >= 1 && computerChoice < 2) {
  text("You tie", width / 3 + 50, 275);
  } else if(userChoice == "Paper" && computerChoice >= 2 && computerChoice < 3) {
  text("You lose", width / 3 + 50, 275);
  } else if(userChoice == "Scissors" && computerChoice >= 0 && computerChoice < 1) {
  text("You lose", width / 3 + 50, 275);
  } else if(userChoice == "Scissors" && computerChoice >= 1 && computerChoice < 2) {
  text("You win", width / 3 + 50, 275);
  } else if(userChoice == "Scissors" && computerChoice >= 2 && computerChoice < 3) {
  text("You tie", width / 3 + 50, 275);
  }
}

void mousePressed() {
  if (mouseX > width / 3 - 100 && mouseX < width / 3 && mouseY > 100 && mouseY < 150) {
  userChoice = "Rock";
  computerChoice = random(3);
  } else if (mouseX > width / 3 + 50 && mouseX < width / 3 + 150 && mouseY > 100 && mouseY < 150) {
  userChoice = "Paper";
  computerChoice = random(3);
  } else if (mouseX > width / 3 + 200 && mouseX < width / 3 + 300 && mouseY > 100 && mouseY < 150) {
  userChoice = "Scissors";
  computerChoice = random(3);
  } else {
  userChoice = "Not chosen";
  }
}
