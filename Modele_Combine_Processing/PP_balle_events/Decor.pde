
void decor() {

  pushStyle();
  rectMode(CENTER);
  fill(#6588cf);
  noStroke();
  rect(0,12,300,5);     // la table
  rect(-100,42,5,60);   // pied gauche
  rect(100,42,5,60);    // pied droit
  rect(0,0,3,20);       // le filet
  popStyle();
  
}