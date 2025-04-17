//Jennifer Wu
//April 10, 2025
//2-3

//Global Variables
color darkbrown = #4C3F43;
color brown =     #9D8189;
color teal =      #90e0ef;
color darkpink =  #ffafcc;
color medpink =   #FFAFCC;
color pink =      #FCD5DC;
color blue =      #CDEBF5;
color skyblue =   #B6F9FF;
color lightblue = #EFF3FA;
color darkblue =  #023e8a;
color white =     #ffffff;
color green =     #B6FFC1;


void setup() {
  size(800, 600);
  
  int y = 0;

while(y <= 400) {
  float percent = map(y, 0, 400, 0, 1);
  color current = lerpColor(skyblue, white, percent);
  stroke(current);
  line(0, y, 800, y); 
  y = y + 1;
  
}

fill(green);

rect(0, 400, 800, 400);

  strokeWeight(1);
  //cherryblossom(100, 100);
  cherryblossom(300, 100);
  cherryblossom(500, 100);
  cherryblossom(700, 100);
  skyscraper(100, 100);
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

void skyscraper (float x, float y) {
  pushMatrix();
  
  translate(x, y);  
  building(0, 0);
  door(60, 280);
  
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


void building (float x, float y) {
  int x1 = 10;
  int y1 = 10;
  fill(blue);
  stroke(darkblue);
  rect(x, y, 210, 350);
  while(y1 < 340) {
  fill(teal);
  rect(x1, y1, 30, 30); 
  line(x1 + 5, y1 + 15, x1 + 15, y1 +5);
  line(x1 + 10, y1 + 25, x1 + 25, y1 +10);
  x1 = x1 + 40;
    if(x1 > 200) {
     x1 = 10; 
      y1 = y1 + 50;
    }
  }
}

void door (float x, float y) {
  rect(x, y, 40, 70);
  rect(x + 40, y, 40, 70);
  circle(x + 25, y + 45, 10);
  circle(x + 55, y + 45, 10);
  
}
