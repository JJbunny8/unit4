//Jennifer Wu
//March 31, 2025
//2-3

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
  rect(280, 50, 50, 100);
  
  
}


void roof() {
  triangle(40, 150, 190, 20, 340, 150);
  
  
}

void base() {
  rect(40, 150, 300, 220);
  
  
}


void window1() {
  rect(80, 200, 60, 60);
  
  
}


void window2() {
  rect(240, 200, 60, 60);
  
  
}

void door() {
  rect(140, 300, 50, 100);
  
  
}
