class Pong {
  
    Pong() { println("Pong created"); }
    
    boolean guard_pong(){     
      return pballe == droite;     
    }
    
    void run_pong(){       
      if (guard_pong()) {        
        maballe.versGauche();        
    }}
    
}