/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */

/////////////////////////// GLOBALS ////////////////////////////
char KEYS;
color myColour;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 420);
  background(33);
  smooth();
  noStroke();
  rectMode(CENTER);
  KEYS = 'a';
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
  
  fill(myColour);
  keysInteraction();
  rect(width/2, height/2, 250, 250);
  
  infos(); // afficher des infos ;–)
}

/////////////////////////// FUNCTIONS ////////////////////////////

void keyPressed() {
  KEYS=key;
}

void keysInteraction(){
   switch(KEYS) {
  case 'a':
    myColour = color(0, 0, 255);
    break;
  case 'b':
    myColour = color(200, 255, 0);
    break;
  case 'c':
    myColour = color(255, 0, 255);
    break;
  
    case 'd':
    myColour = color(100, 255, 50);
    break;
  }
}

void infos(){
 fill(255);
 textSize(18);
 text("Appuyer sur a | b | c | d", 10, height-30);
 textSize(12);
 text("Couleur choisie : " + hex(myColour), 10, height-15);
}