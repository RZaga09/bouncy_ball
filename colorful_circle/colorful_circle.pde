//Circle shakes around the cener part of the screen while changing colour
//Requested by Ashley Alfaro

float rand1;
float rand2;
float color1;
float color2;
float color3;

void setup () {
   size(720, 360);
}

void draw() {
   rand1 = random(0, 20);
   rand2 = random(0, 20);
   color1 = random(0, 255);
   color2 = random(0, 255);
   color3 = random(0, 255);
   background(50);
   fill(color1, color2, color3);
   circle(width/2 + rand1, height/2 + rand2, 50);
}
