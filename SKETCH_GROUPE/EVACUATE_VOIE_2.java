public class EVACUATE_VOIE_2{
  
	public boolean guard_EVACUATE_VOIE_2(Machine_Parking_Ferry machine) {
		return ((!machine.get_Voie_arrive_2().apply(new Integer(0)).equals(machine.none)) && (machine.get_Voie_de_sortie_2().apply(new Integer(0)).equals(machine.none)) && (!machine.get_Barriere_voie2().equals(true)) && (!machine.get_Borne_2().equals(true)));
	}

	public void run_EVACUATE_VOIE_2(Machine_Parking_Ferry machine){
		if(guard_EVACUATE_VOIE_2(machine)) {
			BRelation<Integer,Integer> Voie_arrive_2_tmp = machine.get_Voie_arrive_2();
			machine.set_Voie_de_sortie_2(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,Voie_arrive_2_tmp.apply(0))));
			machine.set_Voie_arrive_2(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)));
			System.out.println("EVACUATE_VOIE_2 executed ");
		}
	}

}
