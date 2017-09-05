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
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
  fill(0, 0, 255);

  // On fait appel à nos 2 fonctions : oscillate & croix
  float taille = oscillate(0.015, 150);
  croix(200, height/2, taille);
  
  float taille2 = oscillate(0.030, 300);
  fill(255,200,0);
  croix(450, height/2, taille2);
}

/////////////////////////// FUNCTIONS ////////////////////////////
// Voici notre nouvelle fonction qui retourne une valeur
float oscillate(float _freq, float _valMax) {
  float val = sin(frameCount*_freq) * _valMax;
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