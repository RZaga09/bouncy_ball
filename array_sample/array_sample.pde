float x;
float y = 300;
pipe[] pipes = new pipe[5];


void setup () {
   size(600, 600);
   for (int i = 0; i < pipes.length; i++) {
      pipes[i] = new pipe();
   }
}
void draw () {
   background(0);
   for (int i = 0; i < pipes.length; i++) {
      pipes[i].rec();
      delay(1000);
   }
}

class pipe {
   void rec () {
      x = random(100, 500);
      rect(x, y, 10, 10);
   }
}
