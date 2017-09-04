/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */


/////////////////////////// GLOBALS ////////////////////////////
Balle maBalle; // déclaration d'un objet

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 600);
  background(33);
  smooth();
  noStroke();
  
  maBalle = new Balle(); // construction de notre objet 


}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
  
  //les méthodes liées à notre classe
  maBalle.afficher();
  maBalle.bouger();
  maBalle.limiter();
  
  //afficher infos
  infos();
}

/////////////////////////// FUNCTIONS ////////////////////////////

void keyPressed(){
 setup(); 
}

// fonction pour afficher du texte
void infos(){
 fill(255);
 textSize(18);
 text("Appuyer sur r", 10, height-45);
 textSize(12);
 text("Taille = " + maBalle.dia, 10, height-25);
}