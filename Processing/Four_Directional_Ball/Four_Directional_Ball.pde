int x = 20;
int y = 20;
int a = 0;
int b = 5;
void setup() {
  size(500, 500);
}

void draw() {
  background(0, 0, 255);
  circle(x, y, 20);
  x = x + a;
  y = y + b;
  if (y == 480 && x == 20) {
  b = 0;
  a = 5;
  }
  if (y == 480 && x == 480) {
  a = 0;
  b = -5;
  }
  if (y == 20 && x == 480) {
  a = -5; 
  b = 0;
  }
  if (y == 20 && x == 20) {
  a = 0;
  b = 5;
  }
}
