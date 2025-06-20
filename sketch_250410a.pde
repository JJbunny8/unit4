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
color yellow =    #ffffb7;
color purple =    #cfbaf0;


void setup() {
  size(800, 600);
  background(100);
  
  //ground
  stroke(green);
  fill(green);
  ellipse(-50, 500, 1200, 600);

  //sky
  int y = 0;

  while (y <= 300) {
    float percent = map(y, 0, 400, 0, 1);
    color current = lerpColor(skyblue, white, percent);
    stroke(current);
    line(0, y, 800, y);
    y = y + 1;
    
    //sun
    stroke(yellow);
    line(110, 30, 160, 50);
    line(70, 90, 100, 120);
    line(10, 120, 20, 160);
    fill(yellow);
    circle(0, 0, 200);
  }
  
  //building placement
  pushMatrix();

  int xs, ys;
  xs = 350;
  ys = 70;

  float s;
  s = 0.65;
  scale(s);

  while (ys < 300) {
    skyscraper(xs, ys);
    xs = xs + 300;
    if (xs >= 1000) {
      s = 0.55;
      xs = 550;
      ys = ys + 150;
    }
  }

  popMatrix();
  
  
  //cherryblossom placement
  pushMatrix();
  
  scale(0.9);
  strokeWeight(1);
  cherryblossom(0, 0);
  cherryblossom(150, 0);
  cherryblossom(50, 100);
  cherryblossom(250, 110);
  cherryblossom(0, 200);
  cherryblossom(250, 230);
  
  popMatrix();
  
  //butteryfly placement
  pushMatrix();
  
  scale(0.55);
  butterfly(200, 200);
  butterfly(1200, 850);
  butterfly(300, 750);
  butterfly(700, 400);
  butterfly(900, 0);
  
  popMatrix();
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
  door(85, 330);

  popMatrix();
}

void butterfly (float x, float y) {
  pushMatrix();
  
  stroke(0);
  translate(x, y);
  wings();
  body();
  
  popMatrix();
}

void trunk() {
  stroke(darkbrown);
  fill(brown);
  triangle(110, 340, 60, 290, 100, 310);
  triangle(100, 310, 110, 260, 120, 310);
  triangle(120, 330, 155, 290, 120, 310);
  rect(100, 310, 20, random(40, 90));
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
  int y1 = 15;
  fill(blue);
  stroke(darkblue);
  rect(x, y, 250, 400);
  while (y1 < 350) {
    fill(teal);
    rect(x1, y1, 30, 30);
    line(x1 + 5, y1 + 15, x1 + 15, y1 +5);
    line(x1 + 10, y1 + 25, x1 + 25, y1 +10);
    x1 = x1 + 40;
    if (x1 > 210) {
      x1 = 10;
      y1 = y1 + 47;
    }
  }
}

void door (float x, float y) {
  rect(x, y, 40, 70);
  rect(x + 40, y, 40, 70);
  fill(random(0, 255), random(0, 255), random(0, 255));
  circle(x + 25, y + 45, 10);
  circle(x + 55, y + 45, 10);
}

void body () {
  fill(brown);
  line(100, 100, 80, 45);
  line(82, 100, 102, 45);
  ellipse(91, 99, 8, 70);
}

void wings () {
  fill(purple);
  ellipse(79, 115, 40, 35);
  ellipse(108, 115, 40, 35);
  
  int n = 40;

  while (n > 0) {
    fill(random(0, 255) );
    ellipse(77, 90, n + 5, n);
    ellipse(110, 90, n + 5, n);
    n = n - 10;
  }
}
