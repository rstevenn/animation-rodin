
class Bouton {
  int cx, cy;     // position du centre du bouton
  int largeur;
  int hauteur;
  String blabel; 
  color couleur;
  color c_nonClickable = #F08080; 
  color c_Clickable = #98FB98; 
  color c_default = c_nonClickable;
  boolean dessus = false;
  boolean clique = false;
  
  Bouton(int xp, int yp, int lgp, int htp, String bl) {
     cx = xp; cy = yp;
     largeur = lgp;
     hauteur = htp;
     blabel = bl;
     couleur = c_default;
  }
    
  void maj_souris() {
     int rmouseX = mouseX-width/2;
     int rmouseY = mouseY-height/2;
     
     if ( (rmouseX >= cx-largeur/2) && (rmouseX <= cx + largeur/2) &&
          (rmouseY >= cy-hauteur/2) && (rmouseY <= cy+hauteur/2) ) {
        dessus = true;
     } else {
        dessus = false;
     }
  }
  
  boolean selectionne() {
    if (dessus == true) {
          clique = true;
          return true;
    } else {
          return false;
    }
  }
  
  void relache() {
     clique = false;
  }
  
  void maj_couleur(boolean s) { // s vrai si evenement selectionnable
     if (s) { couleur = c_Clickable; 
     } else { couleur = c_nonClickable;
     }
  }
  
  void affiche() {
    pushStyle();
    rectMode(CENTER);
    stroke(0);
    fill(couleur);
    rect(cx,cy,largeur,hauteur);
    fill(0);
    textSize(16);
    textAlign(CENTER, CENTER);
    text(blabel,cx,cy);
    popStyle();   
  }
  
}