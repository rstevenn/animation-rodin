class Move_monte_charge{
  
  boolean guard_Move_monte_charge( Integer Value) {
		return ((new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Value)) && (!new Integer(new Integer(Monte_charge_etage * new Integer(10)) + Value).equals(new Integer(22))) && (((BRelation.cross(NAT.instance,BOOL.instance)).pow()).has((new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Select_untouch_stage.apply(new Integer(new Integer(Monte_charge_etage * new Integer(10)) + Value)),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Monte_charge_etage,false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true))))))));
	}

	void run_Move_monte_charge( Integer Value){
    if(guard_Move_monte_charge(Value)) {
			Integer Monte_charge_etage_tmp = Monte_charge_etage;
			Monte_charge_etage = Value;
			Barriere_monte_charge = new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false));
			Barriere_acces_monte_charge = false;
	    Barriere_etage = new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false));
			Capteur_arrive = Choose_capteur_state.apply(Value);
			Capteur_monte_charge_1 = Choose_capteur_state.apply(Value);
			Capteur_monte_charge_2 = true;
			Capteur_etages = (new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Select_untouch_stage.apply(new Integer(new Integer(Monte_charge_etage_tmp * 10) + Value)),false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Monte_charge_etage_tmp,false)).union(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true)))));
			System.out.println("Move_monte_charge executed Value: " + Value + " ");
		}
	}
}
