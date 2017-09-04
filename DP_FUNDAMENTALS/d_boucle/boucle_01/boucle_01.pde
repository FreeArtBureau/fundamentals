/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */


/////////////////////////// GLOBALS ////////////////////////////

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(1200, 600);
  background(33);
  smooth();
  noStroke();

  // la structure de la boucle for est comprise :
  // - une variable avec une valeur initiale > int i=0;
  // - une condition de  test > si la varialbe est inférieur à ...
  // - mise-à-jour de notre variable si la test est vrai
  
  // Ensuite
  // Tant que la boucle est active, le programme exécute les instructions
  // à l'intérieur de la boucle - entre les accolades
  for (int i=0; i<5000; i++) {
    
    float x = random(width); // une valeur aléatoire pour x à chaque fois
    float y = random(height); // une valeur aléatoire pour y à chaque fois
    float dia = random(1, 9); // une valeur aléatoire pour la diamètre à chaque fois
    
    // nous dessinons donc 4999 ellipses à une position différente et avec une taille différente
    ellipse(x, y, dia, dia);
  }
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  //background(33);
}

/////////////////////////// FUNCTIONS ////////////////////////////
void keyPressed(){
 setup(); 
}