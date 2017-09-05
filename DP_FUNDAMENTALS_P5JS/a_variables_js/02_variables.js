/**
 * !! IMPORTANT !!
 * Notez bien le mot clé 'var' qui remplace les mots clés int/float/String...
 * JavaScript est un langage qui nécéssite pas de typage - type de données
 * Lire plus : https://openclassrooms.com/courses/le-typage-presentation-thematique-et-historique
 *
 */

var x = 50;
var y = 253.078;

var mot = "word";
var infos = "appuyer sur 'b'";
var lettre = 'A';
var afficher = false;

var maCouleur;

function setup() {
  createCanvas(680, 360);
  background(33);
  smooth();
  noStroke();
}

function draw() {
  background(33);

  textSize(273);
  if(afficher) {
    maCouleur = color(0,0,255);
    fill(maCouleur);
    text(mot, x, y);
  }else {
    maCouleur = color(255,200,0);
    fill(maCouleur);
    text(lettre, x, y);
  }

  textSize(24);
  fill(255);
  text(infos, x, 310);
}

/////////////////////////// FUNCTIONS ////////////////////////////
// nous utilisons keyTyped à la place de keyPressed() lorsqu'on veut
// tester si l'on appuie sur une touche particulière du clavier.
// voir REF : https://p5js.org/reference/#/p5/keyTyped
function keyTyped(){
  if(key == 'b') {
    afficher = !afficher;
    console.log(afficher);
  }
}
