/**
 * Voici la structure d'une classe
 *
 */


class Balle {
  // déclaration de nos paramètres pour notre classe
  float x;
  float y;
  float dia;
  float vx, vy;

  // Le constructeur permet de créer ce qu'on appelle une instance
  // de notre classe - un objet
  Balle() {
    x = width/2;
    y = height/2;
    dia = random(50, 100); 
    vx = 5;
    vy = 3.7;
  }

  // ensuite nous définissons les méthodes (ceux sont comme des fonctions)
  void afficher() {
    fill(255);
    //notez bien l'affectation de nos paramètres x, y, dia
    ellipse(x, y, dia, dia);
  }

  // Méthode pour faire bouger notre balle   
  void bouger() {
    x+=vx;
    y+=vy;
  }


  // Méthode pour tester et mettre à jour la position
  // en fonction des limites de la fenêtre
  void limiter() {
    if (x<0 + dia/2) {
      //vx = vx * -1 (THIS MAKES ANY VALUE NEGATIVE).
      vx*=-1;
    }
    if (x>width - dia/2) {
      vx*=-1;
    }
    if (y<0 + dia/2) {
      vy*=-1;
    }
    if (y>height - dia/2) {
      vy*=-1;
    }
  }
}