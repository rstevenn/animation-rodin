// The machine VOIE_2_to_monte_charge_rangee2 that handle the push to foreight elevator event
public class VOIE_2_to_monte_charge_rangee2{
  
  public boolean guard_VOIE_2_to_monte_charge_rangee2() {
    // check the event condition
		return ((!Voie_arrive_2.apply(new Integer(0)).equals(none)) && (Borne_2.equals(true)) && (Monte_charge_etage.equals(new Integer(1))) && ((new Integer(Test_full_rangee2 + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))).compareTo(new Integer(3)) <= 0) && (Barriere_monte_charge.apply(new Integer(1)).equals(true)) && (Barriere_acces_monte_charge.equals(true)));
	}

	public void run_VOIE_2_to_monte_charge_rangee2(){
  // run and animat the event
    if (ACTION == false && SelectEvent == 29){
      if(guard_VOIE_2_to_monte_charge_rangee2()){
        BRelation<Integer,Integer> Monte_charge_rangee2_tmp = Monte_charge_rangee2;
        BRelation<Integer,Integer> Voie_arrive_2_tmp = Voie_arrive_2;
        Integer Test_full_rangee2_tmp = Test_full_rangee2;
        Integer N_slot_full_rangee2_tmp = N_slot_full_rangee2;
        BRelation<Integer,Integer> target_etage_rangee2_tmp = target_etage_rangee2;
        BRelation<Integer,Integer> Virtual_etages_tmp = Virtual_etages;
        Monte_charge_rangee2 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,Voie_arrive_2_tmp.apply(0))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,Monte_charge_rangee2_tmp.apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,Monte_charge_rangee2_tmp.apply(2)))));
        Voie_arrive_2 = Voie_arrive_2_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
        Borne_2 = false;
        Barriere_voie2 = false;
        Test_full_rangee2 = new Integer(Test_full_rangee2_tmp + value_vehicules.apply(Voie_arrive_2_tmp.apply(0)));
        N_slot_full_rangee2 = new Integer(N_slot_full_rangee2_tmp + 1);
        target_etage_rangee2 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,Temporary_target_2)).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(2,target_etage_rangee2_tmp.apply(1))).union(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(3,target_etage_rangee2_tmp.apply(2)))));
        Virtual_etages = Virtual_etages_tmp.override(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(Temporary_target_2,new Integer(Virtual_etages_tmp.apply(Temporary_target_2)) + value_vehicules.apply(Voie_arrive_2_tmp.apply(0)))));
        System.out.println("VOIE_2_to_monte_charge_rangee2 executed ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 29){
      PutVehiculesOnMC(1, 7, 8, 9);
    }
  }
}
