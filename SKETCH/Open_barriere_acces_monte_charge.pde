//The machineOpen_barriere_acces_monte_charge that handle the gate to acces to the freight elevator
class Open_barriere_acces_monte_charge{
  
 boolean guard_Open_barriere_acces_monte_charge() {
   // the condition of the event
		return ((Barriere_acces_monte_charge.equals(false)) && (Monte_charge_etage.equals(new Integer(1))) && (Capteur_arrive.equals(true)));
	}

  void run_Open_barriere_acces_monte_charge(){
    // run and animate teh event
    if (ACTION == false && SelectEvent == 12){
  		if(guard_Open_barriere_acces_monte_charge()) {
  			Barriere_acces_monte_charge = true;
  			System.out.println("Open_barriere_acces_monte_charge executed ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 12){
      SelectEvent = 0; 
      ACTION = false;
		}
  }
}
