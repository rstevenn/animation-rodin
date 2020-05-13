//The machine Move_monte_charge that handle the mouvement of the freight elevator
class Move_monte_charge{
  
  boolean guard_Move_monte_charge(Integer Value) {
		return ((new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Value))
           && Value != Monte_charge_etage);
	  }

	void run_Move_monte_charge(Integer Value){
  // check the condition of the event
    if (ACTION == false && (SelectEvent == 9 || SelectEvent == 10 || SelectEvent == 11)){
      if(guard_Move_monte_charge(Value)){
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
        ACTION = true;
      }
    }
    
    else if (ACTION == true && SelectEvent == 9){
      // run and animate the event
      if (MonteCharge.get_y() < 450) {
        MonteCharge.deplace_vertical_down();
        BFrontMonteCharge.deplace_vertical_down();
        BBackMonteCharge.deplace_vertical_down();
        CapteurBFront.deplace_vertical_down();
        CapteurBBack.deplace_vertical_down();
  
        for (int i = 4; i < 10; i++)
        {
          if (tableau[i] != null)
          {
            tableau[i].speed = 1;
            tableau[i].deplace_vertical_down();
            tableau[i].speed = 2;
          }
        }
      } else {
        SelectEvent = 0; 
        ACTION = false;
      }
    }
    
    else if (ACTION == true && SelectEvent == 10){
      if (MonteCharge.get_y() > 350) {
        MonteCharge.deplace_vertical_up();
        BFrontMonteCharge.deplace_vertical_up();
        BBackMonteCharge.deplace_vertical_up();
        CapteurBFront.deplace_vertical_up();
        CapteurBBack.deplace_vertical_up();
  
        for (int i = 4; i < 10; i++)
        {
          if (tableau[i] != null)
          {
            tableau[i].speed = 1;
            tableau[i].deplace_vertical_up();
            tableau[i].speed = 2;
          }
        }
      } else if (MonteCharge.get_y() < 350) {
        MonteCharge.deplace_vertical_down();
        BFrontMonteCharge.deplace_vertical_down();
        BBackMonteCharge.deplace_vertical_down();
        CapteurBFront.deplace_vertical_down();
        CapteurBBack.deplace_vertical_down();
  
        for (int i = 4; i < 10; i++)
        {
          if (tableau[i] != null)
          {
            tableau[i].speed = 1;
            tableau[i].deplace_vertical_down();
            tableau[i].speed = 2;
          }
        }
      } else {
        SelectEvent = 0; 
        ACTION = false;
      }
    }
    
    else if (ACTION == true && SelectEvent == 11){
      if (MonteCharge.get_y() > 250) {
        MonteCharge.deplace_vertical_up();
        BFrontMonteCharge.deplace_vertical_up();
        BBackMonteCharge.deplace_vertical_up();
        CapteurBFront.deplace_vertical_up();
        CapteurBBack.deplace_vertical_up();
  
        for (int i = 4; i < 10; i++)
        {
          if (tableau[i] != null)
          {
            tableau[i].speed = 1;
            tableau[i].deplace_vertical_up();
            tableau[i].speed = 2;
          }
        }
      } else {
        SelectEvent = 0; 
        ACTION = false;
      }
    }
  }
}
