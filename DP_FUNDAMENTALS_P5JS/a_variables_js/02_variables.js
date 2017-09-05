
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

  textSize(200);
  if(afficher) {
    maCouleur = color(0,0,255);
    fill(maCouleur);
    text(mot, x, y);
  }else {
    maCouleur = color(255,200,0);
    fill(maCouleur);
    text(letter, x, y);
  }

  textSize(24);
  fill(255);
  text(infos, x, 310);
}

/////////////////////////// FUNCTIONS ////////////////////////////
function keyPressed(){
  if(key == 'b') {
    afficher = !afficher;
    console.log(afficher);
  }
}
