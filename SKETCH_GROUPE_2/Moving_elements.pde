class Moving_elements {
  int x;
  int y;
  int speed;
  int width;
  int height;
  String text;
  int coloring;

  /*Construction of an object Moving_elements.
   Parameters:
   -----------
   newX: X position of the Moving_elements (integer).
   newY: Y position of the Moving_elements (integer).
   newSpeed: the speed of the elemenents (integer).
   newWidth: width of the Moving_elements (integer).
   newHeight: height of the Moving_elements (integer).
   newText: text for the Moving_elements (String).
   */
  Moving_elements(int newX, int newY, int newSpeed, int newWidth, int newHeight, String newText) {
    x = newX;
    y = newY;
    speed = newSpeed;
    width = newWidth;
    height = newHeight;
    text = newText;
  }

  Moving_elements(int newX, int newY, int newSpeed, int newWidth, int newHeight, String newText, int newColor) {
    x = newX;
    y = newY;
    speed = newSpeed;
    width = newWidth;
    height = newHeight;
    text = newText;
    coloring = newColor;
  }

  //dipslay the object
  void display() {
    fill(25); 
    stroke(255); 
    rectMode(CENTER); 
    rect(x, y, width, height);
    fill(255); 
    textAlign(CENTER, CENTER); 
    text(text, x, y, width, height);
  }

  void display_green() {
    fill(#44ff00); 
    stroke(255); 
    rectMode(CENTER); 
    rect(x, y, width, height);
    fill(255); 
    textAlign(CENTER, CENTER); 
    text(text, x, y, width, height);
  }

    void displayNoStroke() {
      fill(coloring); 
      noStroke(); 
      rectMode(CENTER); 
      rect(x, y, width, height);
      fill(255); 
      textAlign(CENTER, CENTER); 
      text(text, x, y, width, height);
    }

    //get x
    int get_x() {
      return x;
    }

    //get y
    int get_y() {
      return y;
    }

    //move object on the right.
    void deplace_horizontal_right() {
      x = x + speed;
    }

    //move object on the left.
    void deplace_horizontal_left() {
      x = x - speed;
    }

    //move object down.
    void deplace_vertical_down() {
      y = y + speed;
    }

    //move object up
    void deplace_vertical_up() {
      y = y - speed;
    }

    void changeColor(int newColor) {
      coloring = newColor;
    }
  }
