int diameter = 100;
float len = 100;
String text = "Hello";
boolean b = true;

void setup(){
  size(600, 1000);
}

void draw() { // called in a loop
background(100, 100, 100);
  circle(300, 300, diameter);
  if (b == true){
  diameter = diameter + 1;
  len = len + 0.5;
  }
  square(0, 0, len);
  textSize(30);
  text(text, 400, 100);
}

void keyPressed() {
  if (key == 'b') {
   text = "Bye";
   b = false;
  } else {
   text = "Among Us";
   b = true;
  }
}

void mousePressed() {
  text = "Hello";
}
