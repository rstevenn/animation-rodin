//Variables
boolean click; //boolean to know when there is a click from the mouse.
int ACTION = 0; //variable to know when thre is an action, and what action to do.
Machine_Parking_Ferry machine = new Machine_Parking_Ferry(); //create machine.

//Setup the size of the sketch.
void setup (){
  size(1200, 800);
}

//Display graphical elements and buttons
void draw(){  
  //draw graphical elements.
  background(0);
  stroke(25);
  for(int i=0;i<800;i+=25){
    line(0,i,1200,i);
  }
  for(int i=0;i<1200;i+=25){
    line(i,0,i,800);
  }
  stroke(70);
  for(int i=0;i<800;i+=50){
    line(0,i,1200,i);
  }
  for(int i=0;i<1200;i+=50){
    line(i,0,i,800);
  }
}
