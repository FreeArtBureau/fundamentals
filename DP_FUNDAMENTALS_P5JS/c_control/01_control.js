/**
 *
 * KeyEvent_if
 */

var myColour;

function setup() {
  createCanvas(680, 360);
  background(33);
  smooth();
  rectMode(CENTER);
  myColour = color(255)
}

function draw() {
  background(33);

  fill(myColour);
  rect(width/2, height/2, 250, 250);

  infos(); // afficher des infos ;–)
}

/////////////////////////// FUNCTIONS ////////////////////////////
// nous utilisons keyTyped à la place de keyPressed() lorsqu'on veut
// tester si l'on appuie sur une touche particulière du clavier.
// voir REF : https://p5js.org/reference/#/p5/keyTyped
function keyTyped(){
  if (key == 'a') {
     myColour = color(0, 0, 255);
   }

   if (key == 'b') {
     myColour = color(200, 255, 0);
   }

    if (key == 'c') {
     myColour = color(255, 0, 255);
   }
}

// fonction pour afficher du texte
function infos(){
 fill(255);
 textSize(18);
 text("Appuyer sur a | b | c", 10, height-30);
 textSize(12);
 text("Couleur choisie : " + myColour, 10, height-15);
}
