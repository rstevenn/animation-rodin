// The machine EVACUATE_VOIE_2 that handle the evacuate event
class EVACUATE_VOIE_2{
  
  EVACUATE_VOIE_2(){}
  
	boolean guard_EVACUATE_VOIE_2() {
    /// check if the condition for the evnet is ok
		return ((!Voie_arrive_2.apply(new Integer(0)).equals(none)) && (Voie_de_sortie_2.apply(new Integer(0)).equals(none)) && (!Barriere_voie2.equals(true)) && (!Borne_2.equals(true)));
	}

	void run_EVACUATE_VOIE_2(){
    // run and animate the event
    if (ACTION == false && SelectEvent == 4){
      if(guard_EVACUATE_VOIE_2()){
        BRelation<Integer,Integer> Voie_arrive_2_tmp = Voie_arrive_2;
        Voie_de_sortie_2 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,Voie_arrive_2_tmp.apply(0)));
        Voie_arrive_2 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none));
        System.out.println("EVACUATE_VOIE_2 executed ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 4){
      EvacuateVoieAnimation(2);
    }
  }
}
