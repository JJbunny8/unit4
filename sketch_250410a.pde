//Jennifer Wu
//April 10, 2025
//2-3

//Global Variables
color yellow =    #FEFAE0;
color brown =     #9D8189;
color red =       #F892A1;
color pink =      #FCD5DC;
color blue =      #CDEBF5;
color lightblue = #EFF3FA;


void setup() {
  size(800, 600);
  background(255); 
  cherryblossom(100, 100);
}

void cherryblossom(float x, float y) {
  pushMatrix();
  
  translate(x, y);  
  trunk();
  branch();
  blossom();
  
  popMatrix();
}

void trunk() {
  fill(brown);
  rect(100, 300, 20, 65);

}

void branch() {
 
  

}

void blossom() {
  fill(pink);
  ellipse(80, 290, 10, 10);
 
  

}
