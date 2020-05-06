class SPAWN_VEHICULE_VOIE_2{
  
  SPAWN_VEHICULE_VOIE_2(){print("SPAWN_VEHICULE_VOIE_2 created\n");}
  
  boolean guard_SPAWN_VEHICULE_VOIE_2(Integer vehicule_type) {
		return ((Voie_arrive_2.apply(new Integer(0)).equals(none)) && (new BSet<Integer>(voiture,camion1,camion2,camion3).has(vehicule_type)));
	}

	void run_SPAWN_VEHICULE_VOIE_2( Integer vehicule_type){
		if(guard_SPAWN_VEHICULE_VOIE_2(vehicule_type)) {
			Voie_arrive_2 = new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,vehicule_type));
			System.out.println("SPAWN_VEHICULE_VOIE_2 executed vehicule_type: " + vehicule_type + " ");
		}
	}
}
