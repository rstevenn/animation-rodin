package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class Open_barriere_acces_monte_charge{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public Open_barriere_acces_monte_charge(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (machine.get_Barriere_acces_monte_charge().equals(false) && machine.get_Monte_charge_etage().equals(new Integer(1)) && machine.get_Capteur_arrive().equals(true)); */
	public /*@ pure */ boolean guard_Open_barriere_acces_monte_charge() {
		return (machine.get_Barriere_acces_monte_charge().equals(false) && machine.get_Monte_charge_etage().equals(new Integer(1)) && machine.get_Capteur_arrive().equals(true));
	}

	/*@ public normal_behavior
		requires guard_Open_barriere_acces_monte_charge();
		assignable machine.Barriere_acces_monte_charge;
		ensures guard_Open_barriere_acces_monte_charge() &&  machine.get_Barriere_acces_monte_charge() == \old(true); 
	 also
		requires !guard_Open_barriere_acces_monte_charge();
		assignable \nothing;
		ensures true; */
	public void run_Open_barriere_acces_monte_charge(){
		if(guard_Open_barriere_acces_monte_charge()) {
			Boolean Barriere_acces_monte_charge_tmp = machine.get_Barriere_acces_monte_charge();

			machine.set_Barriere_acces_monte_charge(true);

			System.out.println("Open_barriere_acces_monte_charge executed ");
		}
	}

}
