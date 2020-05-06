class Open_barriere_monte_charge{
  
  boolean guard_Open_barriere_monte_charge( Integer Value) {
		return ((new BSet<Integer>(new Integer(1),new Integer(2)).has(Value)) && (Barriere_monte_charge.apply(Value).equals(false)) && (NAT.instance.has(Value)) && (Value.equals(new Integer(1))) && (Monte_charge_etage.equals(new Integer(1))) || (Value.equals(new Integer(2))) && (Value.equals(new Integer(1))) && (Capteur_monte_charge_1.equals(true)) || (Value.equals(new Integer(2))) && (Capteur_monte_charge_2.equals(true)));
	}

	void run_Open_barriere_monte_charge( Integer Value){
		if(guard_Open_barriere_monte_charge(Value)) {
			BRelation<Integer,Boolean> Barriere_monte_charge_tmp = Barriere_monte_charge;
			Barriere_monte_charge = (Barriere_monte_charge_tmp.override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true))));
			System.out.println("Open_barriere_monte_charge executed Value: " + Value + " ");
		}
	}
}
