public class Monte_charge_rangee2_to_etage{
  
  public /*@ pure */ boolean guard_Monte_charge_rangee2_to_etage(Machine_Parking_Ferry machine) {
		return ((!machine.get_N_slot_full_rangee2().equals(new Integer(0))) && (!machine.get_Test_full_rangee2().equals(new Integer(0))) && (NAT.instance.has(new Integer(machine.get_Test_full_rangee2() - machine.get_value_vehicules().apply(machine.get_Monte_charge_rangee2().apply(machine.get_N_slot_full_rangee2()))))) && (machine.get_target_etage_rangee2().apply(machine.get_N_slot_full_rangee2()).equals(machine.get_Monte_charge_etage())) && (machine.get_Barriere_monte_charge().apply(new Integer(2)).equals(true)) && (NAT.instance.has(machine.get_Temporary_target_2())));
	}

	public void run_Monte_charge_rangee2_to_etage(Machine_Parking_Ferry machine){
		if(guard_Monte_charge_rangee2_to_etage(machine)) {
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
