//Jennifer Wu
//March 31, 2025
//2-3

//Global Variables
color yellow =    #FEFAE0;
color brown =     #9D8189;
color red =       #F892A1;
color pink =      #FCD5DC;
color blue =      #CDEBF5;
color lightblue = #EFF3FA;


void setup() {
  size(800, 600);
  background(255); 
  
  int x, y;
  x = 50;
  y =50;
  while(y < 600) {
    house(x, y, 0.25); //x, y, scale factor
    x = x + 150;
    if (x >= 800) {
        x = 50;
        y = y + 150;
    }
  }
}

void house(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  //rotate(PI);
  scale(s);
  
  smoke();
  float w;
  w = random(10, 100);
  chimney(w);
  float r1, g1, b1;
  r1 = random(0,255);
  g1 = random(0,255);
  b1 = random(0,255);
  roof(r1, g1, b1);
  base();
  float r, g, b;
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  window(80, 200, r, g, b); //left
  window(240, 200, r, g, b); // right
  float x1;
  x1 = random(40, 300);
  door(x1);
  
  popMatrix();
}

void chimney(float w) {
  strokeWeight(1);
  fill(brown);
  rect(300 - w, 50, w, 100);
}

void smoke() {
  fill(lightblue);
  ellipse(360, -40, 30, 25);
  ellipse(340, -20, 40, 35);
  ellipse(320, -10, 50, 45);
  ellipse(310, 10, 60, 55);
}


void roof(float r1, float g1, float b1) {
  fill(r1, g1, b1);
  triangle(40, 150, 190, 20, 340, 150);
  line(75, 120, 305, 120);
  line(110, 90, 270, 90);
  line(140, 63, 240, 63);
  line(170, 37, 210, 37);
}

void base() {
  fill(pink);
  rect(40, 150, 300, 220);
}


void window(float x, float y, float r, float g, float b) {
  fill(r, g, b);
  rect(x, y, 60, 60);
  line(x + 30, y, x + 30, y + 60);
  line(x, y + 30, x + 60, y + 30);
}

void door(float x1) {
  fill(brown);
  rect(x1, 300, 50, 70);
  fill(yellow);
  circle(x1 + 12, 340, 12);
}
