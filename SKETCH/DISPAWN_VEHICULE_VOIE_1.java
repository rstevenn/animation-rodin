public class DISPAWN_VEHICULE_VOIE_1{

  public boolean guard_DISPAWN_VEHICULE_VOIE_1(Machine_Parking_Ferry machine) {
    return !machine.get_Voie_de_sortie_1().apply(new Integer(0)).equals(machine.none);
  }

  public void run_DISPAWN_VEHICULE_VOIE_1(Machine_Parking_Ferry machine){
    if(guard_DISPAWN_VEHICULE_VOIE_1(machine)) {
      BRelation<Integer,Integer> Voie_de_sortie_1_tmp = machine.get_Voie_de_sortie_1();
      machine.set_Voie_de_sortie_1(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,machine.none)));
      System.out.println("DISPAWN_VEHICULE_VOIE_1 executed ");
    }
  }
}
