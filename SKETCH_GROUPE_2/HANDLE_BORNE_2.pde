class HANDLE_BORNE_2{
  
	boolean guard_HANDLE_BORNE_2() {
		return (Borne_2.equals(false) && 
            !Voie_arrive_2.apply(new Integer(0)).equals(none) &&
            ((new Integer(Etages.apply(new Integer(1)) + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))).compareTo(new Integer(6)) <= 0 &&
            !Voie_arrive_2.apply(new Integer(0)).equals(voiture) || 
            (new Integer(Etages.apply(new Integer(2)) + 
            value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))).compareTo(new Integer(6)) <= 0 || 
            (new Integer(Etages.apply(new Integer(3)) + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))).compareTo(new Integer(6)) <= 0 )&&
            Borne_1.equals(false) &&
            (choose_target.apply(new Integer(scoring_full_etage1.apply(new Integer(Virtual_etages.apply(new Integer(1)) + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))) + scoring_full_etage2.apply(new Integer(Virtual_etages.apply(new Integer(2)) + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))) + scoring_type_vehicule.apply(Voie_arrive_2.apply(new Integer(0))))).equals(new Integer(1)) || 
            choose_target.apply(new Integer(scoring_full_etage1.apply(new Integer(Virtual_etages.apply(new Integer(1)) + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))) + scoring_full_etage2.apply(new Integer(Virtual_etages.apply(new Integer(2)) + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))) + scoring_type_vehicule.apply(Voie_arrive_2.apply(new Integer(0))))).equals(new Integer(2)) ||
            choose_target.apply(new Integer(scoring_full_etage1.apply(new Integer(Virtual_etages.apply(new Integer(1)) + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))) + scoring_full_etage2.apply(new Integer(Virtual_etages.apply(new Integer(2)) + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))) + scoring_type_vehicule.apply(Voie_arrive_2.apply(new Integer(0))))).equals(new Integer(3))) &&
            (new Integer(Virtual_etages.apply(new Integer(3)) + value_vehicules.apply(Voie_arrive_2.apply(new Integer(0))))).compareTo(new Integer(6)) <= 0);
	}

	void run_HANDLE_BORNE_2(){
    if (ACTION == false && SelectEvent == 6){
      if(guard_HANDLE_BORNE_2()){
        Integer Temporary_target_2_tmp = Temporary_target_2;
        Borne_2 = true;
        Temporary_target_2 = choose_target.apply(new Integer(scoring_full_etage1.apply(new Integer(Virtual_etages.apply(1) + value_vehicules.apply(Voie_arrive_2.apply(0)))) + scoring_full_etage2.apply(new Integer(Virtual_etages.apply(2) + value_vehicules.apply(Voie_arrive_2.apply(0)))) + scoring_type_vehicule.apply(Voie_arrive_2.apply(0))));
        Barriere_voie2 = true;
        System.out.println("HANDLE_BORNE_2 executed ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 6){
      SelectEvent = 0; 
      ACTION = false;
    }
  }
}
