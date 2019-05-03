float x = 25;
float y = 25;
float speedx = 6;
float speedy = 6;

void setup () {
   size(720, 360);
}

void draw () {
   background(50);
   fill(0, 255, 0);
   stroke(0, 255, 0);
   circle(x, y, 50);
   x += speedx;
   y += speedy;

   if (x + 25 > width || x - 25 < 0) {
      speedx *= -1;
   }

   if (y + 25 > height || y - 25 < 0) {
      speedy *= -1;
   }
}
