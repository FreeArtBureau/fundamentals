/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */

/////////////////////////// GLOBALS ////////////////////////////
float x = 0;
float dia = 0;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(680, 360);
  background(33);
  smooth();
  noStroke();
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
 
  ellipse(x, height/2, dia, dia);
  
  if(x > width) {
   x = 0; 
  }
  
  if(dia > 300){
    dia = 0; 
  }
 
  x = x + 3;
  dia = dia + 3;
  
}

/////////////////////////// FUNCTIONS ////////////////////////////