public class EVACUATE_VOIE_1{

  public boolean guard_EVACUATE_VOIE_1(Machine_Parking_Ferry machine) {
    return ((!machine.get_Voie_arrive_1().apply(new Integer(0)).equals(machine.none)) && (machine.get_Voie_de_sortie_1().apply(new Integer(0)).equals(machine.none) && !machine.get_Borne_1().equals(true)) && (!machine.get_Barriere_voie1().equals(true)));
  }

  public void run_EVACUATE_VOIE_1(Machine_Parking_Ferry machine){
    if(guard_EVACUATE_VOIE_1(machine)) {
      BRelation<Integer,Integer> Voie_de_sortie_1_tmp = machine.get_Voie_de_sortie_1();
      BRelation<Integer,Integer> Voie_arrive_1_tmp = machine.get_Voie_arrive_1();
      machine.set_Voie_de_sortie_1(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,Voie_arrive_1_tmp.apply(0))));
      machine.set_Voie_arrive_1(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)));
      System.out.println("EVACUATE_VOIE_1 executed ");
    }
  }

}
