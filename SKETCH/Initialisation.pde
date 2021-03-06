void Init_Machine() {
  // Initialisation of all variables of the machine
  Voie_arrive_1 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(0, none)));
  Voie_arrive_2 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(0, none)));
  Voie_de_sortie_1 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(0, none)));
  Voie_de_sortie_2 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(0, none)));
  Borne_1 = false;
  Borne_2 = false;
  Monte_charge_etage = 1;
  Etages = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(1, 0), new Pair<Integer, Integer>(2, 0), new Pair<Integer, Integer>(3, 0)));
  value_vehicules = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(voiture, 1), new Pair<Integer, Integer>(camion1, 1), new Pair<Integer, Integer>(camion2, 2), new Pair<Integer, Integer>(camion3, 3), new Pair<Integer, Integer>(none, 3)));
  Test_full_rangee1 = 0;
  Test_full_rangee2 = 0;
  N_slot_full_rangee1 = 0;
  N_slot_full_rangee2 = 0;
  Monte_charge_rangee1 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(1, none), new Pair<Integer, Integer>(2, none), new Pair<Integer, Integer>(3, none)));
  Monte_charge_rangee2 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(1, none), new Pair<Integer, Integer>(2, none), new Pair<Integer, Integer>(3, none)));
  scoring_full_etage1 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(1, 1), new Pair<Integer, Integer>(2, 1), new Pair<Integer, Integer>(3, 1), new Pair<Integer, Integer>(4, 1), new Pair<Integer, Integer>(5, 1), new Pair<Integer, Integer>(6, 1), new Pair<Integer, Integer>(7, 0), new Pair<Integer, Integer>(8, 0), new Pair<Integer, Integer>(9, 0)));
  scoring_full_etage2 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(1, 10), new Pair<Integer, Integer>(2, 10), new Pair<Integer, Integer>(3, 10), new Pair<Integer, Integer>(4, 10), new Pair<Integer, Integer>(5, 10), new Pair<Integer, Integer>(6, 10), new Pair<Integer, Integer>(7, 0), new Pair<Integer, Integer>(8, 0), new Pair<Integer, Integer>(9, 0)));
  scoring_type_vehicule = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(voiture, 1000), new Pair<Integer, Integer>(camion1, 1), new Pair<Integer, Integer>(camion2, 1), new Pair<Integer, Integer>(camion3, 1)));
  choose_target = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(1010, 2), new Pair<Integer, Integer>(1000, 3), new Pair<Integer, Integer>(1011, 2), new Pair<Integer, Integer>(1001, 3), new Pair<Integer, Integer>(2, 1), new Pair<Integer, Integer>(11, 2), new Pair<Integer, Integer>(10, 2), new Pair<Integer, Integer>(12, 1), new Pair<Integer, Integer>(1, 3)));
  target_etage_rangee1 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(1, 0), new Pair<Integer, Integer>(2, 0), new Pair<Integer, Integer>(3, 0)));
  target_etage_rangee2 = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(1, 0), new Pair<Integer, Integer>(2, 0), new Pair<Integer, Integer>(3, 0)));
  Temporary_target_1 = 0;
  Temporary_target_2 = 0;
  Virtual_etages = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(1, 0), new Pair<Integer, Integer>(2, 0), new Pair<Integer, Integer>(3, 0)));
  Barriere_voie1 = false;
  Barriere_voie2 = false;
  Barriere_etage = (new BRelation<Integer, Boolean>(new Pair<Integer, Boolean>(1, false), new Pair<Integer, Boolean>(2, false), new Pair<Integer, Boolean>(3, false)));
  Barriere_monte_charge = (new BRelation<Integer, Boolean>(new Pair<Integer, Boolean>(1, false), new Pair<Integer, Boolean>(2, false)));
  Barriere_acces_monte_charge = false;
  Capteur_arrive = true;
  Capteur_monte_charge_1 = true;
  Capteur_monte_charge_2 = true;
  Capteur_etages = (new BRelation<Integer, Boolean>(new Pair<Integer, Boolean>(1, true), new Pair<Integer, Boolean>(2, false), new Pair<Integer, Boolean>(3, false)));
  Choose_capteur_state = (new BRelation<Integer, Boolean>(new Pair<Integer, Boolean>(1, true), new Pair<Integer, Boolean>(2, false), new Pair<Integer, Boolean>(3, false)));
  Select_untouch_stage = (new BRelation<Integer, Integer>(new Pair<Integer, Integer>(21, 3), new Pair<Integer, Integer>(12, 3), new Pair<Integer, Integer>(23, 1), new Pair<Integer, Integer>(32, 1), new Pair<Integer, Integer>(13, 2), new Pair<Integer, Integer>(31, 2)));
}

