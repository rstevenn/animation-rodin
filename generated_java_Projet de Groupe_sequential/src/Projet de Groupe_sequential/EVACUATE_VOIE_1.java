package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class EVACUATE_VOIE_1{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public EVACUATE_VOIE_1(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (!machine.get_Voie_arrive_1().apply(new Integer(0)).equals(machine.none) && machine.get_Voie_de_sortie_1().apply(new Integer(0)).equals(machine.none) && !machine.get_Borne_1().equals(true) && !machine.get_Barriere_voie1().equals(true)); */
	public /*@ pure */ boolean guard_EVACUATE_VOIE_1() {
		return (!machine.get_Voie_arrive_1().apply(new Integer(0)).equals(machine.none) && machine.get_Voie_de_sortie_1().apply(new Integer(0)).equals(machine.none) && !machine.get_Borne_1().equals(true) && !machine.get_Barriere_voie1().equals(true));
	}

	/*@ public normal_behavior
		requires guard_EVACUATE_VOIE_1();
		assignable machine.Voie_de_sortie_1, machine.Voie_arrive_1;
		ensures guard_EVACUATE_VOIE_1() &&  machine.get_Voie_de_sortie_1().equals(\old(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.get_Voie_arrive_1().apply(0))))) &&  machine.get_Voie_arrive_1().equals(\old(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)))); 
	 also
		requires !guard_EVACUATE_VOIE_1();
		assignable \nothing;
		ensures true; */
	public void run_EVACUATE_VOIE_1(){
		if(guard_EVACUATE_VOIE_1()) {
			BRelation<Integer,Integer> Voie_de_sortie_1_tmp = machine.get_Voie_de_sortie_1();
			BRelation<Integer,Integer> Voie_arrive_1_tmp = machine.get_Voie_arrive_1();

			machine.set_Voie_de_sortie_1(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,Voie_arrive_1_tmp.apply(0))));
			machine.set_Voie_arrive_1(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)));

			System.out.println("EVACUATE_VOIE_1 executed ");
		}
	}

}
