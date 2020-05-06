public class DISPAWN_VEHICULE_VOIE_2{

  public boolean guard_DISPAWN_VEHICULE_VOIE_2(Machine_Parking_Ferry machine) {
    return !machine.get_Voie_de_sortie_2().apply(new Integer(0)).equals(machine.none);
  }

  public void run_DISPAWN_VEHICULE_VOIE_2(Machine_Parking_Ferry machine){
    if(guard_DISPAWN_VEHICULE_VOIE_2(machine)) {
      machine.set_Voie_de_sortie_2(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)));
      System.out.println("DISPAWN_VEHICULE_VOIE_2 executed ");
    }
  }
}
