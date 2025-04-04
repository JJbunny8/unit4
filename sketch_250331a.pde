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
  house(random(100, 500), random(100,500), random(0.25,1)); //x, y, scale factor
}

void draw() {

}

void house(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  //rotate(PI);
  scale(s);
  
  float h;
  h = random(10, 200);
  chimney(h);
  roof();
  base();
  float r, g, b;
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  window(80, 200, r, g, b); //left
  window(240, 200, r, g, b); // right
  door();
  
  popMatrix();
}

void chimney(float h) {
  strokeWeight(1);
  fill(lightblue);
  ellipse(360, -40, h, h);
  ellipse(340, -20, 40, 35);
  ellipse(320, -10, 50, 45);
  ellipse(310, 10, 60, 55);
  fill(brown);
  rect(280, 50, 50, 100);
}


void roof() {
  fill(red);
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

void door() {
  fill(brown);
  rect(162, 300, 50, 70);
  fill(yellow);
  circle(175, 340, 12);
}
