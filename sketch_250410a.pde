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
  background(100);
  stroke(green);
  fill(green);
  ellipse(-50, 500, 1200, 600);

  int y = 0;

  while (y <= 300) {
    float percent = map(y, 0, 400, 0, 1);
    color current = lerpColor(skyblue, white, percent);
    stroke(current);
    line(0, y, 800, y);
    y = y + 1;
  }
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
  scale(0.9);
  strokeWeight(1);
  //cherryblossom(0, 0);
  //cherryblossom(150, 0);
  //cherryblossom(50, 100);
  //cherryblossom(250, 110);
  //cherryblossom(0, 200);
  //cherryblossom(250, 230);

  butterfly(-200, 200);
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
  //scale(s);
  building(0, 0);
  door(85, 330);

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
  circle(x + 25, y + 45, 10);
  circle(x + 55, y + 45, 10);
}

void butterfly (float x, float y) {

  pushMatrix();
  translate(x, y);

  body ();
  wings();

  popMatrix();
}

void body () {
  stroke(0);
  fill(pink);

  pushMatrix();
  translate(500, 200);
  line(-130, 0, -115, 25);
  //line(-135, 0, -120, 25);
  rotate(PI/4);
  ellipse(-40, 100, 60, 6);
  popMatrix();
}

void wings () {
  pushMatrix();
  translate(500, 200);
  int n = 30;
  rotate(radians(80));
  while (n > 0) {
    ellipse(0, 100, n+10, n);
    n = n - 10;
  }
  popMatrix();

  translate(500, 200);
  while (n > 0) {
    ellipse(-70, 40, n+20, n);
    n = n - 20;
  }
}




// while (n > 0) {
//rotate(PI);
//ellipse(100, 100, n+10, n);
// ellipse(130, 120, n+20, n);
//n = n - 10;
//}
