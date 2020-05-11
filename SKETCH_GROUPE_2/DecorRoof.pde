void DecorRoof(){
  stroke(255);
  fill(0);
  pushStyle();
  fill(125);
  rect(225, 175, 50, 150);
  rect(225, 725, 50, 150);
  rect(725, 250, 150, 100);
  rect(725, 350, 150, 100);
  rect(725, 450, 150, 100);
  popStyle();
  
  // show the counter state
  Stage1Counter.display(Etages.apply(1));
  Stage2Counter.display(Etages.apply(2));
  Stage3Counter.display(Etages.apply(3));
}
