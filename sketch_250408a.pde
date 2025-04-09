//Jennifer Wu
//April 8, 2025
//2-3

size(600, 600);
background(255);

color blue = #7CD2FF;
color green = #7CFF92;

int y = 0;

while(y <= 600) {
  float percent = map(y, 0, 600, 0, 1);
  color current = lerpColor(blue, green, percent);
  stroke(current);
  line(0, y, 600, y); 
  y = y + 1;
  
}
