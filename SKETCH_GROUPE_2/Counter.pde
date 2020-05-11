class Counter{
  int x;
  int y;
  int width;
  int height;
  
  Counter(int newX, int newY, int newWidth, int newHeight){
    x = newX;
    y = newY;
    width = newWidth;
    height = newHeight;
  }

//Fonction to display the counters.
  void display(int value){
      
      rectMode(CENTER); 
      fill(25); 
      stroke(255, 255, 255);
      rect(x,y,width,height);
      fill(255,0,0); 
      textAlign(CENTER, CENTER); 
      text("0" + value + " / 06" , x, y, width, height);
   
  }
}
