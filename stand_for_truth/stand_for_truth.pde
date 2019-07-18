PFont impact;
int counter;

void setup() {
  size(800, 500);
  impact = createFont("impact.ttf", 10);
  counter = 0;
}

void draw() {
  textFont(impact);
  stroke(255);
  if (counter <= 60) {
    stand_truth("STAND");
  } else if (counter > 60 && counter <= 120) {
    _for();
  } else if (counter > 120 && counter <= 180) {
    stand_truth("TRUTH");
  } else if (counter > 180) {
    full();
  }
  if (counter == 240) {
    counter = 0;
  }
  counter += 1;
}

void stand_truth(String words) {
  background(8, 104, 127); 
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(280);
  text(words, 400, 235);
}

void _for() {
  background(255, 254, 255);
  fill(8, 104, 127);
  ellipseMode(CENTER);
  ellipse(400, 250, 375, 375);
  textAlign(CENTER, CENTER);
  textSize(220);
  fill(255);
  text("FOR", 400, 235);
}

void full() {
  background(8, 104, 127);
  textAlign(CENTER, CENTER);
  fill(255);
  ellipseMode(CENTER);
  ellipse(400, 250, 100, 100);
  textSize(150);
  text("STAND", 400, 115); 
  text("TRUTH", 400, 350); 
  textSize(55);
  fill(8, 104, 127);
  text("FOR", 400, 240);
}
