class Balle {

  float x;
  float y;
  float t=0.0;
  int vx = 10;
  int vy = 12;
  int g = 1;
  color couleur;
  int taille = 20;
  float time_inc = 0.2;
  float tinc;
  float epsilon = 0.01;
  
 
  Balle() { 
      if ( pballe == gauche ) { 
             x = -borne; y= 0; tinc = 0;
      } else {  
             x = borne; y=0; tinc = 0;
      }     
  }
  
  void dessine() {
     fill(couleur);
     ellipse(x,y,taille,taille);
  }
  
  void maj() {
     deplace();
     maj_couleur(x);
  }

  void versGauche() {
     if (tinc >= 0) { tinc = -time_inc; }
  }
  void versDroite() {
     if (tinc <= 0) { tinc = time_inc; }
  }
  
  void inv_depl() {
    tinc = -tinc;
  }
  
  void maj_couleur(float x_pos) {
      if ( x_pos < 0 ) { couleur = #ee2c1a; } // rouge
      if ( x_pos >= 0 ) { couleur = #268512; } // vert
      // si x == 0 on garde l'ancienne couleur
  }

  void deplace() {
     if (tinc > 0) {
       t = t + tinc;
       if ((x >= -borne-epsilon) && (x <= borne-(vx*tinc)+epsilon)) {
         x = vx * t - borne;
         y = -( (-g * sq(t)/2) + vy*t);
         if (x >= 0) { pballe = droite; }
         if (x >= borne) { pballe = droite; tinc = 0; }
       }
     } else {
       if (tinc < 0) {
       t = t + tinc;
       if ((x >= -borne+(vx*tinc)-epsilon) && (x <= borne+epsilon)) {
         x = vx * t - borne;
         y = - ((-g * sq(t)/2) + vy*t);
         if (x <= 0) { pballe = gauche; }
         if (x <= -borne) { pballe = gauche; tinc = 0; }
       }
       }
     }
  }
       
    
}