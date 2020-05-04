package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class Open_barriere_monte_charge{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public Open_barriere_monte_charge(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (new BSet<Integer>(new Integer(1),new Integer(2)).has(Value) && machine.get_Barriere_monte_charge().apply(Value).equals(false) && NAT.instance.has(Value) && Value.equals(new Integer(1)) && machine.get_Monte_charge_etage().equals(new Integer(1)) || Value.equals(new Integer(2)) && Value.equals(new Integer(1)) && machine.get_Capteur_monte_charge_1().equals(true) || Value.equals(new Integer(2)) && machine.get_Capteur_monte_charge_2().equals(true)); */
	public /*@ pure */ boolean guard_Open_barriere_monte_charge( Integer Value) {
		return (new BSet<Integer>(new Integer(1),new Integer(2)).has(Value) && machine.get_Barriere_monte_charge().apply(Value).equals(false) && NAT.instance.has(Value) && Value.equals(new Integer(1)) && machine.get_Monte_charge_etage().equals(new Integer(1)) || Value.equals(new Integer(2)) && Value.equals(new Integer(1)) && machine.get_Capteur_monte_charge_1().equals(true) || Value.equals(new Integer(2)) && machine.get_Capteur_monte_charge_2().equals(true));
	}

	/*@ public normal_behavior
		requires guard_Open_barriere_monte_charge(Value);
		assignable machine.Barriere_monte_charge;
		ensures guard_Open_barriere_monte_charge(Value) &&  machine.get_Barriere_monte_charge().equals(\old((machine.get_Barriere_monte_charge().override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true)))))); 
	 also
		requires !guard_Open_barriere_monte_charge(Value);
		assignable \nothing;
		ensures true; */
	public void run_Open_barriere_monte_charge( Integer Value){
		if(guard_Open_barriere_monte_charge(Value)) {
			BRelation<Integer,Boolean> Barriere_monte_charge_tmp = machine.get_Barriere_monte_charge();

			machine.set_Barriere_monte_charge((Barriere_monte_charge_tmp.override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true)))));

			System.out.println("Open_barriere_monte_charge executed Value: " + Value + " ");
		}
	}

}
