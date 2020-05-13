class SPAWN_VEHICULE_VOIE_2{
  
  SPAWN_VEHICULE_VOIE_2(){print("SPAWN_VEHICULE_VOIE_2 created\n");}
  
  boolean guard_SPAWN_VEHICULE_VOIE_2(Integer vehicule_type) {
		return ((Voie_arrive_2.apply(new Integer(0)).equals(none)) && (new BSet<Integer>(voiture,camion1,camion2,camion3).has(vehicule_type)));
	}

	void run_SPAWN_VEHICULE_VOIE_2( Integer vehicule_type){
    if (ACTION == false && (SelectEvent == 22 || SelectEvent == 23 || SelectEvent == 24 || SelectEvent == 25)){
      if(guard_SPAWN_VEHICULE_VOIE_2(vehicule_type)){
        Voie_arrive_2 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,vehicule_type));
        System.out.println("SPAWN_VEHICULE_VOIE_2 executed vehicule_type: " + vehicule_type + " ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 22){
      SpawnVehiculeAnimation(1, 200, 475, 1);
    }
    else if (ACTION == true && SelectEvent == 23){
      SpawnVehiculeAnimation(1, 200, 475, 2);
    }
    else if (ACTION == true && SelectEvent == 24){
      SpawnVehiculeAnimation(1, 175, 475, 3);
    }
    else if (ACTION == true && SelectEvent == 25){
      SpawnVehiculeAnimation(1, 150, 475, 4);
    }
  }
}
