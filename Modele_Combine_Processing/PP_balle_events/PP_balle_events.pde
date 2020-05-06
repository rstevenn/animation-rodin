// Constants Event-B

int gauche = 0;
int droite = 1;


// Variables Event-B

int pballe;


// Events

Ping ping = new Ping();
Pong pong = new Pong();

Bouton boutonPing = new Bouton(-100,100,50,30,"Ping");
Bouton boutonPong = new Bouton(100,100,50,30,"Pong");

int nb_events = 2;
int num_event;


// Graphical objects

int borne = 120;
Balle maballe = new Balle();

// Setup

void setup(){
  
  size(400,400);
  frameRate(30);
  background(255);
  translate(width/2,width/2);
  
  init_events();

  decor();
  maballe.dessine();  
  
}


// Drawing loop

void draw(){
    background(255,255,255);
    translate(width/2,width/2);
    
    maj_events();
    event_action(num_event);
    
    decor();
    maballe.maj();
    maballe.dessine();
       
}


// Mouse handling
// s'inspirer de ceci

void mousePressed() {

  if (boutonPing.selectionne()) { num_event = 0; }
  if (boutonPong.selectionne()) { num_event = 1; }
  
}

void mouseReleased() {
 
  boutonPing.relache();
  boutonPong.relache();
  
}