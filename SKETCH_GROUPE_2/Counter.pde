class Counter{
  int x;
  int y;
  int width;
  int height;
  // Create the constructor of the counter
  Counter(int newX, int newY, int newWidth, int newHeight){
    x = newX;
    y = newY;
    width = newWidth;
    height = newHeight;
  }

//Fonction to display the counters.
  void display(int value){
      /*
        display the counter
        int value: the value of the counter
      */
      rectMode(CENTER); 
      fill(25); 
      stroke(255, 255, 255);
      rect(x,y,width,height);
      fill(255,0,0); 
      textAlign(CENTER, CENTER); 
      text("0" + value + " / 06" , x, y, width, height);
   
  }
}

// Constructor of target stage in the machine 
class TargetStage{
  int x;
  int y;
  
  TargetStage(int newX, int newY){
    x = newX;
    y = newY;
  }

  void display(){
      /*
  Parameters:
  -----------
  newX: X position of the stage (integer).
  newY: Y position of the stage (integer).*/

  // Fonction to display the current target stage
      
      rectMode(CENTER); 
      fill(25); 
      stroke(255, 255, 255);
      rect(x+100, y-50, 80, 30);
      fill(255); 
      textAlign(CENTER, CENTER); 
      text("Target Floor" , x+100, y-50, 80, 30);
    
    
      for ( int i = 0; i < 2; i++ )
      {
        for ( int j = 1; j < 4; j++ )
        {
          rectMode(CENTER); 
          fill(25); 
          stroke(255, 255, 255);
          rect(x + j * 50, y + i * 50, 50, 50);
          fill(255,0,0); 
          textAlign(CENTER, CENTER); 
          if ( i == 0)
          {
            if (target_etage_rangee1.apply(j) != 0)
            {
              text( target_etage_rangee1.apply(j) + "", x + j * 50, y + i * 50, 50, 50);
            }else{
              text( "-", x + j * 50, y + i * 50, 50, 50);
            }
          } else {
            if (target_etage_rangee2.apply(j) != 0)
            {
              text( target_etage_rangee2.apply(j) + "", x + j * 50, y + i * 50, 50, 50);
            } else {
              text( "-", x + j * 50, y + i * 50, 50, 50);
            }
          }
        }
      }
     
  }
}
