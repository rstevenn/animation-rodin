public class VOIE_1_to_monte_charge_rangee2{
  
  public boolean guard_VOIE_1_to_monte_charge_rangee2() {
		return ((!Voie_arrive_1.apply(new Integer(0)).equals(none)) && (Borne_1.equals(true)) && (Monte_charge_etage.equals(new Integer(1))) && ((new Integer(Test_full_rangee2 + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))).compareTo(new Integer(3)) <= 0) && (Barriere_acces_monte_charge.equals(true)) && (Barriere_monte_charge.apply(new Integer(1)).equals(true)));
	}

	public void run_VOIE_1_to_monte_charge_rangee2(){
		if(guard_VOIE_1_to_monte_charge_rangee2()) {
			BRelation<Integer,Integer> Monte_charge_rangee2_tmp = Monte_charge_rangee2;
			BRelation<Integer,Integer> Voie_arrive_1_tmp = Voie_arrive_1;
			Integer Test_full_rangee2_tmp = Test_full_rangee2;
			Integer N_slot_full_rangee2_tmp = N_slot_full_rangee2;
			BRelation<Integer,Integer> target_etage_rangee2_tmp = target_etage_rangee2;
			BRelation<Integer,Integer> Virtual_etages_tmp = Virtual_etages;
			Monte_charge_rangee2 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,Voie_arrive_1_tmp.apply(0))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,Monte_charge_rangee2_tmp.apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,Monte_charge_rangee2_tmp.apply(2)))));
			Voie_arrive_1 = Voie_arrive_1_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
			Barriere_voie1 = false;
			Borne_1 = false;
			Test_full_rangee2 = new Integer(Test_full_rangee2_tmp + value_vehicules.apply(Voie_arrive_1_tmp.apply(0)));
			N_slot_full_rangee2 = new Integer(N_slot_full_rangee2_tmp + 1);
			target_etage_rangee2 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,Temporary_target_1)).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,target_etage_rangee2_tmp.apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,target_etage_rangee2_tmp.apply(2)))));
			Virtual_etages = Virtual_etages_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(Temporary_target_1,new Integer(Virtual_etages_tmp.apply(Temporary_target_1) + value_vehicules.apply(Voie_arrive_1_tmp.apply(0))))));
			System.out.println("VOIE_1_to_monte_charge_rangee2 executed ");
		}
	}

}
