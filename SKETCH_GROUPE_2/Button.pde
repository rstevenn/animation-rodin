class Button{
  int x;
  int y;
  int width;
  int height;
  String text;
  int r;
  int g;
  int b;
  int Event;
  boolean click;
  
  /*Construction of an object button.
  Parameters:
  -----------
  newX: X position of the button (integer).
  newY: Y position of the button (integer).
  newWidth: width of the button (integer).
  newHeight: height of the button (integer).
  newText: text in the button (String).
  newR: Red for RGB (integer).
  newG: Green for RGB (integer).
  newB: Blue for RGB (integer).
  */
  Button(int newX, int newY, int newWidth, int newHeight, String newText,int newR, int newG, int newB, int newEvent){
    x = newX;
    y = newY;
    width = newWidth;
    height = newHeight;
    text = newText;
    r = newR;
    g = newG;
    b = newB;
    Event = newEvent;
  }

//Fonction to display button.
  void display(boolean guard){
    if (this.checkPos() && guard){
      fill(r,g,b); stroke(248,219,27); rectMode(CENTER); rect(x,y,width,height);
      fill(255); textAlign(CENTER, CENTER); text(text,x,y,width,height);
    }
    else if (guard){
      fill(r,g,b); stroke(255); rectMode(CENTER); rect(x,y,width,height);
      fill(255); textAlign(CENTER, CENTER); text(text,x,y,width,height);
    }
    else{
      fill(133,6,6); stroke(255); rectMode(CENTER); rect(x,y,width,height);
      fill(255); textAlign(CENTER, CENTER); text(text,x,y,width,height);
    }
  }

//Fonction to check if the mouse is on the button.
  boolean checkPos(){
    if((mouseX < x+(width/2)) && (mouseX > x-(width/2)) && ((mouseY < y+(height/2)) && (mouseY > y-(height/2)))){
      return true;
    } else{return false;}
  }
}
