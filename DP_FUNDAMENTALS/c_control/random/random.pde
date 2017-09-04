/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */


/////////////////////////// GLOBALS ////////////////////////////
color myColour = color(255);
float dia = 250;

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
  rect(width/2, height/2, dia, dia);
  
  infos(); // afficher des infos ;–)
}

/////////////////////////// FUNCTIONS ////////////////////////////
void keyPressed() {
  if (key == 'r') {
    // notez bien la création des 3 variables locales
    // pour stocker les valeurs aléatoires pour chaque argument
    // de la fonction color > rouge, vert, bleu
    
    float rouge = random(255); // une valeur aléatoire entre 0 et 255 
    float vert = random(255);  
    float bleu = random(255);  
    
    myColour = color(rouge, vert, bleu);
    
    dia = random(100,320); // une valeur aléatoire entre 100 et 320
  }
}

// fonction pour afficher du texte
void infos(){
 fill(255);
 textSize(18);
 text("Appuyer sur r", 10, height-45);
 textSize(12);
 text("Couleur choisie : " + hex(myColour), 10, height-25);
 text("Taille choisie : " + dia, 10, height-10);
}