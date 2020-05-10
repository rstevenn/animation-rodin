class Moving_Vehicules{
  int x;
  int y;
  float angle;
  float angleSpeed;
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
    angle = 0;
    angleSpeed = 1;
    speed = newSpeed;
    typeVehicule = newVehicule;
  }
  
  Moving_Vehicules(int newX, int newY, int newSpeed, int newVehicule, float newAngleSpeed)
  {
    x = newX;
    y = newY;
    angle = 0;
    angleSpeed = newAngleSpeed;
    speed = newSpeed;
    typeVehicule = newVehicule;
  }
  
  //dipslay the object
  void display(){
    switch(typeVehicule){
      case 1: PImage voiture;
              voiture = loadImage("Car-Right-Red-icon.png");
              pushMatrix();
              imageMode(CENTER);
              translate(x, y);
              rotate(radians(angle));
              image(voiture, 0, 0, 64, 64);
              popMatrix();
              break;
      case 2: PImage camion1;
              camion1 = loadImage("City-Truck-icon.png");
              pushMatrix();
              imageMode(CENTER);
              translate(x, y);
              rotate(radians(angle));
              image(camion1, 0, 0, 64, 64);
              popMatrix();
              break;
              
      case 3: PImage camion2;
              camion2 = loadImage("Dura-truck-icon.png");
              pushMatrix();
              imageMode(CENTER);
              translate(x, y);
              rotate(radians(angle));
              image(camion2, 0, 0, 64, 64);
              popMatrix();
              break;
      case 4: PImage camion3;
              camion3 = loadImage("Dura-Truck-blue-icon.png");
              pushMatrix();
              imageMode(CENTER);
              translate(x, y);
              rotate(radians(angle));
              image(camion3, 0, 0, 64, 64);
              popMatrix();
              break;
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
    x += speed;
  }
  
  //move object on the left.
  void deplace_horizontal_left(){
    x -= speed;
  }
  
  //move object down.
  void deplace_vertical_down(){
    y += speed;
  }
  
  //move object up
  void deplace_vertical_up(){
    y -= speed;
  }
  
  // positive rotation
  void positive_rotation()
  {
    angle += angleSpeed;
  }
  
  // negative rotaion
  void negative_rotation()
  {
    angle -= angleSpeed;
  }
}
