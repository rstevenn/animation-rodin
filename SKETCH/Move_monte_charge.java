public class Move_monte_charge{
  
  public boolean guard_Move_monte_charge( Integer Value, Machine_Parking_Ferry machine) {
		return ((new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Value)) && (!new Integer(new Integer(machine.get_Monte_charge_etage() * new Integer(10)) + Value).equals(new Integer(22))) && (((BRelation.cross(NAT.instance,BOOL.instance)).pow()).has((new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Select_untouch_stage().apply(new Integer(new Integer(machine.get_Monte_charge_etage() * new Integer(10)) + Value)),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Monte_charge_etage(),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true))))))));
	}

	public void run_Move_monte_charge( Integer Value, Machine_Parking_Ferry machine){
    if(guard_Move_monte_charge(Value,machine)) {
			Integer Monte_charge_etage_tmp = machine.get_Monte_charge_etage();
			BRelation<Integer,Boolean> Barriere_monte_charge_tmp = machine.get_Barriere_monte_charge();
			Boolean Barriere_acces_monte_charge_tmp = machine.get_Barriere_acces_monte_charge();
			BRelation<Integer,Boolean> Barriere_etage_tmp = machine.get_Barriere_etage();
			Boolean Capteur_arrive_tmp = machine.get_Capteur_arrive();
			Boolean Capteur_monte_charge_1_tmp = machine.get_Capteur_monte_charge_1();
			Boolean Capteur_monte_charge_2_tmp = machine.get_Capteur_monte_charge_2();
			BRelation<Integer,Boolean> Capteur_etages_tmp = machine.get_Capteur_etages();
			machine.set_Monte_charge_etage(Value);
			machine.set_Barriere_monte_charge(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false)));
			machine.set_Barriere_acces_monte_charge(false);
			machine.set_Barriere_etage(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false)));
			machine.set_Capteur_arrive(machine.get_Choose_capteur_state().apply(Value));
			machine.set_Capteur_monte_charge_1(machine.get_Choose_capteur_state().apply(Value));
			machine.set_Capteur_monte_charge_2(true);
			machine.set_Capteur_etages((new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(machine.get_Select_untouch_stage().apply(new Integer(new Integer(Monte_charge_etage_tmp * 10) + Value)),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Monte_charge_etage_tmp,false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true))))));
			System.out.println("Move_monte_charge executed Value: " + Value + " ");
		}
	}
}
