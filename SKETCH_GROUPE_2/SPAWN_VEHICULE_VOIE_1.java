public class SPAWN_VEHICULE_VOIE_1{
  
  public boolean guard_SPAWN_VEHICULE_VOIE_1( Integer vehicule_type, Machine_Parking_Ferry machine) {
		return ((machine.get_Voie_arrive_1().apply(new Integer(0)).equals(machine.none)) && (new BSet<Integer>(machine.voiture,machine.camion1,machine.camion2,machine.camion3).has(vehicule_type)));
	}

	public void run_SPAWN_VEHICULE_VOIE_1( Integer vehicule_type, Machine_Parking_Ferry machine){
		if(guard_SPAWN_VEHICULE_VOIE_1(vehicule_type, machine)) {
			machine.set_Voie_arrive_1(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,vehicule_type)));
			System.out.println("SPAWN_VEHICULE_VOIE_1 executed vehicule_type: " + vehicule_type + " ");
		}
	}
}
