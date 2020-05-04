package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class SPAWN_VEHICULE_VOIE_2{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public SPAWN_VEHICULE_VOIE_2(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none) && new BSet<Integer>(machine.voiture,machine.camion1,machine.camion2,machine.camion3).has(vehicule_type)); */
	public /*@ pure */ boolean guard_SPAWN_VEHICULE_VOIE_2( Integer vehicule_type) {
		return (machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none) && new BSet<Integer>(machine.voiture,machine.camion1,machine.camion2,machine.camion3).has(vehicule_type));
	}

	/*@ public normal_behavior
		requires guard_SPAWN_VEHICULE_VOIE_2(vehicule_type);
		assignable machine.Voie_arrive_2;
		ensures guard_SPAWN_VEHICULE_VOIE_2(vehicule_type) &&  machine.get_Voie_arrive_2().equals(\old(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,vehicule_type)))); 
	 also
		requires !guard_SPAWN_VEHICULE_VOIE_2(vehicule_type);
		assignable \nothing;
		ensures true; */
	public void run_SPAWN_VEHICULE_VOIE_2( Integer vehicule_type){
		if(guard_SPAWN_VEHICULE_VOIE_2(vehicule_type)) {
			BRelation<Integer,Integer> Voie_arrive_2_tmp = machine.get_Voie_arrive_2();

			machine.set_Voie_arrive_2(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,vehicule_type)));

			System.out.println("SPAWN_VEHICULE_VOIE_2 executed vehicule_type: " + vehicule_type + " ");
		}
	}

}
