//Jennifer Wu
//April 29, 2025
//2-3
//Colour Pallette
color white = #ffffff;
color black = #000000;

// Player variables
float x, y, d;
float x2, y2, d2;

//Keyboard variables

boolean wKey, sKey, aKey, dKey,upKey, downKey, leftKey, rightKey;


void setup() {
  size(600, 600, P2D);
  x = width/2;
  y = height/2;
  d = 100;
  
  x2 = width/2;
  y2 = height/2;
  d2 = 100;
}

void draw() {
  background(white);
  
  //player 1
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(x, y, d);
  
  //player 2
  strokeWeight(5);
  stroke(white);
  fill(black);
  circle(x2, y2, d2);
  
  //movement
  if (wKey) y = y -5;
  if (sKey) y = y +5;
  if (aKey) x = x -5;
  if (dKey) x = x +5;
  if (upKey) y2 = y2 -5;
  if (downKey) y2 = y2 +5;
  if (leftKey) x2 = x2 -5;
  if (rightKey) x2 = x2 +5;
}

void keyPressed() {
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;  
   if (key == 'a') aKey = true;
  if (key == 'd') dKey = true; 
  
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) upKey = true;
  if (keyCode == RIGHT) downKey = true;
}



void keyReleased () {
 if (key == 'w') wKey = false;
 if(key == 's') sKey = false;
 if (key == 'a') aKey = false;
 if(key == 'd') dKey = false;
 
 if (key == UP) upKey = false;
 if(key == DOWN) downKey = false;
 if (key == LEFT) leftKey = false;
 if(key == RIGHT) rightKey = false;
  
  
  
}
