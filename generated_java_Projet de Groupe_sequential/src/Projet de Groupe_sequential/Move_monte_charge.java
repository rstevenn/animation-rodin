package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class Move_monte_charge{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public Move_monte_charge(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Value) && !new Integer(new Integer(machine.get_Monte_charge_etage() * new Integer(10)) + Value).equals(new Integer(22)) && ((BRelation.cross(NAT.instance,BOOL.instance)).pow()).has((new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Select_untouch_stage().apply(new Integer(new Integer(machine.get_Monte_charge_etage() * new Integer(10)) + Value)),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Monte_charge_etage(),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true))))))); */
	public /*@ pure */ boolean guard_Move_monte_charge( Integer Value) {
		return (new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Value) && !new Integer(new Integer(machine.get_Monte_charge_etage() * new Integer(10)) + Value).equals(new Integer(22)) && ((BRelation.cross(NAT.instance,BOOL.instance)).pow()).has((new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Select_untouch_stage().apply(new Integer(new Integer(machine.get_Monte_charge_etage() * new Integer(10)) + Value)),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Monte_charge_etage(),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true)))))));
	}

	/*@ public normal_behavior
		requires guard_Move_monte_charge(Value);
		assignable machine.Monte_charge_etage, machine.Barriere_monte_charge, machine.Barriere_acces_monte_charge, machine.Barriere_etage, machine.Capteur_arrive, machine.Capteur_monte_charge_1, machine.Capteur_monte_charge_2, machine.Capteur_etages;
		ensures guard_Move_monte_charge(Value) &&  machine.get_Monte_charge_etage() == \old(Value) &&  machine.get_Barriere_monte_charge().equals(\old(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false)))) &&  machine.get_Barriere_acces_monte_charge() == \old(false) &&  machine.get_Barriere_etage().equals(\old(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false)))) &&  machine.get_Capteur_arrive() == \old(machine.get_Choose_capteur_state().apply(Value)) &&  machine.get_Capteur_monte_charge_1() == \old(machine.get_Choose_capteur_state().apply(Value)) &&  machine.get_Capteur_monte_charge_2() == \old(true) &&  machine.get_Capteur_etages().equals(\old((new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Select_untouch_stage().apply(new Integer(new Integer(machine.get_Monte_charge_etage() * 10) + Value)),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Monte_charge_etage(),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true))))))); 
	 also
		requires !guard_Move_monte_charge(Value);
		assignable \nothing;
		ensures true; */
	public void run_Move_monte_charge( Integer Value){
		if(guard_Move_monte_charge(Value)) {
			Integer Monte_charge_etage_tmp = machine.get_Monte_charge_etage();
			BRelation<Integer,Boolean> Barriere_monte_charge_tmp = machine.get_Barriere_monte_charge();
			Boolean Barriere_acces_monte_charge_tmp = machine.get_Barriere_acces_monte_charge();
			BRelation<Integer,Boolean> Barriere_etage_tmp = machine.get_Barriere_etage();
			Boolean Capteur_arrive_tmp = machine.get_Capteur_arrive();
			Boolean Capteur_monte_charge_1_tmp = machine.get_Capteur_monte_charge_1();
			Boolean Capteur_monte_charge_2_tmp = machine.get_Capteur_monte_charge_2();
			BRelation<Integer,Boolean> Capteur_etages_tmp = machine.get_Capteur_etages();

			machine.set_Monte_charge_etage(Value);
			machine.set_Barriere_monte_charge(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false)));
			machine.set_Barriere_acces_monte_charge(false);
			machine.set_Barriere_etage(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false)));
			machine.set_Capteur_arrive(machine.get_Choose_capteur_state().apply(Value));
			machine.set_Capteur_monte_charge_1(machine.get_Choose_capteur_state().apply(Value));
			machine.set_Capteur_monte_charge_2(true);
			machine.set_Capteur_etages((new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Select_untouch_stage().apply(new Integer(new Integer(Monte_charge_etage_tmp * 10) + Value)),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Monte_charge_etage_tmp,false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true))))));

			System.out.println("Move_monte_charge executed Value: " + Value + " ");
		}
	}

}
