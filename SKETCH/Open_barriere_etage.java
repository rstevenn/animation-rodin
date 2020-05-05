public class Open_barriere_etage{
  
  public boolean guard_Open_barriere_etage( Integer Value, Machine_Parking_Ferry machine) {
		return ((new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Value)) && (machine.get_Monte_charge_etage().equals(Value)) && (machine.get_Barriere_etage().apply(Value).equals(false)) && (NAT.instance.has(Value)) && (machine.get_Capteur_etages().apply(Value).equals(true)));
	}

	public void run_Open_barriere_etage( Integer Value, Machine_Parking_Ferry machine){
		if(guard_Open_barriere_etage(Value, machine)) {
			BRelation<Integer,Boolean> Barriere_etage_tmp = machine.get_Barriere_etage();
			machine.set_Barriere_etage((Barriere_etage_tmp.override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true)))));
			System.out.println("Open_barriere_etage executed Value: " + Value + " ");
		}
	}
}
