void Decor() {
  // routes
  fill(25);
  noStroke();
  rectMode(CORNER);
  rect(0, 400, 450, 100); // horizontal arrivée
  rect(200, 250, 50, 500);  // verticale arrivée 
  triangle(200, 300, 100, 400, 200, 400); // tringle haut
  triangle(100, 500, 200, 600, 200, 500); // triangle bas
  rect(600, 200, 50, 300); // routes étages

  stroke(255);
  line(0, 400, 100, 400); //bar voie 1
  line(100, 400, 200, 300); //bar diagonale voie 1
  line(200, 300, 200, 250); //bar au dessus de la diagonale voie 1
  line(0, 450, 250, 450); //bar de delimitation des voies 
  line(0, 500, 100, 500); //bar voie 2
  line(100, 500, 200, 600); //bar diagonale voie 2
  line(200, 600, 200, 650); //bar en dessous de la diagonale voie 2
  line(250, 400, 250, 250); //bar voie 1 au dessus de barriere
  line(250, 500, 250, 650); //bar voie 2 en dessous de barriere 
  line(250, 400, 450, 400); //bar apres la barriere voie 1
  line(250, 500, 450, 500); //bar apres la barriere voie 2

  // étages
  line(600, 200, 650, 200);
  line(600, 300, 650, 300);
  line(600, 400, 650, 400);
  line(600, 500, 650, 500);
  
  // capteur 
  fill(0);
  rect(625, 200, 25, 25); //capteur etage1
  rect(625, 300, 25, 25); //capteur etage2
  rect(625, 400, 25, 25); //capteur etage3
} 
