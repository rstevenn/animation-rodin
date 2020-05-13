class Open_barriere_etage{
  
  boolean guard_Open_barriere_etage( Integer Value) {
		return ((new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Value)) && (Monte_charge_etage.equals(Value)) && (Barriere_etage.apply(Value).equals(false)) && (NAT.instance.has(Value)) && (Capteur_etages.apply(Value).equals(true)));
	}

	void run_Open_barriere_etage( Integer Value){
    if (ACTION == false && (SelectEvent == 15 || SelectEvent == 16 || SelectEvent == 17)){
      if(guard_Open_barriere_etage(Value)){
        BRelation<Integer,Boolean> Barriere_etage_tmp = Barriere_etage;
        Barriere_etage = (Barriere_etage_tmp.override(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(Value,true))));
        System.out.println("Open_barriere_etage executed Value: " + Value + " ");
        ACTION = true;
      }
    }
    else if (ACTION == true && SelectEvent == 15){
      SelectEvent = 0; 
      ACTION = false;
    }
    else if (ACTION == true && SelectEvent == 16){
      SelectEvent = 0; 
      ACTION = false;
    }
    else if (ACTION == true && SelectEvent == 17){
      SelectEvent = 0; 
      ACTION = false;
    }
  }
}
