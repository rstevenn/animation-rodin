// The machine SPAWN_VEHICULE_VOIE_1 that handle the spawn event
class SPAWN_VEHICULE_VOIE_1{
  
  SPAWN_VEHICULE_VOIE_1(){}
  
  boolean guard_SPAWN_VEHICULE_VOIE_1(Integer vehicule_type) {
    // check the conditon of the event
		return ((Voie_arrive_1.apply(new Integer(0)).equals(none)) && (new BSet<Integer>(voiture,camion1,camion2,camion3).has(vehicule_type)));
	}

	void run_SPAWN_VEHICULE_VOIE_1(Integer vehicule_type){
  // run teh event and animate it
    if (ACTION == false && (SelectEvent == 18 || SelectEvent == 19 || SelectEvent == 20 || SelectEvent == 21)){
      if(guard_SPAWN_VEHICULE_VOIE_1(vehicule_type)){
        Voie_arrive_1 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,vehicule_type));
        System.out.println("SPAWN_VEHICULE_VOIE_1 executed vehicule_type: " + vehicule_type + " ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 18){
      SpawnVehiculeAnimation(0, 200, 425, 1);
    }
    else if (ACTION == true && SelectEvent == 19){
      SpawnVehiculeAnimation(0, 200, 425, 2);
    }
    else if (ACTION == true && SelectEvent == 20){
      SpawnVehiculeAnimation(0, 175, 425, 3);
    }
    else if (ACTION == true && SelectEvent == 21){
      SpawnVehiculeAnimation(0, 150, 425, 4);
    }
  }
}