void Display_button() {
  //Fonction that display all button
  // and check if the button is activate
  ButtonDispawnV1.display(Dispawn_Vehicule_Voie_1.guard_DISPAWN_VEHICULE_VOIE_1());
  SelectEvent += ButtonDispawnV1.ButtonClick(Dispawn_Vehicule_Voie_1.guard_DISPAWN_VEHICULE_VOIE_1());
  ButtonDispawnV2.display(Dispawn_Vehicule_Voie_2.guard_DISPAWN_VEHICULE_VOIE_2());
  SelectEvent += ButtonDispawnV2.ButtonClick(Dispawn_Vehicule_Voie_2.guard_DISPAWN_VEHICULE_VOIE_2());
  ButtonEvacuateV1.display(Evacuate_Voie_1.guard_EVACUATE_VOIE_1());
  SelectEvent += ButtonEvacuateV1.ButtonClick(Evacuate_Voie_1.guard_EVACUATE_VOIE_1());
  ButtonEvacuateV2.display(Evacuate_Voie_2.guard_EVACUATE_VOIE_2());
  SelectEvent += ButtonEvacuateV2.ButtonClick(Evacuate_Voie_2.guard_EVACUATE_VOIE_2());
  ButtonHandleV1.display(Handle_Borne_1.guard_HANDLE_BORNE_1());
  SelectEvent += ButtonHandleV1.ButtonClick(Handle_Borne_1.guard_HANDLE_BORNE_1());
  ButtonHandleV2.display(Handle_Borne_2.guard_HANDLE_BORNE_2());
  SelectEvent += ButtonHandleV2.ButtonClick(Handle_Borne_2.guard_HANDLE_BORNE_2());
  ButtonMCR1toF.display(Monte_Charge_Rangee1_To_Etage.guard_Monte_charge_rangee1_to_etage());
  SelectEvent += ButtonMCR1toF.ButtonClick(Monte_Charge_Rangee1_To_Etage.guard_Monte_charge_rangee1_to_etage());
  ButtonMCR2toF.display(Monte_Charge_Rangee2_To_Etage.guard_Monte_charge_rangee2_to_etage());
  SelectEvent += ButtonMCR2toF.ButtonClick(Monte_Charge_Rangee2_To_Etage.guard_Monte_charge_rangee2_to_etage());
  ButtonMoveMCtoF1.display(Move_Monte_Charge.guard_Move_monte_charge(1));
  SelectEvent += ButtonMoveMCtoF1.ButtonClick(Move_Monte_Charge.guard_Move_monte_charge(1));
  ButtonMoveMCtoF2.display(Move_Monte_Charge.guard_Move_monte_charge(2));
  SelectEvent += ButtonMoveMCtoF2.ButtonClick(Move_Monte_Charge.guard_Move_monte_charge(2));
  ButtonMoveMCtoF3.display(Move_Monte_Charge.guard_Move_monte_charge(3));
  SelectEvent += ButtonMoveMCtoF3.ButtonClick(Move_Monte_Charge.guard_Move_monte_charge(3));
  ButtonBaccesMC.display(Open_Barriere_Acces_Monte_Charge.guard_Open_barriere_acces_monte_charge());
  SelectEvent += ButtonBaccesMC.ButtonClick(Open_Barriere_Acces_Monte_Charge.guard_Open_barriere_acces_monte_charge());
  ButtonBMCfront.display(Open_Barriere_Monte_Charge.guard_Open_barriere_monte_charge(1));
  SelectEvent += ButtonBMCfront.ButtonClick(Open_Barriere_Monte_Charge.guard_Open_barriere_monte_charge(1));
  ButtonBMCback.display(Open_Barriere_Monte_Charge.guard_Open_barriere_monte_charge(2));
  SelectEvent += ButtonBMCback.ButtonClick(Open_Barriere_Monte_Charge.guard_Open_barriere_monte_charge(2));
  ButtonBF1.display(Open_Barriere_Etage.guard_Open_barriere_etage(1));
  SelectEvent += ButtonBF1.ButtonClick(Open_Barriere_Etage.guard_Open_barriere_etage(1));
  ButtonBF2.display(Open_Barriere_Etage.guard_Open_barriere_etage(2));
  SelectEvent += ButtonBF2.ButtonClick(Open_Barriere_Etage.guard_Open_barriere_etage(2));
  ButtonBF3.display(Open_Barriere_Etage.guard_Open_barriere_etage(3));
  SelectEvent += ButtonBF3.ButtonClick(Open_Barriere_Etage.guard_Open_barriere_etage(3));
  ButtonSpawnVV1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(voiture));
  SelectEvent += ButtonSpawnVV1.ButtonClick(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(voiture));
  ButtonSpawnC1V1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion1));
  SelectEvent += ButtonSpawnC1V1.ButtonClick(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion1));
  ButtonSpawnC2V1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion2));
  SelectEvent += ButtonSpawnC2V1.ButtonClick(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion2));
  ButtonSpawnC3V1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion3));
  SelectEvent += ButtonSpawnC3V1.ButtonClick(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion3));
  ButtonSpawnVV2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(voiture));
  SelectEvent += ButtonSpawnVV2.ButtonClick(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(voiture));
  ButtonSpawnC1V2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion1));
  SelectEvent += ButtonSpawnC1V2.ButtonClick(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion1));
  ButtonSpawnC2V2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion2));
  SelectEvent += ButtonSpawnC2V2.ButtonClick(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion2));
  ButtonSpawnC3V2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion3));
  SelectEvent += ButtonSpawnC3V2.ButtonClick(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion3));
  ButtonV1toMCR1.display(Voie_1_To_Monte_Charge_Rangee1.guard_VOIE_1_to_monte_charge_rangee1());
  SelectEvent += ButtonV1toMCR1.ButtonClick(Voie_1_To_Monte_Charge_Rangee1.guard_VOIE_1_to_monte_charge_rangee1());
  ButtonV1toMCR2.display(Voie_1_To_Monte_Charge_Rangee2.guard_VOIE_1_to_monte_charge_rangee2());
  SelectEvent += ButtonV1toMCR2.ButtonClick(Voie_1_To_Monte_Charge_Rangee2.guard_VOIE_1_to_monte_charge_rangee2());
  ButtonV2toMCR1.display(Voie_2_To_Monte_Charge_Rangee1.guard_VOIE_2_to_monte_charge_rangee1());
  SelectEvent += ButtonV2toMCR1.ButtonClick(Voie_2_To_Monte_Charge_Rangee1.guard_VOIE_2_to_monte_charge_rangee1());
  ButtonV2toMCR2.display(Voie_2_To_Monte_Charge_Rangee2.guard_VOIE_2_to_monte_charge_rangee2());
  SelectEvent += ButtonV2toMCR2.ButtonClick(Voie_2_To_Monte_Charge_Rangee2.guard_VOIE_2_to_monte_charge_rangee2());
}

