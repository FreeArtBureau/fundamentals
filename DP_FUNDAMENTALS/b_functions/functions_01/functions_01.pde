/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */


/////////////////////////// GLOBALS ////////////////////////////

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(680, 360);
  background(33);
  smooth();
  noStroke();
  
  // On fait appel à notre fonction
  fill(0, 0, 255);
  croix(160, 185, 300);

  fill(150, 255, 0);
  croix(350, 110, 200);
 
  fill(255, 200, 0);
  croix(425, 240, 100);
  
  fill(255, 0, 0);
  croix(550, 185, 175);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
}

/////////////////////////// FUNCTIONS ////////////////////////////
// Voici notre fonction 
// - Elle a un nom désigné par nous même
// - Des arguments entre parathèses [ATTENTION] - Ceux ne sont pas des variables.
// - la définition/les instructions entre accolades

void croix(float _cntX, float _cntY, float _taille) {
  rectMode(CENTER);
  pushMatrix();
  translate(_cntX, _cntY);
  rect(0, 0, _taille, _taille/4);
  rect(0, 0, _taille/4, _taille);
  popMatrix();
}