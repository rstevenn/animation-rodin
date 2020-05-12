class Monte_charge_rangee2_to_etage{
  
  boolean guard_Monte_charge_rangee2_to_etage() {
		return ((!N_slot_full_rangee2.equals(new Integer(0))) && (!Test_full_rangee2.equals(new Integer(0))) && (NAT.instance.has(new Integer(Test_full_rangee2 - value_vehicules.apply(Monte_charge_rangee2.apply(N_slot_full_rangee2))))) && (target_etage_rangee2.apply(N_slot_full_rangee2).equals(Monte_charge_etage))  && (Barriere_monte_charge.apply(Monte_charge_etage).equals(true)) &&  Barriere_etage.apply(Monte_charge_etage).equals(true) && (NAT.instance.has(Temporary_target_2)));
	}
  //same bug here the MCR1

	void run_Monte_charge_rangee2_to_etage(){
		if(guard_Monte_charge_rangee2_to_etage()) {
			BRelation<Integer,Integer> Etages_tmp = Etages;
			Integer Test_full_rangee2_tmp = Test_full_rangee2;
			Integer N_slot_full_rangee2_tmp = N_slot_full_rangee2;
			BRelation<Integer,Integer> Monte_charge_rangee2_tmp = Monte_charge_rangee2;
			BRelation<Integer,Integer> target_etage_rangee2_tmp = target_etage_rangee2;
			BRelation<Integer,Boolean> Barriere_etage_tmp = Barriere_etage;
			Etages = (Etages_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(Monte_charge_etage,new Integer(Etages_tmp.apply(Monte_charge_etage) + value_vehicules.apply(Monte_charge_rangee2_tmp.apply(N_slot_full_rangee2_tmp)))))));
			Test_full_rangee2 = new Integer(Test_full_rangee2_tmp - value_vehicules.apply(Monte_charge_rangee2_tmp.apply(N_slot_full_rangee2_tmp)));
			N_slot_full_rangee2 = new Integer(N_slot_full_rangee2_tmp - 1);
			Monte_charge_rangee2 = (Monte_charge_rangee2_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(N_slot_full_rangee2_tmp, none))));
			target_etage_rangee2 = (target_etage_rangee2_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(N_slot_full_rangee2_tmp,0))));
			System.out.println("Monte_charge_rangee2_to_etage executed ");
		}
	}

}