void Do_Event() {
  // Fonction that execute an event for each button if activate in the previous function
  switch(SelectEvent) {
    case 1: 
      Dispawn_Vehicule_Voie_1.run_DISPAWN_VEHICULE_VOIE_1();
      break;
    case 2: 
      Dispawn_Vehicule_Voie_2.run_DISPAWN_VEHICULE_VOIE_2();
      break;
    case 3: 
      Evacuate_Voie_1.run_EVACUATE_VOIE_1();
      break;
    case 4: 
      Evacuate_Voie_2.run_EVACUATE_VOIE_2();
      break;
    case 5: 
      Handle_Borne_1.run_HANDLE_BORNE_1();
      break;
    case 6: 
      Handle_Borne_2.run_HANDLE_BORNE_2();
      break;
    case 7: 
      Monte_Charge_Rangee1_To_Etage.run_Monte_charge_rangee1_to_etage();
      break;
    case 8: 
      Monte_Charge_Rangee2_To_Etage.run_Monte_charge_rangee2_to_etage();
      break;
    case 9: 
      Move_Monte_Charge.run_Move_monte_charge(1);
      break;
    case 10: 
      Move_Monte_Charge.run_Move_monte_charge(2);
      break;
    case 11: 
      Move_Monte_Charge.run_Move_monte_charge(3);
      break;
    case 12: 
      Open_Barriere_Acces_Monte_Charge.run_Open_barriere_acces_monte_charge();
      break;
    case 13: 
      Open_Barriere_Monte_Charge.run_Open_barriere_monte_charge(1);
      break;
    case 14: 
      Open_Barriere_Monte_Charge.run_Open_barriere_monte_charge(2);
      break;
    case 15: 
      Open_Barriere_Etage.run_Open_barriere_etage(1);
      break;
    case 16: 
      Open_Barriere_Etage.run_Open_barriere_etage(2);
      break;
    case 17: 
      Open_Barriere_Etage.run_Open_barriere_etage(3);
      break;
    case 18: 
      Spawn_Vehicule_Voie_1.run_SPAWN_VEHICULE_VOIE_1(voiture);
      break;
    case 19: 
      Spawn_Vehicule_Voie_1.run_SPAWN_VEHICULE_VOIE_1(camion1);
      break;
    case 20: 
      Spawn_Vehicule_Voie_1.run_SPAWN_VEHICULE_VOIE_1(camion2);
      break;
    case 21: 
      Spawn_Vehicule_Voie_1.run_SPAWN_VEHICULE_VOIE_1(camion3);
      break;
    case 22: 
      Spawn_Vehicule_Voie_2.run_SPAWN_VEHICULE_VOIE_2(voiture);
      break;
    case 23: 
      Spawn_Vehicule_Voie_2.run_SPAWN_VEHICULE_VOIE_2(camion1);
      break;
    case 24: 
      Spawn_Vehicule_Voie_2.run_SPAWN_VEHICULE_VOIE_2(camion2);
      break;
    case 25: 
      Spawn_Vehicule_Voie_2.run_SPAWN_VEHICULE_VOIE_2(camion3);
      break;
    case 26: 
      Voie_1_To_Monte_Charge_Rangee1.run_VOIE_1_to_monte_charge_rangee1();
      break;
    case 27: 
      Voie_1_To_Monte_Charge_Rangee2.run_VOIE_1_to_monte_charge_rangee2();
      break;
    case 28: 
      Voie_2_To_Monte_Charge_Rangee1.run_VOIE_2_to_monte_charge_rangee1();
      break;
    case 29: 
      Voie_2_To_Monte_Charge_Rangee2.run_VOIE_2_to_monte_charge_rangee2();
      break;
  }
}

