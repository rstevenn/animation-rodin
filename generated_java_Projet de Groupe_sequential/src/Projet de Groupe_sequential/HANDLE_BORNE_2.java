package Projet de Groupe_sequential; 

import eventb_prelude.*;
import Util.Utilities;

public class HANDLE_BORNE_2{
	/*@ spec_public */ private Parking sur un bateau R4 machine; // reference to the machine 

	/*@ public normal_behavior
		requires true;
		assignable \everything;
		ensures this.machine == m; */
	public HANDLE_BORNE_2(Parking sur un bateau R4 m) {
		this.machine = m;
	}

	/*@ public normal_behavior
		requires true;
 		assignable \nothing;
		ensures \result <==> (machine.get_Borne_2().equals(false) && !machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none) && (new Integer(machine.get_Etages().apply(new Integer(1)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(3)) <= 0 && !machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.voiture) || (new Integer(machine.get_Etages().apply(new Integer(2)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(3)) <= 0 || (new Integer(machine.get_Etages().apply(new Integer(3)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(3)) <= 0 && machine.get_Borne_1().equals(false) && machine.get_choose_target().apply(new Integer(machine.get_scoring_full_etage1().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(1)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_full_etage2().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(2)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_type_vehicule().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).equals(new Integer(1)) || machine.get_choose_target().apply(new Integer(machine.get_scoring_full_etage1().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(1)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_full_etage2().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(2)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_type_vehicule().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).equals(new Integer(2)) || machine.get_choose_target().apply(new Integer(machine.get_scoring_full_etage1().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(1)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_full_etage2().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(2)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_type_vehicule().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).equals(new Integer(3)) && (new Integer(machine.get_Virtual_etages().apply(new Integer(3)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(6)) <= 0); */
	public /*@ pure */ boolean guard_HANDLE_BORNE_2() {
		return (machine.get_Borne_2().equals(false) && !machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none) && (new Integer(machine.get_Etages().apply(new Integer(1)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(3)) <= 0 && !machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.voiture) || (new Integer(machine.get_Etages().apply(new Integer(2)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(3)) <= 0 || (new Integer(machine.get_Etages().apply(new Integer(3)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(3)) <= 0 && machine.get_Borne_1().equals(false) && machine.get_choose_target().apply(new Integer(machine.get_scoring_full_etage1().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(1)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_full_etage2().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(2)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_type_vehicule().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).equals(new Integer(1)) || machine.get_choose_target().apply(new Integer(machine.get_scoring_full_etage1().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(1)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_full_etage2().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(2)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_type_vehicule().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).equals(new Integer(2)) || machine.get_choose_target().apply(new Integer(machine.get_scoring_full_etage1().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(1)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_full_etage2().apply(new Integer(machine.get_Virtual_etages().apply(new Integer(2)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))) + machine.get_scoring_type_vehicule().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).equals(new Integer(3)) && (new Integer(machine.get_Virtual_etages().apply(new Integer(3)) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(new Integer(0))))).compareTo(new Integer(6)) <= 0);
	}

	/*@ public normal_behavior
		requires guard_HANDLE_BORNE_2();
		assignable machine.Borne_2, machine.Temporary_target_2, machine.Barriere_voie2;
		ensures guard_HANDLE_BORNE_2() &&  machine.get_Borne_2() == \old(true) &&  machine.get_Temporary_target_2() == \old(machine.get_choose_target().apply(new Integer(machine.get_scoring_full_etage1().apply(new Integer(machine.get_Virtual_etages().apply(1) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(0)))) + machine.get_scoring_full_etage2().apply(new Integer(machine.get_Virtual_etages().apply(2) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(0)))) + machine.get_scoring_type_vehicule().apply(machine.get_Voie_arrive_2().apply(0))))) &&  machine.get_Barriere_voie2() == \old(true); 
	 also
		requires !guard_HANDLE_BORNE_2();
		assignable \nothing;
		ensures true; */
	public void run_HANDLE_BORNE_2(){
		if(guard_HANDLE_BORNE_2()) {
			Boolean Borne_2_tmp = machine.get_Borne_2();
			Integer Temporary_target_2_tmp = machine.get_Temporary_target_2();
			Boolean Barriere_voie2_tmp = machine.get_Barriere_voie2();

			machine.set_Borne_2(true);
			machine.set_Temporary_target_2(machine.get_choose_target().apply(new Integer(machine.get_scoring_full_etage1().apply(new Integer(machine.get_Virtual_etages().apply(1) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(0)))) + machine.get_scoring_full_etage2().apply(new Integer(machine.get_Virtual_etages().apply(2) + machine.get_value_vehicules().apply(machine.get_Voie_arrive_2().apply(0)))) + machine.get_scoring_type_vehicule().apply(machine.get_Voie_arrive_2().apply(0)))));
			machine.set_Barriere_voie2(true);

			System.out.println("HANDLE_BORNE_2 executed ");
		}
	}

}
