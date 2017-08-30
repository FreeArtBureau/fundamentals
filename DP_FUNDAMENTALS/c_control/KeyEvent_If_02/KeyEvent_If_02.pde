/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */


/////////////////////////// GLOBALS ////////////////////////////
color myColour = color(255);

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 420);
  background(33);
  smooth();
  noStroke();
  rectMode(CENTER);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);

  fill(myColour);
  rect(width/2, height/2, 250, 250);
  
  infos();
}

/////////////////////////// FUNCTIONS ////////////////////////////
void keyPressed() {
  if (key == 'a') {
    myColour = color(0, 0, 255);
  }

  if (key == 'b') {
    myColour = color(200, 255, 0);
  }
  
   if (key == 'c') {
    myColour = color(0, 200, 255);
  }
}

// fonction pour afficher du texte
void infos(){
 fill(255);
 textSize(18);
 text("Appuyer sur a | b | c", 10, height-30);
 textSize(12);
 text("Couleur choisie : " + hex(myColour), 10, height-15);
}