void Display_Barriere() {
  // Fonction that display gate depending of the evenet selected and the machine state 
  if ((ACTION == true && (SelectEvent == 26 || SelectEvent ==27 )) || Borne_1 == true) {
    fill(50); 
    noStroke(); 
    rectMode(CENTER); 
    rect(250, 425, 6, 50);
  } else {
    fill(150); 
    noStroke(); 
    rectMode(CENTER); 
    rect(250, 425, 6, 50);
  }

  if ((ACTION == true && (SelectEvent == 28 || SelectEvent == 29)) || Borne_2 == true) {
    fill(50); 
    noStroke(); 
    rectMode(CENTER); 
    rect(250, 475, 6, 50);
  } else {
    fill(150); 
    noStroke(); 
    rectMode(CENTER); 
    rect(250, 475, 6, 50);
  }

  if (Barriere_acces_monte_charge == true) {
    fill(50); 
    noStroke(); 
    rectMode(CENTER); 
    rect(425, 450, 6, 100);
  } else {
    fill(150); 
    noStroke(); 
    rectMode(CENTER); 
    rect(425, 450, 6, 100);
  }

  if (Barriere_monte_charge.apply(1) == true) {
    BFrontMonteCharge.changeColor(50);
    BFrontMonteCharge.displayNoStroke();
  } else {
    BFrontMonteCharge.changeColor(150);
    BFrontMonteCharge.displayNoStroke();
  }

  if (Barriere_monte_charge.apply(2) == true) {
    BBackMonteCharge.changeColor(50);
    BBackMonteCharge.displayNoStroke();
  } else {
    BBackMonteCharge.changeColor(150);
    BBackMonteCharge.displayNoStroke();
  }

  if (((SelectEvent == 7 || SelectEvent == 8) && Monte_charge_etage == 1&& ACTION == true) || Barriere_etage.apply(1) == true) {
    BEtage1.changeColor(50);
    BEtage1.displayNoStroke();
  } else {
    BEtage1.changeColor(150);
    BEtage1.displayNoStroke();
  }

  if (((SelectEvent == 7 || SelectEvent == 8) && Monte_charge_etage == 2&& ACTION == true) ||Barriere_etage.apply(2) == true) {
    BEtage2.changeColor(50);
    BEtage2.displayNoStroke();
  } else {
    BEtage2.changeColor(150);
    BEtage2.displayNoStroke();
  }

  if (((SelectEvent == 7 || SelectEvent == 8) && Monte_charge_etage == 3 && ACTION == true) ||Barriere_etage.apply(3) == true) {
    BEtage3.changeColor(50);
    BEtage3.displayNoStroke();
  } else {
    BEtage3.changeColor(150);
    BEtage3.displayNoStroke();
  }
}

