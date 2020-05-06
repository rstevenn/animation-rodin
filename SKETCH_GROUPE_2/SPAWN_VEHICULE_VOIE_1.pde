class SPAWN_VEHICULE_VOIE_1{
  
  SPAWN_VEHICULE_VOIE_1(){print("SPAWN_VEHICULE_VOIE_1 created\n");}
  
  boolean guard_SPAWN_VEHICULE_VOIE_1(Integer vehicule_type) {
		return ((Voie_arrive_1.apply(new Integer(0)).equals(none)) && (new BSet<Integer>(voiture,camion1,camion2,camion3).has(vehicule_type)));
	}

	void run_SPAWN_VEHICULE_VOIE_1(Integer vehicule_type){
		if(guard_SPAWN_VEHICULE_VOIE_1(vehicule_type)) {
			Voie_arrive_1 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,vehicule_type));
			System.out.println("SPAWN_VEHICULE_VOIE_1 executed vehicule_type: " + vehicule_type + " ");
		}
	}
}
