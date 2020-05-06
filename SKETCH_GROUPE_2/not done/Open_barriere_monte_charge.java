public class Open_barriere_monte_charge{
  
  public boolean guard_Open_barriere_monte_charge( Integer Value, Machine_Parking_Ferry machine) {
		return ((new BSet<Integer>(new Integer(1),new Integer(2)).has(Value)) && (machine.get_Barriere_monte_charge().apply(Value).equals(false)) && (NAT.instance.has(Value)) && (Value.equals(new Integer(1))) && (machine.get_Monte_charge_etage().equals(new Integer(1))) || (Value.equals(new Integer(2))) && (Value.equals(new Integer(1))) && (machine.get_Capteur_monte_charge_1().equals(true)) || (Value.equals(new Integer(2))) && (machine.get_Capteur_monte_charge_2().equals(true)));
	}

	public void run_Open_barriere_monte_charge( Integer Value, Machine_Parking_Ferry machine){
		if(guard_Open_barriere_monte_charge(Value, machine)) {
			BRelation<Integer,Boolean> Barriere_monte_charge_tmp = machine.get_Barriere_monte_charge();
			machine.set_Barriere_monte_charge((Barriere_monte_charge_tmp.override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true)))));
			System.out.println("Open_barriere_monte_charge executed Value: " + Value + " ");
		}
	}
}
