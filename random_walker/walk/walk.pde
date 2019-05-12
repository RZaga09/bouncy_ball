float x;
float y;
float r;
walker w;

void setup () {
   size(500, 500);
   background(0);
   x = random(0, width);
   y = random(0, height);
   w = new walker();
}

void draw () {
   w.pointer();
   w.moving();

   //prevents walker from moving off screen
   if (x <= 0) {
      x++;
   } else if (x >= width) {
      x = width - 1;
   } 
   if (y >= height) {
      y = height - 1;
   } else if (y <= 0) {
      y++;
   }
}

class walker {
   void pointer () {
      stroke(255);
      point(x, y);
   }

   void moving () {
      r = (int) random(1, 5);

      if (r == 1) {
         x++;
      } else if (r == 2) {
         x--;
      } else if (r == 3) {
         y++;
      } else if (r == 4) {
         y--;
      }
   }
}
