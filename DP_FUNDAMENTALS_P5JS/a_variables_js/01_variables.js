
var x = 0;
var dia = 0;

function setup() {
  createCanvas(680, 360);
  background(33);
  smooth();
  noStroke();
}

function draw() {
  background(33);
  fill(255);
  // Notez bien l'utilisation des variables
  // Que se passe-t-il si vous remplacer height/2 avec x ?
  ellipse(x, height/2, dia, dia);

  // ici nous mettons à jour les valeurs de nos variables
  x = x + 2;
  dia = dia + 0.5;

}

/////////////////////////// FUNCTIONS ////////////////////////////
function keyPressed(){
  background(33);
  x = 0;
  dia = 0;
}