void SpawnVehiculeAnimation(int voie, int locationX, int locationY, int type) {
  /*
  Fonction that handle separetly the spawn vehicule animation
  int voie: the number of the voie
  int locationX: the location of the vehicule 
  int locationY: the location of the vehicule
  int type: the type of vehicule
  */
  if (tableau[voie] == null) {
    Moving_Vehicules vehicule = new Moving_Vehicules(-50, locationY, 2, type);
    tableau[voie] = vehicule;
  } else if (tableau[voie] != null && tableau[voie].get_x() < locationX) {
    tableau[voie].deplace_horizontal_right();
  } else {
    SelectEvent = 0; 
    ACTION = false;
  }
}

void EvacuateVoieAnimation(int voie)
//Fonction that handle separetly the evacuate vehicle animation
// int voie: the number of the voie
{
  if (tableau[voie + 1] == null)
  {
    tableau[voie+1] = tableau[voie-1];
    tableau[voie-1] = null;
  } else if ( (tableau[voie+1].angle <= 90 && voie == 2) || (tableau[voie+1].angle >= -90 && voie == 1))
  {
    if (voie == 2)
    {
      tableau[voie+1].positive_rotation();
      tableau[voie+1].deplace_vertical_down();
    } else {
      tableau[voie+1].negative_rotation();
      tableau[voie+1].deplace_vertical_up();
    }
    if (tableau[voie+1].get_x() < 225)
    {
      tableau[voie+1].deplace_horizontal_right();
    }
  } else
  {
    SelectEvent = 0; 
    ACTION = false;
  }
}

void DispawnVoieAnimation(int voie)
{
  //Fonction that handle separetly the Dispawn vehicle animation
  // int voie: the number of the voie
  if (tableau[voie+1].get_y() > 100 && voie == 1)
  {
    tableau[voie+1].deplace_vertical_up();
  } else if (tableau[voie+1].get_y() < 800 && voie == 2)
  {
    tableau[voie+1].deplace_vertical_down();
  } else
  {
    SelectEvent = 0; 
    ACTION = false;
    tableau[voie+1] = null;
  }
}

