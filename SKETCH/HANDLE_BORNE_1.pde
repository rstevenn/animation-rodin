// The machine HANDLE_BORNE_1 that handle the behavior of the terminale event
class HANDLE_BORNE_1{
  
  HANDLE_BORNE_1(){}
  
	boolean guard_HANDLE_BORNE_1() {
    // check if the condition of the event is ok
		return (Borne_1.equals(false) && (Voie_arrive_1.apply(new Integer(0)) != none) &&
            ((new Integer(Etages.apply(new Integer(1)) + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))) <= 6 &&
            !Voie_arrive_1.apply(new Integer(0)).equals(voiture) || 
            (new Integer(Etages.apply(new Integer(2)) + 
            value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))) <= 6 || 
            (new Integer(Etages.apply(new Integer(3)) + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))) <= 6 )&&
            Borne_2.equals(false) &&
            (choose_target.apply(new Integer(scoring_full_etage1.apply(new Integer(Virtual_etages.apply(new Integer(1)) + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))) + scoring_full_etage2.apply(new Integer(Virtual_etages.apply(new Integer(2)) + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))) + scoring_type_vehicule.apply(Voie_arrive_1.apply(new Integer(0))))).equals(new Integer(1)) || 
            choose_target.apply(new Integer(scoring_full_etage1.apply(new Integer(Virtual_etages.apply(new Integer(1)) + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))) + scoring_full_etage2.apply(new Integer(Virtual_etages.apply(new Integer(2)) + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))) + scoring_type_vehicule.apply(Voie_arrive_1.apply(new Integer(0))))).equals(new Integer(2)) ||
            choose_target.apply(new Integer(scoring_full_etage1.apply(new Integer(Virtual_etages.apply(new Integer(1)) + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))) + scoring_full_etage2.apply(new Integer(Virtual_etages.apply(new Integer(2)) + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))) + scoring_type_vehicule.apply(Voie_arrive_1.apply(new Integer(0))))).equals(new Integer(3)) )&&
            (new Integer(Virtual_etages.apply(new Integer(3)) + value_vehicules.apply(Voie_arrive_1.apply(new Integer(0))))).compareTo(new Integer(6)) <= 0);
  }

	void run_HANDLE_BORNE_1(){
    // run and animate the event
    if (ACTION == false && SelectEvent == 5){
      if(guard_HANDLE_BORNE_1()){
        Integer Temporary_target_1_tmp = Temporary_target_1;
        Borne_1 = true;
        Temporary_target_1 = choose_target.apply(new Integer(scoring_full_etage1.apply(new Integer(Virtual_etages.apply(1) + value_vehicules.apply(Voie_arrive_1.apply(0)))) + scoring_full_etage2.apply(new Integer(Virtual_etages.apply(2) + value_vehicules.apply(Voie_arrive_1.apply(0)))) + scoring_type_vehicule.apply(Voie_arrive_1.apply(0))));
        Barriere_voie1 = true;
        System.out.println("HANDLE_BORNE_1 executed ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 5){
      SelectEvent = 0; 
      ACTION = false;
    }
  }
}
