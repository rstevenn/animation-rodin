public class SPAWN_VEHICULE_VOIE_2{
  
  public boolean guard_SPAWN_VEHICULE_VOIE_2( Integer vehicule_type, Machine_Parking_Ferry machine) {
		return ((machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none)) && (new BSet<Integer>(machine.voiture,machine.camion1,machine.camion2,machine.camion3).has(vehicule_type)));
	}

	public void run_SPAWN_VEHICULE_VOIE_2( Integer vehicule_type, Machine_Parking_Ferry machine){
		if(guard_SPAWN_VEHICULE_VOIE_2(vehicule_type, machine)) {
			BRelation<Integer,Integer> Voie_arrive_2_tmp = machine.get_Voie_arrive_2();
			machine.set_Voie_arrive_2(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,vehicule_type)));
			System.out.println("SPAWN_VEHICULE_VOIE_2 executed vehicule_type: " + vehicule_type + " ");
		}
	}

}