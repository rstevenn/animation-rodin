void Decor() {
  stroke(255);
  line(0, 400, 150, 400); //bar voie 1
  line(150, 400, 200, 350); //bar diagonale voie 1
  line(200,350, 200, 250); //bar au dessus de la diagonale voie 1
  line(0, 450, 250, 450); //bar de delimitation des voies 
  line(0, 500, 150, 500); //bar voie 2
  line(150, 500, 200, 550); //bar diagonale voie 2
  line(200, 550, 200, 650); //bar en dessous de la diagonale voie 2
  line(250, 400, 250, 250); //bar voie 1 au dessus de barriere
  line(250, 500, 250, 650); //bar voie 2 en dessous de barriere 
  line(250, 400, 350, 400); //bar apres la barriere voie 1
  line(250, 500, 350, 500); //bar apres la barriere voie 2
}
