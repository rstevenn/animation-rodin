package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class EVACUATE_VOIE_2{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public EVACUATE_VOIE_2(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (!machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none) && machine.get_Voie_de_sortie_2().apply(new Integer(0)).equals(machine.none) && !machine.get_Barriere_voie2().equals(true) && !machine.get_Borne_2().equals(true)); */
	public /*@ pure */ boolean guard_EVACUATE_VOIE_2() {
		return (!machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none) && machine.get_Voie_de_sortie_2().apply(new Integer(0)).equals(machine.none) && !machine.get_Barriere_voie2().equals(true) && !machine.get_Borne_2().equals(true));
	}

	/*@ public normal_behavior
		requires guard_EVACUATE_VOIE_2();
		assignable machine.Voie_de_sortie_2, machine.Voie_arrive_2;
		ensures guard_EVACUATE_VOIE_2() &&  machine.get_Voie_de_sortie_2().equals(\old(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.get_Voie_arrive_2().apply(0))))) &&  machine.get_Voie_arrive_2().equals(\old(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)))); 
	 also
		requires !guard_EVACUATE_VOIE_2();
		assignable \nothing;
		ensures true; */
	public void run_EVACUATE_VOIE_2(){
		if(guard_EVACUATE_VOIE_2()) {
			BRelation<Integer,Integer> Voie_de_sortie_2_tmp = machine.get_Voie_de_sortie_2();
			BRelation<Integer,Integer> Voie_arrive_2_tmp = machine.get_Voie_arrive_2();

			machine.set_Voie_de_sortie_2(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,Voie_arrive_2_tmp.apply(0))));
			machine.set_Voie_arrive_2(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)));

			System.out.println("EVACUATE_VOIE_2 executed ");
		}
	}

}
