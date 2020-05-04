package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class Monte_charge_rangee2_to_etage{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public Monte_charge_rangee2_to_etage(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (!machine.get_N_slot_full_rangee2().equals(new Integer(0)) && !machine.get_Test_full_rangee2().equals(new Integer(0)) && NAT.instance.has(new Integer(machine.get_Test_full_rangee2() - machine.get_value_vehicules().apply(machine.get_Monte_charge_rangee2().apply(machine.get_N_slot_full_rangee2())))) && machine.get_target_etage_rangee2().apply(machine.get_N_slot_full_rangee2()).equals(machine.get_Monte_charge_etage()) && machine.get_Barriere_monte_charge().apply(new Integer(2)).equals(true) && NAT.instance.has(machine.get_Temporary_target_2())); */
	public /*@ pure */ boolean guard_Monte_charge_rangee2_to_etage() {
		return (!machine.get_N_slot_full_rangee2().equals(new Integer(0)) && !machine.get_Test_full_rangee2().equals(new Integer(0)) && NAT.instance.has(new Integer(machine.get_Test_full_rangee2() - machine.get_value_vehicules().apply(machine.get_Monte_charge_rangee2().apply(machine.get_N_slot_full_rangee2())))) && machine.get_target_etage_rangee2().apply(machine.get_N_slot_full_rangee2()).equals(machine.get_Monte_charge_etage()) && machine.get_Barriere_monte_charge().apply(new Integer(2)).equals(true) && NAT.instance.has(machine.get_Temporary_target_2()));
	}

	/*@ public normal_behavior
		requires guard_Monte_charge_rangee2_to_etage();
		assignable machine.Etages, machine.Test_full_rangee2, machine.N_slot_full_rangee2, machine.Monte_charge_rangee2, machine.target_etage_rangee2, machine.Barriere_etage;
		ensures guard_Monte_charge_rangee2_to_etage() &&  machine.get_Etages().equals(\old((machine.get_Etages().override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(machine.get_Monte_charge_etage(),new Integer(machine.get_Etages().apply(machine.get_Monte_charge_etage()) + machine.get_value_vehicules().apply(machine.get_Monte_charge_rangee2().apply(machine.get_N_slot_full_rangee2()))))))))) &&  machine.get_Test_full_rangee2() == \old(new Integer(machine.get_Test_full_rangee2() - machine.get_value_vehicules().apply(machine.get_Monte_charge_rangee2().apply(machine.get_N_slot_full_rangee2())))) &&  machine.get_N_slot_full_rangee2() == \old(new Integer(machine.get_N_slot_full_rangee2() - 1)) &&  machine.get_Monte_charge_rangee2().equals(\old((machine.get_Monte_charge_rangee2().override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(machine.get_N_slot_full_rangee2(),machine.none)))))) &&  machine.get_target_etage_rangee2().equals(\old((machine.get_target_etage_rangee2().override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(machine.get_N_slot_full_rangee2(),0)))))) &&  machine.get_Barriere_etage().equals(\old((machine.get_Barriere_etage().override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Temporary_target_2(),false)))))); 
	 also
		requires !guard_Monte_charge_rangee2_to_etage();
		assignable \nothing;
		ensures true; */
	public void run_Monte_charge_rangee2_to_etage(){
		if(guard_Monte_charge_rangee2_to_etage()) {
			BRelation<Integer,Integer> Etages_tmp = machine.get_Etages();
			Integer Test_full_rangee2_tmp = machine.get_Test_full_rangee2();
			Integer N_slot_full_rangee2_tmp = machine.get_N_slot_full_rangee2();
			BRelation<Integer,Integer> Monte_charge_rangee2_tmp = machine.get_Monte_charge_rangee2();
			BRelation<Integer,Integer> target_etage_rangee2_tmp = machine.get_target_etage_rangee2();
			BRelation<Integer,Boolean> Barriere_etage_tmp = machine.get_Barriere_etage();

			machine.set_Etages((Etages_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(machine.get_Monte_charge_etage(),new Integer(Etages_tmp.apply(machine.get_Monte_charge_etage()) + machine.get_value_vehicules().apply(Monte_charge_rangee2_tmp.apply(N_slot_full_rangee2_tmp))))))));
			machine.set_Test_full_rangee2(new Integer(Test_full_rangee2_tmp - machine.get_value_vehicules().apply(Monte_charge_rangee2_tmp.apply(N_slot_full_rangee2_tmp))));
			machine.set_N_slot_full_rangee2(new Integer(N_slot_full_rangee2_tmp - 1));
			machine.set_Monte_charge_rangee2((Monte_charge_rangee2_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(N_slot_full_rangee2_tmp,machine.none)))));
			machine.set_target_etage_rangee2((target_etage_rangee2_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(N_slot_full_rangee2_tmp,0)))));
			machine.set_Barriere_etage((Barriere_etage_tmp.override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Temporary_target_2(),false)))));

			System.out.println("Monte_charge_rangee2_to_etage executed ");
		}
	}

}
