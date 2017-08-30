/* 
 --------------------------
 ** PLEASE READ INFO TAB **
 --------------------------
 */

/////////////////////////// GLOBALS ////////////////////////////

// Déclaration de plusieurs variables avec :
// 1). type de données (int, float, String...)
// 2). nom de la variable (x, y, maCouleur...)
// 3). et éventuellement une valeur initiale. Voir plus loin

int x = 50;                         // nombre entier
float y = 253.078;                  // nombre virgule

String mot = "WORD";                // chaîne de caractères
String infos = "appuyer sur 'b'";   // chaîne de caractères
char lettre = 'A';                  // caractère
boolean afficher = false;           // boolean > OUI/NON | ON/OFF ...

color maCouleur; // Notez que nous n'avons pas donné de valeur initiale ici !

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
  
  textSize(200);
  if (afficher) {
    // la variable 'maCouleur' est attribuée une valeur ici (bleu)
    maCouleur = color(0, 0, 255);
    fill(maCouleur);
    text(mot, x, y);
  } else 
  {
    // et aussi ici (jaune) - cela dépend de notre état boolean 'afficher' 
    maCouleur = color(255, 200, 0);
    fill(maCouleur);
    text(lettre, x, y);
  }
  
  textSize(24);
  fill(255);
  text(infos, x, 310);
}

/////////////////////////// FUNCTIONS ////////////////////////////
// Ici, nous avons ce qu'on appelle une fonction d'événement.
// Lorsqu'on appuie sur la touche 'b' du clavier, on change notre état de boolean 'afficher'
void keyPressed() {
  if (key == 'b') {
    afficher = !afficher;
  }
  // cette commande est pratique pour afficher des infos dans la console en bas
  // de cette fenêtre - partie noir
  println(afficher);
}