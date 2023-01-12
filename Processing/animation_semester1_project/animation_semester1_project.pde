//This animation that I created is similar to the popular 80's games Galaga and Space Invaders. In the game the user is controlling a spaceship that shoots lasers, when a specific key is pressed, and the user is trying to hit
//the alien with the laser before the alien reaches the end of the screen or destroys the user's spaceship.
//One thing I tried that did not end up working was the ability for the spaceship to fire a laser from one spot and the laser to continue on the same trajectory, regardless of where the spaceship moves, while also allowing
//the spaceship to shoot more lasers.

int laserX;
int laserY = 780;
boolean gameStart = false;
float timer = 0;
boolean alien_1_Hit = false;
int scoreNumber = 0;
int alien_1_X = 500;
int alien_1_Y = - 50;
int alien_1_Y_Speed = 0;
boolean gameOver = false;
int alien_1_X_Speed = 0;
boolean alien_2_Hit = false;
int alien_2_X = 500;
int alien_2_Y = - 50;
int alien_2_Y_Speed = 0;
int alien_2_X_Speed = 0;

void setup() {
  size(1000, 1000);
}

void draw() {
  //Sets the background and shape outline to black and sets the outline width to the smallest setting
  stroke(0);
  strokeWeight(0);
  background(0);

  //Displays the instructions after the start button has been pressed
  if (gameStart == true && timer >= 0 && timer < 10) {
    timer = timer + .1;
    text("The objective of the game is to shoot the aliens.", 250, 500);
  } else if (timer >= 10 && timer < 20) {
    timer = timer + .1;
    text("You lasers will begin firing after you click the b key.", 200, 500);
  } else if (timer >= 20 && timer < 30) {
    timer = timer + .1;
    text("Every time you hit an alien your score will go up by one point.", 125, 500);
  } else if (timer >= 30 && timer < 40) {
    timer = timer + .1;
    text("If an alien hits your space craft or reaches the bottom of the screen you lose.", 25, 500);
  } else if (timer >= 40 && timer < 50) {
    timer = timer + .1;
    text("Good luck!", 450, 500);
  } else if (timer > 50) {
    text("Score:", 425, 85);
    text(scoreNumber, 525, 85);
    timer = timer + 1;
  }
  
  //Draws alien 1, which moves across the screen at different speeds
  if (alien_1_Hit == false) {
    if (gameStart == true && timer > 50) {
      alien_1_Y_Speed = int(random(1, 5));
      alien_1_Y = alien_1_Y + alien_1_Y_Speed;
      alien_1_X_Speed = int(random(-10, 10));
      alien_1_X = alien_1_X + alien_1_X_Speed;
    }
    fill(0, 200, 0);
    square(alien_1_X, alien_1_Y, 50);
    push();
    translate(alien_1_X + 15, alien_1_Y + 20);
    rotate(260);
    fill(0);
    arc(0, 0, 7, 15, radians(0), radians(360));
    pop();
    push();
    translate(alien_1_X + 35, alien_1_Y + 20);
    rotate(-260);
    fill(0);
    arc(0, 0, 7, 15, radians(0), radians(360));
    pop();
    fill(0);
    circle(alien_1_X + 25, alien_1_Y + 35, 7);
    fill(255);
  }

  //Draws alien 2, which moves across the screen at different speeds
  if (alien_2_Hit == false) {
    if (gameStart == true && timer > 52) {
      alien_2_Y_Speed = int(random(1, 5));
      alien_2_Y = alien_2_Y + alien_2_Y_Speed;
      alien_2_X_Speed = int(random(-10, 10));
      alien_2_X = alien_2_X + alien_2_X_Speed;
    }
    fill(0, 200, 0);
    square(alien_2_X, alien_2_Y, 50);
    push();
    translate(alien_2_X + 15, alien_2_Y + 20);
    rotate(260);
    fill(0);
    arc(0, 0, 7, 15, radians(0), radians(360));
    pop();
    push();
    translate(alien_2_X + 35, alien_2_Y + 20);
    rotate(-260);
    fill(0);
    arc(0, 0, 7, 15, radians(0), radians(360));
    pop();
    fill(0);
    circle(alien_2_X + 25, alien_2_Y + 35, 7);
    fill(255);
  }

  //Causes the alien 1 to disapear if it is hit with a laser
  if (laserX > alien_1_X  && laserX < alien_1_X + 50 && laserY - 40 > alien_1_Y && laserY - 40 < alien_1_Y + 50) {
    alien_1_Hit = true;
  }

  //Causes the alien 2 to disapear if it is hit with a laser
  if (laserX > alien_2_X  && laserX < alien_2_X + 50 && laserY - 40 > alien_2_Y && laserY - 40 < alien_2_Y + 50) {
    alien_2_Hit = true;
  }

  //Increases the score number to 1 if an alien is hit
  if (alien_1_Hit == true) {
    scoreNumber = 1;
    text(scoreNumber, 525, 85);
  } else if (alien_2_Hit == true) {
    scoreNumber = 1;
    text(scoreNumber, 525, 85);
  } else if (alien_2_Hit == true && alien_1_Hit == true) {
    scoreNumber = 2;
    text(scoreNumber, 525, 85);
  }

  //Constructs the start button with white text
  fill(135);
  rect(50, 50, 100, 50);
  fill(255);
  textSize(30);
  text("Start", 65, 85);

  //Makes the Spaceship - Which moves based on the location of the mouse
  if (gameOver == false) {
    rect(mouseX - 50, 800, 100, 50);
    triangle(mouseX - 25, 800, mouseX, 780, mouseX + 25, 800);
  }

  //Makes the lasers red and fires them if the b key is clicked and the aliens are alive
  if (gameOver == false) {
    stroke(255, 0, 0);
    strokeWeight(5);
    if (key == 'b') {
      laserX = mouseX;
      laserY = laserY - 10;
      if (alien_1_Hit == true && alien_2_Hit == true) {
        stroke(0);
      }
      line(laserX, laserY, laserX, laserY - 40);
      if (laserY == 40) {
        laserY = 780;
      }
    } else if (keyPressed) {
      laserY = 780;
    }
  }

  //Ends the game if the alien reaches the bottom of the screen
  if (alien_1_Y >= 950 || alien_1_X >= mouseX - 50 && alien_1_X <= mouseX + 50 && alien_1_Y >= 780 && alien_1_Y <= 800) {
    gameOver = true;
  } else if (alien_2_Y >= 950 || alien_2_X >= mouseX - 50 && alien_2_X <= mouseX + 50 && alien_2_Y >= 780 && alien_2_Y <= 800) {
    gameOver = true;
  }
  if (gameOver == true) {
    text("Game over.", 450, 500);
  }
}

void mousePressed() {
  //When the start button is pressed the game is about to begin
  if (mouseX >= 50 && mouseX <= 150  && mouseY >= 50 && mouseY <= 100) {
    gameStart = true;
  } else {
    gameStart = false;
  }
}
