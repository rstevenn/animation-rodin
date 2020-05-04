package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class DISPAWN_VEHICULE_VOIE_2{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public DISPAWN_VEHICULE_VOIE_2(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> !machine.get_Voie_de_sortie_2().apply(new Integer(0)).equals(machine.none); */
	public /*@ pure */ boolean guard_DISPAWN_VEHICULE_VOIE_2() {
		return !machine.get_Voie_de_sortie_2().apply(new Integer(0)).equals(machine.none);
	}

	/*@ public normal_behavior
		requires guard_DISPAWN_VEHICULE_VOIE_2();
		assignable machine.Voie_de_sortie_2;
		ensures guard_DISPAWN_VEHICULE_VOIE_2() &&  machine.get_Voie_de_sortie_2().equals(\old(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)))); 
	 also
		requires !guard_DISPAWN_VEHICULE_VOIE_2();
		assignable \nothing;
		ensures true; */
	public void run_DISPAWN_VEHICULE_VOIE_2(){
		if(guard_DISPAWN_VEHICULE_VOIE_2()) {
			BRelation<Integer,Integer> Voie_de_sortie_2_tmp = machine.get_Voie_de_sortie_2();

			machine.set_Voie_de_sortie_2(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)));

			System.out.println("DISPAWN_VEHICULE_VOIE_2 executed ");
		}
	}

}
