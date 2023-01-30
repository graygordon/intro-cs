int x = 0;
int a = 1;
int y = 0;
int b = 1;

void setup() {
  size(1000, 1000);
  background(70, 200, 0);
}

void draw() {
  push();
  scale(0.5);
  robot();
  pop();

  push();
  scale(0.5);
  translate(950, 0);
  robot();
  pop();

  push();
  scale(0.5);
  translate(500, 800);
  robot();
  pop();

  push();
  scale(0.3);
  robot_1();
  pop();

  push();
  scale(0.3);
  translate(1575, 0);
  robot_1();
  pop();

  push();
  scale(0.3);
  translate(800, 1500);
  robot_1();
  pop();
}

void robot() {
  fill(135, 135, 135);
  rect(375, 250, 250, 350);
  fill(110, 110, 110);
  rect(470, 150, 60, 100);
  fill(110, 110, 110);
  arc(500, 170, 60, 20, 0, PI);
  fill(135, 135, 135);
  square(450, 75, 100);
  fill(110, 110, 110);
  arc(500, 200, 60, 20, 0, PI);
  arc(500, 230, 60, 20, 0, PI);
  rect(440, 100, 10, 50);
  rect(550, 100, 10, 50);
  //trfjkbnt
  arc(500, 145, 60, 20, 0, PI);
  strokeWeight(4);
  fill(135, 135, 135);
  stroke(135, 135, 135);
  line(500, 75, 480, 50);
  line(500, 75, 520, 50);
  strokeWeight(1);
  stroke(1);
  fill(110, 110, 110);
  rect(400, 350, 200, 200);
  fill(200, 0, 200);
  rect(425, 325, 150, 15);
  fill(110, 110, 110);
  rect(400, 600, 75, 225);
  arc(438.5, 600, 75, 20, 0, PI);
  arc(438.5, 640, 75, 20, 0, PI);
  arc(438.5, 680, 75, 20, 0, PI);
  arc(438.5, 720, 75, 20, 0, PI);
  arc(438.5, 760, 75, 20, 0, PI);
  arc(438.5, 800, 75, 20, 0, PI);
  rect(525, 600, 75, 225);
  arc(563.5, 600, 75, 20, 0, PI);
  arc(563.5, 640, 75, 20, 0, PI);
  arc(563.5, 680, 75, 20, 0, PI);
  arc(563.5, 720, 75, 20, 0, PI);
  arc(563.5, 760, 75, 20, 0, PI);
  arc(563.5, 800, 75, 20, 0, PI);
  rect(325, 265, 50, 70);
  arc(345, 300, 20, 70, PI/2, PI*3/2);
  arc(365, 300, 20, 70, PI/2, PI*3/2);
  rect(625, 265, 50, 70);
  arc(635, 300, 20, 70, PI*3/2, PI*5/2);
  arc(655, 300, 20, 70, PI*3/2, PI*5/2);
  fill(135, 135, 135);
  rect(300, 250, 50, 250);
  rect(650, 250, 50, 250);
  arc(325, 500, 50, 40, 0, PI);
  arc(675, 500, 50, 40, 0, PI);
  stroke(135, 135, 135);
  arc(347, 525, 15, 40, 0, 2*PI);
  arc(336, 532.5, 15, 40, 0, 2*PI);
  arc(325, 540, 15, 35, 0, 2*PI);
  arc(314, 532.5, 15, 40, 0, 2*PI);
  arc(303, 525, 15, 40, 0, 2*PI);
  circle(325, 505, 40);
  arc(653, 525, 15, 40, 0, 2*PI);
  arc(664, 532.5, 15, 40, 0, 2*PI);
  arc(675, 540, 15, 35, 0, 2*PI);
  arc(686, 532.5, 15, 40, 0, 2*PI);
  arc(697, 525, 15, 40, 0, 2*PI);
  circle(675, 505, 40);
  fill(110, 110, 110);
  stroke(110, 110, 110);
  arc(409.5, 840, 20, 50, 0, 2*PI);
  arc(423.5, 847.5, 20, 50, 0, 2*PI);
  arc(437.5, 855, 20, 45, 0, 2*PI);
  arc(451.5, 847.5, 20, 50, 0, 2*PI);
  arc(465.5, 840, 20, 50, 0, 2*PI);
  circle(437.5, 835, 25);
  arc(534.5, 840, 20, 50, 0, 2*PI);
  arc(548.5, 847.5, 20, 50, 0, 2*PI);
  arc(562.5, 855, 20, 45, 0, 2*PI);
  arc(576.5, 847.5, 20, 50, 0, 2*PI);
  arc(590.5, 840, 20, 50, 0, 2*PI);
  circle(562.5, 835, 25);
  x = x + a;
  if (x == 100) {
    a = -1;
  }
  if (x == 0) {
    a = 1;
  }
  fill(255, 0, 0);
  circle(480, 50, 20);
  circle(520, 50, 20);
  stroke(0, 0, 0);
  if (x < 25 && x > -1) {
    fill(255, 0, 0);
    circle(425, 300, 20);
    circle(480, 50, 20);
    circle(520, 50, 20);
  } else {
    fill(110, 0, 0);
    circle(425, 300, 20);
    circle(480, 50, 20);
    circle(520, 50, 20);
  }
  if (x < 50 && x > 24) {
    fill(0, 255, 0);
    circle(475, 300, 20);
  } else {
    fill(0, 110, 0);
    circle(475, 300, 20);
  }
  if (x < 75 && x > 49) {
    fill(0, 0, 255);
    circle(525, 300, 20);
  } else {
    fill(0, 0, 110);
    circle(525, 300, 20);
  }
  if (x < 101 && x > 74) {
    fill(255, 255, 255);
    circle(575, 300, 20);
  } else {
    fill(200, 200, 180);
    circle(575, 300, 20);
  }
  y = y + b;
  if (y == 20) {
    b = -1;
  }
  if (y == 0) {
    b = 1;
  }
  if (y < 21 && x > 10) {
    fill(255, 255, 255);
    circle(480, 120, 20);
    circle(520, 120, 20);
    fill(0, 0, 0);
    circle(480, 120, 7);
    circle(520, 120, 7);
  } else {
    fill(135, 135, 135);
    circle(480, 120, 20);
    circle(520, 120, 20);
  }
}

