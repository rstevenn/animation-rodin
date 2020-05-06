class EVACUATE_VOIE_1{

  EVACUATE_VOIE_1(){print("EVACUATE_VOIE_1 created\n");}
  
  boolean guard_EVACUATE_VOIE_1() {
    return ((!Voie_arrive_1.apply(new Integer(0)).equals(none)) && (Voie_de_sortie_1.apply(new Integer(0)).equals(none) && !Borne_1.equals(true)) && (!Barriere_voie1.equals(true)));
  }

  void run_EVACUATE_VOIE_1(){
    if(guard_EVACUATE_VOIE_1()) {
      BRelation<Integer,Integer> Voie_arrive_1_tmp = Voie_arrive_1;
      Voie_de_sortie_1 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,Voie_arrive_1_tmp.apply(0)));
      Voie_arrive_1 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none));
      System.out.println("EVACUATE_VOIE_1 executed ");
    }
  }

}
