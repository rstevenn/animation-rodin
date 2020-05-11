void Decor() {
  stroke(255);
  line(0, 400, 100, 400); //bar voie 1
  line(100, 400, 200, 300); //bar diagonale voie 1
  line(200,300, 200, 250); //bar au dessus de la diagonale voie 1
  line(0, 450, 250, 450); //bar de delimitation des voies 
  line(0, 500, 100, 500); //bar voie 2
  line(100, 500, 200, 600); //bar diagonale voie 2
  line(200, 600, 200, 650); //bar en dessous de la diagonale voie 2
  line(250, 400, 250, 250); //bar voie 1 au dessus de barriere
  line(250, 500, 250, 650); //bar voie 2 en dessous de barriere 
  line(250, 400, 350, 400); //bar apres la barriere voie 1
  line(250, 500, 350, 500); //bar apres la barriere voie 2
}