void PutVehiculesOnMC(int Slot0, int Slot1, int Slot2, int Slot3) {
  //Fonction that handle separetly management of vehicles in the freight elevator
  /*
    int Slot0: the slot of the vehicule 
    int Slot1, int Slot2, int Slot3: the slots of the rangee
  */
  boolean animated = false;
  if (tableau[Slot0] != null) {
    if (tableau[Slot0].typeVehicule() == 1 || tableau[Slot0].typeVehicule() == 2) {
      if (tableau[Slot1] == null) {
        tableau[Slot1] = tableau[Slot0];
        tableau[Slot0] = null;
        animated = true;
      } else if (tableau[Slot2] == null) {
        tableau[Slot2] = tableau[Slot0];
        tableau[Slot0] = null;
        animated = true;
      } else if (tableau[Slot3] == null) {
        tableau[Slot3] = tableau[Slot0];
        tableau[Slot0] = null;
        animated = true;
      }
    } else if (tableau[Slot0].typeVehicule() == 3) {
      if (tableau[Slot1] == null) {
        tableau[Slot1] = tableau[Slot0];
        tableau[Slot0] = null;
        animated = true;
      } else if (tableau[Slot2] == null) {
        tableau[Slot2] = tableau[Slot0];
        tableau[Slot0] = null;
        animated = true;
        animated = true;
      }
    } else if (tableau[Slot0].typeVehicule() == 4) {
      if (tableau[Slot1] == null) {
        tableau[Slot1] = tableau[Slot0];
        tableau[Slot0] = null;
        animated = true;
      }
    }
  }

  if (tableau[Slot1] != null) {
    if (tableau[Slot1].typeVehicule() == 1 && tableau[Slot1].get_x() < 605) {
      tableau[Slot1].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot1].typeVehicule() == 2 && tableau[Slot1].get_x() < 605) {
      tableau[Slot1].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot1].typeVehicule() == 3 && tableau[Slot1].get_x() < 600) {
      tableau[Slot1].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot1].typeVehicule() == 4 && tableau[Slot1].get_x() < 600) {
      tableau[Slot1].deplace_horizontal_right();
      animated = true;
    }
  }

  if (tableau[Slot2] != null) {
    if (tableau[Slot2].typeVehicule() == 1 && ((tableau[Slot2].get_x() < 555 && (tableau[Slot1].typeVehicule() == 1 || tableau[Slot1].typeVehicule() == 2)) || (tableau[Slot2].get_x() < 505 && tableau[Slot1].typeVehicule() == 3))) {
      tableau[Slot2].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot2].typeVehicule() == 2 && ((tableau[Slot2].get_x() < 555 && (tableau[Slot1].typeVehicule() == 1 || tableau[Slot1].typeVehicule() == 2)) || (tableau[Slot2].get_x() < 505 && tableau[Slot1].typeVehicule() == 3))) {
      tableau[Slot2].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot2].typeVehicule() == 3 && tableau[Slot2].get_x() < 550) {
      tableau[Slot2].deplace_horizontal_right();
      animated = true;
    }
  }

  if (tableau[Slot3] != null) {
    if (tableau[Slot3].typeVehicule() == 1 && tableau[Slot3].get_x() < 505) {
      tableau[Slot3].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot3].typeVehicule() == 2 && tableau[Slot3].get_x() < 505) {
      tableau[Slot3].deplace_horizontal_right();
      animated = true;
    }
  }

  if (animated == false) {    
    SelectEvent = 0; 
    ACTION = false;
  }
}

boolean PutInEtage = false;
void PutVehiculesOnEtage(int Slot1, int Slot2, int Slot3) { 
  // take a vehicule from the MONTE-CHARGE to the ferry
    /*
    int Slot0: the slot of the vehicule 
    int Slot1, int Slot2, int Slot3: the slots of the rangee
  */
  boolean animated = false;
  if (tableau[Slot1] != null && tableau[Slot1].get_x() < 800 && PutInEtage == false) {
    tableau[Slot1].deplace_horizontal_right();
    animated = true;
  } else if (tableau[Slot1] != null && PutInEtage == false) {
    tableau[Slot1] = tableau[Slot2];
    tableau[Slot2] = tableau[Slot3];
    tableau[Slot3] = null;
    animated = true;
    PutInEtage = true;
  }

  if (tableau[Slot1] != null) {
    if (tableau[Slot1].typeVehicule() == 1 && tableau[Slot1].get_x() < 605) {
      tableau[Slot1].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot1].typeVehicule() == 2 && tableau[Slot1].get_x() < 605) {
      tableau[Slot1].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot1].typeVehicule() == 3 && tableau[Slot1].get_x() < 600) {
      tableau[Slot1].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot1].typeVehicule() == 4 && tableau[Slot1].get_x() < 600) {
      tableau[Slot1].deplace_horizontal_right();
      animated = true;
    }
  }

  if (tableau[Slot2] != null) {
    if (tableau[Slot2].typeVehicule() == 1 && ((tableau[Slot2].get_x() < 555 && (tableau[Slot1].typeVehicule() == 1 || tableau[Slot1].typeVehicule() == 2)) || (tableau[Slot2].get_x() < 505 && tableau[Slot1].typeVehicule() == 3))) {
      tableau[Slot2].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot2].typeVehicule() == 2 && ((tableau[Slot2].get_x() < 555 && (tableau[Slot1].typeVehicule() == 1 || tableau[Slot1].typeVehicule() == 2)) || (tableau[Slot2].get_x() < 505 && tableau[Slot1].typeVehicule() == 3))) {
      tableau[Slot2].deplace_horizontal_right();
      animated = true;
    } else if (tableau[Slot2].typeVehicule() == 3 && tableau[Slot2].get_x() < 550) {
      tableau[Slot2].deplace_horizontal_right();
      animated = true;
    }
  }

  if (animated == false) {    
    SelectEvent = 0; 
    ACTION = false;
    animated = false;
    PutInEtage = false;
  }
}
