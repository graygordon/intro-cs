/*
Gray Gordon, 10/6/22
This code when run creates a snowman on the ground, who is wearing a hat.
*/

//The following code creates the circles that make up the body of the snowman
size(600,1000);
circle(300, 500, 150);
circle(300, 675, 200);
circle(300, 375, 100);

//The following code creates the rectangle with a white outline that the snowman is on, and then resets the outline to black
stroke(255, 255, 255);
fill(60, 60, 60);
rect(100, 775, 400, 100);
stroke(0, 0, 0);

//The following code constructs arms for the snowman, but increases the width of the lines used to make the arms and then resets the width to the default for every shape that follows
strokeWeight(5);
line(225, 500, 125, 600);
line(375, 500, 475, 600);
strokeWeight(1);

//The following code construct black eyes
fill(0, 0, 0);
circle(285, 365, 10);
circle(315, 365, 10);

//The following code creates an orange nose
fill(255, 165, 0);
circle(300, 380, 5);

//The following code creates a red mouth
fill(240, 0, 0);
arc(300, 400, 30, 15, 0, 10);

//The following code constructs a green hat
fill(0, 50, 50);
triangle(265, 325, 300, 225, 335, 325);
