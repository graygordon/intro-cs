void setup() {
  size(1000, 1000);
}

void draw() {
  background(#000000);
  fill(#FFFF00);
  stroke(#FFFF00);
  if (keyPressed) {
    circle(500, 500, 200);
    circle(570, 500, 50);
  } else {
  arc(500,  500, 200, 200, radians(50), radians(310));
  stroke(0, 0, 0);
  fill(255, 255, 255);
  circle(570, 500, 50);
  }
  stroke(0, 0, 0);
  fill(255, 255, 255);
  circle(680, 500, 50);
  circle(780, 500, 50);
  circle(880, 500, 50);
}
