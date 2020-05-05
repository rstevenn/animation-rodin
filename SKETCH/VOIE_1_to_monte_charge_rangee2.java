public class VOIE_1_to_monte_charge_rangee2{
  
  public boolean guard_VOIE_1_to_monte_charge_rangee2(Machine_Parking_Ferry machine) {
		return ((!machine.get_Voie_arrive_1().apply(new Integer(0)).equals(machine.none)) && (machine.get_Borne_1().equals(true)) && (machine.get_Monte_charge_etage().equals(new Integer(1))) && ((new Integer(machine.get_Test_full_rangee2() + machine.get_value_vehicules().apply(machine.get_Voie_arrive_1().apply(new Integer(0))))).compareTo(new Integer(3)) <= 0) && (machine.get_Barriere_acces_monte_charge().equals(true)) && (machine.get_Barriere_monte_charge().apply(new Integer(1)).equals(true)));
	}

	public void run_VOIE_1_to_monte_charge_rangee2(Machine_Parking_Ferry machine){
		if(guard_VOIE_1_to_monte_charge_rangee2(machine)) {
			BRelation<Integer,Integer> Monte_charge_rangee2_tmp = machine.get_Monte_charge_rangee2();
			BRelation<Integer,Integer> Voie_arrive_1_tmp = machine.get_Voie_arrive_1();
			Boolean Barriere_voie1_tmp = machine.get_Barriere_voie1();
			Boolean Borne_1_tmp = machine.get_Borne_1();
			Integer Test_full_rangee2_tmp = machine.get_Test_full_rangee2();
			Integer N_slot_full_rangee2_tmp = machine.get_N_slot_full_rangee2();
			BRelation<Integer,Integer> target_etage_rangee2_tmp = machine.get_target_etage_rangee2();
			BRelation<Integer,Integer> Virtual_etages_tmp = machine.get_Virtual_etages();
			machine.set_Monte_charge_rangee2((new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,Voie_arrive_1_tmp.apply(0))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,Monte_charge_rangee2_tmp.apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,Monte_charge_rangee2_tmp.apply(2)))))));
			machine.set_Voie_arrive_1((Voie_arrive_1_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)))));
			machine.set_Barriere_voie1(false);
			machine.set_Borne_1(false);
			machine.set_Test_full_rangee2(new Integer(Test_full_rangee2_tmp + machine.get_value_vehicules().apply(Voie_arrive_1_tmp.apply(0))));
			machine.set_N_slot_full_rangee2(new Integer(N_slot_full_rangee2_tmp + 1));
			machine.set_target_etage_rangee2((new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,machine.get_Temporary_target_1())).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,target_etage_rangee2_tmp.apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,target_etage_rangee2_tmp.apply(2)))))));
			machine.set_Virtual_etages((Virtual_etages_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(machine.get_Temporary_target_1(),new Integer(Virtual_etages_tmp.apply(machine.get_Temporary_target_1()) + machine.get_value_vehicules().apply(Voie_arrive_1_tmp.apply(0))))))));
			System.out.println("VOIE_1_to_monte_charge_rangee2 executed ");
		}
	}

}
