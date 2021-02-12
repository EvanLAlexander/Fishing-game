fish jack;
fish snook;
PImage water;
PFont f;
int type = int(random(1, 40));
String fish;

void setup() {
  size(1000, 1000);
  background(loadImage("water.jpg"));
  jack = new fish(0, 0, 0);
  snook = new fish(255, 0, 255);
  f = createFont("Arial", 12, true); // Arial, 16 point, anti-aliasing on
  textFont(f, 30);
}

void draw() {
  background(loadImage("water.jpg"));
  
  jack.text = "\nCerval Jack: \n Caught: " + jack.caught + " Missed: " + jack.missed;
  fill(0);
  text(jack.text, 0, 0);
  
  snook.text = "Snook: \n Caught: " + snook.caught + " Missed: " + snook.missed;
  fill(0);
  text(snook.text, 0, 150);

  if (type >= 1 && type <= 30) {
    jack.draw();
    fish = "jack";
    if (jack.hover == true) {
      jack.circlex +=  -jack.close;
      jack.circley +=  -jack.close;
    }
    if (jack.hover == false) {
      jack.circlex = 200;
      jack.circley = 200;
      jack.close = int(random(1, 10));
      jack.tries = int(random(3,7));
    }
  }
  
  if (type >= 31 && type <= 40) {
    snook.draw();
    fish = "snook";
    if (snook.hover == true) {
      snook.circlex +=  -snook.close;
      snook.circley +=  -snook.close;
    }
    if (snook.hover == false) {
      snook.circlex = 200;
      snook.circley = 200;
      snook.close = int(random(5, 10));
      snook.tries = int(random(1,5));
    }
  }
}

void mousePressed() {
  if (fish == "jack") {
    jack.mousePressed();
  }
  if (fish == "snook") {
    snook.mousePressed();
  }
}