// The robot_1 function was taken from Harry Lascher's github
// https://github.com/hlascher/intro-cs/blob/main/Function_exercise/Function_exercise.pde
void robot_1() {

  stroke(0, 0, 0);
  fill(255, 255, 255);
  circle(300, 600, 200);
  circle(300, 450, 150);
  circle(300, 335, 100);

  //this will give it it's evil robot eyes
  fill(200, 0, 0);
  circle(275, 325, 15);
  fill(200, 0, 0);
  circle(325, 325, 15);

  // this creates its intena unicorn horn
  fill(0, 0, 0 );
  triangle(275, 300, 232, 80, 320, 300);

  //this creats the evil buttons of doom
  circle(300, 490, 25);
  circle(300, 450, 25);
  circle(300, 410, 25);

  //this creates the carrot nose of evil
  fill(255, 140, 0);
  triangle(300, 340, 300, 365, 350, 355);

  //this creates a mouth
  fill(150, 0, 0);
  circle(300, 375, 10);


  //this creates the arms
  //he is kamehamehaing(dragon ball z)
  fill(0, 0, 0);
  line(350, 500, 400, 400 );
  line(250, 400, 400, 400);
  fill(145, 224, 255);

  stroke(0, 0, 0);
  fill( 255, 0, 0);
  circle(411, 670, 50);
  circle(188, 670, 50);
  fill(72, 72, 72);
  triangle( 395, 573, 391, 657, 454, 690);
  triangle(201, 569, 216, 658, 147, 675);
}
