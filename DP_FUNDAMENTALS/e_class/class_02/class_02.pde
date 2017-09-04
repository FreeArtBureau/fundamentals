/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */


/////////////////////////// GLOBALS ////////////////////////////
Balle[] maBalle; // déclaration d'une liste d'objets

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 600);
  background(33);
  smooth();
  noStroke();
  
  // construction de nos objets
  maBalle = new Balle[100]; // nombre max d'objets
  
  for(int i=0; i<maBalle.length; i++){
  maBalle[i] = new Balle(); 
  }


}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
  
  for(int i=0; i<maBalle.length; i++){
    maBalle[i].afficher();
    maBalle[i].bouger();
    maBalle[i].limiter();
  }
  
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
 text("Appuyer sur r", 10, height-35);
}