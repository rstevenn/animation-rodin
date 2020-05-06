public class Open_barriere_acces_monte_charge{
  
  public boolean guard_Open_barriere_acces_monte_charge(Machine_Parking_Ferry machine) {
		return ((machine.get_Barriere_acces_monte_charge().equals(false)) && (machine.get_Monte_charge_etage().equals(new Integer(1))) && (machine.get_Capteur_arrive().equals(true)));
	}

  public void run_Open_barriere_acces_monte_charge(Machine_Parking_Ferry machine){
		if(guard_Open_barriere_acces_monte_charge(machine)) {
			machine.set_Barriere_acces_monte_charge(true);
			System.out.println("Open_barriere_acces_monte_charge executed ");
		}
	}
}
