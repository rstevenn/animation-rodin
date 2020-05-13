// The machine DISPAWN_VEHICULE_VOIE_2 that handle the dispawn event
class DISPAWN_VEHICULE_VOIE_2{

  DISPAWN_VEHICULE_VOIE_2(){print("DISPAWN_VEHICULE_VOIE_2 created\n");}
  
  boolean guard_DISPAWN_VEHICULE_VOIE_2() {
    // check if the condition for the event is ok
    return !Voie_de_sortie_2.apply(new Integer(0)).equals(none);
  }

  void run_DISPAWN_VEHICULE_VOIE_2(){
    // animate and run the event
    if (ACTION == false && SelectEvent == 2){
      if(guard_DISPAWN_VEHICULE_VOIE_2()){
        Voie_de_sortie_2 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none));
        System.out.println("DISPAWN_VEHICULE_VOIE_2 executed ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 2){
      DispawnVoieAnimation(2);
    }
  }
}
