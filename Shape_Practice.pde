void setup() {
  size(1000, 1000);
}

void draw() {
  beginShape();
  vertex(50, 700);
  vertex(50, 600);
  vertex(100, 550);
  vertex(200, 550);
  vertex(250, 600);
  vertex(250, 700);
  vertex(200, 750);
  vertex(100, 750);
  vertex(50, 700);
  endShape();
  
  beginShape();
  vertex(400, 600);
  vertex(425, 500);
  vertex(395, 465);
  vertex(505, 465);
  vertex(475, 500);
  vertex(500, 600);
  vertex(400, 600);
  endShape();
}

void mousePressed()  {
  println("Mouse coordinates are:" + mouseX + "," + mouseY);
}
