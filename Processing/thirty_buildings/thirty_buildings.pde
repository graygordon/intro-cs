void setup() {
  size(1000, 1000);
  background(0);
  rectMode(CENTER);
  building(600, 600, 200, 10, 8, true);
  building(300, 200, 100, 5, 10, false);
}

void building(float xCenter, float yBottom, float w, int numFloors, int numWindows, boolean roof) {
  float floorHeight = 40;
  float buildingHeight = numFloors * floorHeight;
  int numSpaces = numWindows * 2 + 1;
  int xTimer = 0;
  int yTimer = 0;
  float xIncreaser = numWindows - 1;
  float yIncreaser = 3;
  stroke(110);
  fill(110);
  rect(xCenter, yBottom, w, buildingHeight);
  if (roof == true) {
    triangle(xCenter - w/2, yBottom - buildingHeight/2, xCenter, yBottom - buildingHeight/2 - floorHeight, xCenter + w/2, yBottom - buildingHeight/2);
  }
  stroke(0);
  fill(80, 60, 33);
  rect(xCenter, yBottom + buildingHeight/2 - floorHeight/2, w/4, floorHeight);
  line(xCenter, yBottom + buildingHeight/2 - floorHeight, xCenter, yBottom + buildingHeight/2);
  fill(0, 100, 255);
  while (xTimer < numWindows) {
    while (yTimer < numFloors - 1) {
      square(xCenter - w/numSpaces * xIncreaser, yBottom + buildingHeight/2 - yIncreaser * floorHeight/2, w/numSpaces);
      yTimer = yTimer + 1;
      yIncreaser = yIncreaser + 2;
    }
    yTimer = 0;
    yIncreaser = 3;
    xTimer = xTimer + 1;
    xIncreaser = xIncreaser - 2;
  }
}
