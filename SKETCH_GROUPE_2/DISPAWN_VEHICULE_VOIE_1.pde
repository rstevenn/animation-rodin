// The machine DISPAWN_VOIE_1 that handle the dispawn event
class DISPAWN_VEHICULE_VOIE_1{
  
  DISPAWN_VEHICULE_VOIE_1(){}

  boolean guard_DISPAWN_VEHICULE_VOIE_1() {
    // check if the condition for activate this event is ok
    return !Voie_de_sortie_1.apply(new Integer(0)).equals(none);
  }

  void run_DISPAWN_VEHICULE_VOIE_1(){
    // run the event an animate it
    if (ACTION == false && SelectEvent == 1){
      if(guard_DISPAWN_VEHICULE_VOIE_1()){
        Voie_de_sortie_1 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none));
        System.out.println("DISPAWN_VEHICULE_VOIE_1 executed ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 1){
      DispawnVoieAnimation(1);
    }
  }
}
