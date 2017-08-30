/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */

/////////////////////////// GLOBALS ////////////////////////////
// Voici la déclaration et l'affectation de 2 variables
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
  
  // Notez bien l'utilisation des variables
  // Que se passe-t-il si vous remplacer height/2 avec x ? 
  ellipse(x, height/2, dia, dia);
  
  // ici nous mettons à jour les valeurs de nos variables
  x = x + 2;
  dia = dia + 0.5;
  
}

/////////////////////////// FUNCTIONS ////////////////////////////