//Jennifer Wu
//April 10, 2025
//2-3

//Global Variables
color yellow =    #FEFAE0;
color darkbrown = #4C3F43;
color brown =     #9D8189;
color red =       #F892A1;
color darkpink =  #ffafcc;
color pink =      #FCD5DC;
color blue =      #CDEBF5;
color lightblue = #EFF3FA;


void setup() {
  size(800, 600);
  background(255);
  strokeWeight(2);
  //cherryblossom(100, 100);
  cherryblossom(300, 100);
  cherryblossom(500, 100);
  cherryblossom(700, 100);
  building();
}

void cherryblossom(float x, float y) {
  pushMatrix();
  
  translate(x, y);  
  trunk();
  blossom(60, 280);
  blossom(70, 250);
  blossom(110, 240);
  blossom(150, 250);
  blossom(160, 280);
  blossom(110, 290);
  
  popMatrix();
}

void trunk() {
  stroke(darkbrown);
  fill(brown);
  triangle(110, 340, 60, 290, 100, 310);
  triangle(100, 310, 110, 260, 120, 310);
  triangle(120, 330, 155, 290, 120, 310);
  rect(100, 310, 20, 65);
}

void blossom(float x, float y) {
  stroke(darkpink);
  fill(pink);
  circle(x, y, 12);
  circle(x-25, y+15, 10);
  circle(x-15, y+10, 10);
  circle(x-25, y+27, 10);
  circle(x+15, y+15, 10);
  circle(x-5, y+20, 12);
  circle(x, y+35, 10);
  circle(x-15, y+35, 10);
  circle(x+15, y+35, 12);
}

int x = 0;
int y = 0;

void building () {
  rect(0, 0, 200, 300);
  while(y < 300) {
  rect(x, 0, 40, 20); 
  x = x + 40;
    if(x >= 200) {
      x = 0; 
      y = y + 20;
    }
  }
}
