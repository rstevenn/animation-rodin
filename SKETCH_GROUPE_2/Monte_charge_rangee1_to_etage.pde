class Monte_charge_rangee1_to_etage{
  
  boolean guard_Monte_charge_rangee1_to_etage() {
		return ((!N_slot_full_rangee1.equals(new Integer(0))) && (!Test_full_rangee1.equals(new Integer(0))) && (NAT.instance.has(new Integer(Test_full_rangee1 - value_vehicules.apply(Monte_charge_rangee1.apply(N_slot_full_rangee1))))) && (target_etage_rangee1.apply(N_slot_full_rangee1).equals(Monte_charge_etage)) && (Barriere_monte_charge.apply(new Integer(2)).equals(true)) && (NAT.instance.has(Temporary_target_1)));
	}

	void run_Monte_charge_rangee1_to_etage(){
		if(guard_Monte_charge_rangee1_to_etage()) {
			BRelation<Integer,Integer> Etages_tmp = Etages;
			Integer Test_full_rangee1_tmp = Test_full_rangee1;
			Integer N_slot_full_rangee1_tmp = N_slot_full_rangee1;
			BRelation<Integer,Integer> Monte_charge_rangee1_tmp = Monte_charge_rangee1;
			BRelation<Integer,Integer> target_etage_rangee1_tmp = target_etage_rangee1;
			BRelation<Integer,Boolean> Barriere_etage_tmp = Barriere_etage;
			Etages = (Etages_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(Monte_charge_etage,new Integer(Etages_tmp.apply(Monte_charge_etage) + value_vehicules.apply(Monte_charge_rangee1_tmp.apply(N_slot_full_rangee1_tmp)))))));
			Test_full_rangee1 = new Integer(Test_full_rangee1_tmp - value_vehicules.apply(Monte_charge_rangee1_tmp.apply(N_slot_full_rangee1_tmp)));
			N_slot_full_rangee1 = new Integer(N_slot_full_rangee1_tmp - 1);
			Monte_charge_rangee1 = (Monte_charge_rangee1_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(N_slot_full_rangee1_tmp, none))));
			target_etage_rangee1 = (target_etage_rangee1_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(N_slot_full_rangee1_tmp,0))));
			Barriere_etage = (Barriere_etage_tmp.override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Temporary_target_1,false))));
			System.out.println("Monte_charge_rangee1_to_etage executed ");
		}
	}
}
