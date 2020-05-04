package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class VOIE_2_to_monte_charge_rangee1{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public VOIE_2_to_monte_charge_rangee1(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (!machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none) && machine.get_Borne_2().equals(true) && machine.get_Monte_charge_etage().equals(new Integer(1)) && (new Integer(machine.get_Test_full_rangee1() + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(3)) <= 0 && machine.get_Barriere_acces_monte_charge().equals(true) && machine.get_Barriere_monte_charge().apply(new Integer(1)).equals(true)); */
	public /*@ pure */ boolean guard_VOIE_2_to_monte_charge_rangee1() {
		return (!machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none) && machine.get_Borne_2().equals(true) && machine.get_Monte_charge_etage().equals(new Integer(1)) && (new Integer(machine.get_Test_full_rangee1() + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(3)) <= 0 && machine.get_Barriere_acces_monte_charge().equals(true) && machine.get_Barriere_monte_charge().apply(new Integer(1)).equals(true));
	}

	/*@ public normal_behavior
		requires guard_VOIE_2_to_monte_charge_rangee1();
		assignable machine.Monte_charge_rangee1, machine.Voie_arrive_2, machine.Borne_2, machine.Barriere_voie2, machine.Test_full_rangee1, machine.N_slot_full_rangee1, machine.target_etage_rangee1, machine.Virtual_etages;
		ensures guard_VOIE_2_to_monte_charge_rangee1() &&  machine.get_Monte_charge_rangee1().equals(\old((new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,machine.get_Voie_arrive_2().apply(0))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,machine.get_Monte_charge_rangee1().apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,machine.get_Monte_charge_rangee1().apply(2)))))))) &&  machine.get_Voie_arrive_2().equals(\old((machine.get_Voie_arrive_2().override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)))))) &&  machine.get_Borne_2() == \old(false) &&  machine.get_Barriere_voie2() == \old(false) &&  machine.get_Test_full_rangee1() == \old(new Integer(machine.get_Test_full_rangee1() + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(0)))) &&  machine.get_N_slot_full_rangee1() == \old(new Integer(machine.get_N_slot_full_rangee1() + 1)) &&  machine.get_target_etage_rangee1().equals(\old((new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,machine.get_Temporary_target_2())).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,machine.get_target_etage_rangee1().apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,machine.get_target_etage_rangee1().apply(2)))))))) &&  machine.get_Virtual_etages().equals(\old((machine.get_Virtual_etages().override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(machine.get_Temporary_target_2(),new Integer(machine.get_Virtual_etages().apply(machine.get_Temporary_target_2()) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(0))))))))); 
	 also
		requires !guard_VOIE_2_to_monte_charge_rangee1();
		assignable \nothing;
		ensures true; */
	public void run_VOIE_2_to_monte_charge_rangee1(){
		if(guard_VOIE_2_to_monte_charge_rangee1()) {
			BRelation<Integer,Integer> Monte_charge_rangee1_tmp = machine.get_Monte_charge_rangee1();
			BRelation<Integer,Integer> Voie_arrive_2_tmp = machine.get_Voie_arrive_2();
			Boolean Borne_2_tmp = machine.get_Borne_2();
			Boolean Barriere_voie2_tmp = machine.get_Barriere_voie2();
			Integer Test_full_rangee1_tmp = machine.get_Test_full_rangee1();
			Integer N_slot_full_rangee1_tmp = machine.get_N_slot_full_rangee1();
			BRelation<Integer,Integer> target_etage_rangee1_tmp = machine.get_target_etage_rangee1();
			BRelation<Integer,Integer> Virtual_etages_tmp = machine.get_Virtual_etages();

			machine.set_Monte_charge_rangee1((new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,Voie_arrive_2_tmp.apply(0))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,Monte_charge_rangee1_tmp.apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,Monte_charge_rangee1_tmp.apply(2)))))));
			machine.set_Voie_arrive_2((Voie_arrive_2_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)))));
			machine.set_Borne_2(false);
			machine.set_Barriere_voie2(false);
			machine.set_Test_full_rangee1(new Integer(Test_full_rangee1_tmp + machine.get_value_vehicules().apply(Voie_arrive_2_tmp.apply(0))));
			machine.set_N_slot_full_rangee1(new Integer(N_slot_full_rangee1_tmp + 1));
			machine.set_target_etage_rangee1((new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,machine.get_Temporary_target_2())).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,target_etage_rangee1_tmp.apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,target_etage_rangee1_tmp.apply(2)))))));
			machine.set_Virtual_etages((Virtual_etages_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(machine.get_Temporary_target_2(),new Integer(Virtual_etages_tmp.apply(machine.get_Temporary_target_2()) + machine.get_value_vehicules().apply(Voie_arrive_2_tmp.apply(0))))))));

			System.out.println("VOIE_2_to_monte_charge_rangee1 executed ");
		}
	}

}
