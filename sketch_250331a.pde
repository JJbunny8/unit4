//Jennifer Wu
//March 31, 2025
//2-3

color yellow =    #fefae0;
color brown =     #d4a373;
color lightpink = #FFCAD4;
color darkpink =  #F4ACB7;
color brown =     #9D8189;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  house(200, 100); //x, y 
  //house(500, -200);
}

void house(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  chimney();
  roof();
  base();
  window1();
  window2();
  door();
  
  popMatrix();
}

void chimney() {
  strokeWeight(1);
  ellipse(360, -40, 30, 25);
  ellipse(340, -20, 40, 35);
  ellipse(320, -10, 50, 45);
  ellipse(310, 10, 60, 55);
  rect(280, 50, 50, 100);
}


void roof() {
  fill(brown);
  triangle(40, 150, 190, 20, 340, 150);
  line(75, 120, 305, 120);
  line(110, 90, 270, 90);
  line(140, 63, 240, 63);
  line(170, 37, 210, 37);
  
}

void base() {
  fill(lightpink);
  rect(40, 150, 300, 220);
  
  
}


void window1() {
  fill(yellow);
  rect(80, 200, 60, 60);
  line(110, 200, 110, 260);
  line(80, 230, 140, 230);
}


void window2() {
  rect(240, 200, 60, 60);
  line(270, 200, 270, 260);
  line(240, 230, 300, 230); 
}

void door() {
  rect(162, 300, 50, 70);
  circle(175, 340, 12);
}
