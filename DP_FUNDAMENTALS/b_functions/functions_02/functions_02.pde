/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */


/////////////////////////// GLOBALS ////////////////////////////

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(400, 400);
  background(33);
  smooth();
  noStroke();
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
  fill(0, 0, 255);

  // On fait appel à nos 2 fonctions : oscillate & croix
  float taille = oscillate(300);
  croix(width/2, height/2, taille);
}

/////////////////////////// FUNCTIONS ////////////////////////////
// Voici notre nouvelle fonction qui retourne une valeur
float oscillate(float _valMax) {
  float val = sin(frameCount*0.015) * _valMax;
  return val;
}




// Voici notre fonction de dessin
void croix(float _cntX, float _cntY, float _taille) {
  rectMode(CENTER);
  pushMatrix();
  translate(_cntX, _cntY);
  rect(0, 0, _taille, _taille/4);
  rect(0, 0, _taille/4, _taille);
  popMatrix();
}