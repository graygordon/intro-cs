int x = 50;
int y = 800;

void setup() {
  size (600, 1000);
}

void draw() {
  background(100, 100, 100);
  circle(x, 200, 50);
  x = x + 1;
  rect(300, y, 100, 50);
  y = y - 1;
}
