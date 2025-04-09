//Jennifer Wu 
//April 9, 2025
//2-3

size(600, 600);
background(255);

int y = -100;
int x = -500;

while(y <= 600 && x <= 600) {
  line(x, y, x + 500, y + 1000); 
  x = x + 10;
}
