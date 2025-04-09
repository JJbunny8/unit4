//Jennifer Wu
//April 9, 2025
//2-3

size(600, 600);
background(255);

rectMode(CENTER);

int n = 600;

while(n >= 0) {
  fill(random(0,255) );
  rect(300, 300, n, n);
  n = n - 20;
}
