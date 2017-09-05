/**
  * Processing vs P5.JS
  * https://github.com/processing/p5.js/wiki/Processing-transition
  *
  * Notez bien que nous n'avons pas besoin d'écrire le mot clé 'var'
  * lors de la déclaration des arguments de notre fonction. 
  */

function setup() {
  createCanvas(680, 360);
  background(33);
  smooth();
  noStroke();

  // On fait appel à notre fonction
  fill(0, 0, 255);
  croix(160, 185, 300);

  fill(150, 255, 0);
  croix(350, 110, 200);

  fill(255, 200, 0);
  croix(425, 240, 100);

  fill(255, 0, 0);
  croix(550, 185, 175);
}

function draw() {
  //background(33);
}

/////////////////////////// FUNCTIONS ////////////////////////////
// Voici notre fonction
// - Elle a un nom désigné par nous même
// - Des arguments entre parathèses [ATTENTION] - Ceux ne sont pas des variables.
// - la définition/les instructions entre accolades

function croix(_cntX, _cntY, _taille) {
  rectMode(CENTER);
  push();
  translate(_cntX, _cntY);
  rect(0, 0, _taille, _taille/4);
  rect(0, 0, _taille/4, _taille);
  pop();
}
