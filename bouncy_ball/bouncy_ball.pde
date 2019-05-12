PVector location, velocity;
float x, y, z;
ball object;

void setup () {
   size(720, 360);
   object = new ball();
}

void draw () {
   background(0);
   object.blobby();
   object.bounce();
}

class ball {
   ball() {
      location = new PVector(width/2, height/2);
      velocity = new PVector(3, -3);
      x = (255);
      z = (255);
      y = (255);
   }

   void blobby() {
      fill(x, y, z); //added in that it changes to random colour when it bounces
      circle(location.x, location.y, 50);
      location.add(velocity);
   }

   void bounce() {
      if (location.x + 25 > width || location.x - 25 < 0) {
         velocity.x *= -1;
         x = random(0, 255);
         z = random(0, 255);
         y = random(0, 255);
      }

      if (location.y + 25 > height || location.y - 25 < 0) {
         velocity.y *= -1;
         x = random(0, 255);
         z = random(0, 255);
         y = random(0, 255);
      }
   }
}

//Alternate Code

/*float x = 25;
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
 } */
