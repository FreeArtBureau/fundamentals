/*
 * BOUCLE_FOR_02
 * Comment dessiner une trame de forme
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 *
 * end
 */

/////////////////////////// GLOBALS ////////////////////////////
int marge = 25;
float dia = 10;
int intervalle = 20;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 460);
  background(33);
  smooth();
  noStroke();
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);

  for (int y=marge; y<height-marge; y+=intervalle) {
    for (int x=marge; x<width-marge; x+=intervalle) { 
     
      ellipse(x, y, dia, dia);
    }
  }
}

/////////////////////////// FUNCTIONS ////////////////////////////