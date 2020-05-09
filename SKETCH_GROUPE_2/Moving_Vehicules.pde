class Moving_Vehicules{
  int x;
  int y;
  int speed;
  int typeVehicule;

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
  Moving_Vehicules(int newX, int newY, int newSpeed, int newVehicule){
    x = newX;
    y = newY;
    speed = newSpeed;
    typeVehicule = newVehicule;
  }
  
  //dipslay the object
  void display(){
    switch(typeVehicule){
      case 1: PImage voiture;
              voiture = loadImage("Car-Right-Red-icon.png");
              imageMode(CENTER);
              image(voiture, x, y, 64, 64);break;
      case 2: PImage camion1;
              camion1 = loadImage("City-Truck-icon.png");
              imageMode(CENTER);
              image(camion1, x, y, 64, 64);break;
      case 3: PImage camion2;
              camion2 = loadImage("Dura-truck-icon.png");
              imageMode(CENTER);
              image(camion2, x, y, 64, 64);break;
      case 4: PImage camion3;
              camion3 = loadImage("Dura-Truck-blue-icon.png");
              imageMode(CENTER);
              image(camion3, x, y, 64, 64);break;
    }
  }
  
  //get x
  int get_x(){
    return x;
  }
  
  //get y
  int get_y(){
    return y;
  }
  
  //move object on the right.
  void deplace_horizontal_right(){
    x = x + speed;
  }
  
  //move object on the left.
  void deplace_horizontal_left(){
    x = x - speed;
  }
  
  //move object down.
  void deplace_vertical_down(){
    y = y + speed;
  }
  
  //move object up
  void deplace_vertical_up(){
    y = y - speed;
  }
}
