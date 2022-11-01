float len = 150;
float trans = 0;
int ht = 10;
int y = 0;

void setup() {
  size(1000, 1000);
}

void draw() {
background(100, 100, 100);
  fill(255, 0, 0, trans);
  trans = trans + 0.75;
  circle(500, 500, 300);
  fill(255, 255, 255);
  triangle(0, 0, 0, 100, ht, 50);
  ht = ht + 2;
  square(0,0, len);
  len = len - 0.5;
  square(565, y, 40);
  y = y + 2;
  if (y == 960) {
  y = 0;
  }
}
