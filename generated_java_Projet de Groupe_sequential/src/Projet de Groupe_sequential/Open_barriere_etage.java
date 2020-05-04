package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class Open_barriere_etage{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public Open_barriere_etage(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Value) && machine.get_Monte_charge_etage().equals(Value) && machine.get_Barriere_etage().apply(Value).equals(false) && NAT.instance.has(Value) && machine.get_Capteur_etages().apply(Value).equals(true)); */
	public /*@ pure */ boolean guard_Open_barriere_etage( Integer Value) {
		return (new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Value) && machine.get_Monte_charge_etage().equals(Value) && machine.get_Barriere_etage().apply(Value).equals(false) && NAT.instance.has(Value) && machine.get_Capteur_etages().apply(Value).equals(true));
	}

	/*@ public normal_behavior
		requires guard_Open_barriere_etage(Value);
		assignable machine.Barriere_etage;
		ensures guard_Open_barriere_etage(Value) &&  machine.get_Barriere_etage().equals(\old((machine.get_Barriere_etage().override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true)))))); 
	 also
		requires !guard_Open_barriere_etage(Value);
		assignable \nothing;
		ensures true; */
	public void run_Open_barriere_etage( Integer Value){
		if(guard_Open_barriere_etage(Value)) {
			BRelation<Integer,Boolean> Barriere_etage_tmp = machine.get_Barriere_etage();

			machine.set_Barriere_etage((Barriere_etage_tmp.override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true)))));

			System.out.println("Open_barriere_etage executed Value: " + Value + " ");
		}
	}

}
