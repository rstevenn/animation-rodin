void Init_Machine(){
  Voie_arrive_1 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
  Voie_arrive_2 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
  Voie_de_sortie_1 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
  Voie_de_sortie_2 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
  Borne_1 = false;
  Borne_2 = false;
  Monte_charge_etage = 1;
  Etages = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,0),new Pair<Integer,Integer>(2,0),new Pair<Integer,Integer>(3,0)));
  value_vehicules = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(voiture,1),new Pair<Integer,Integer>(camion1,1),new Pair<Integer,Integer>(camion2,2),new Pair<Integer,Integer>(camion3,3), new Pair<Integer,Integer>(none,3)));
  Test_full_rangee1 = 0;
  Test_full_rangee2 = 0;
  N_slot_full_rangee1 = 0;
  N_slot_full_rangee2 = 0;
  Monte_charge_rangee1 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,none),new Pair<Integer,Integer>(2,none),new Pair<Integer,Integer>(3,none)));
  Monte_charge_rangee2 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,none),new Pair<Integer,Integer>(2,none),new Pair<Integer,Integer>(3,none)));
  scoring_full_etage1 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,1),new Pair<Integer,Integer>(2,1),new Pair<Integer,Integer>(3,1),new Pair<Integer,Integer>(4,1),new Pair<Integer,Integer>(5,1),new Pair<Integer,Integer>(6,1),new Pair<Integer,Integer>(7,0),new Pair<Integer,Integer>(8,0),new Pair<Integer,Integer>(9,0)));
  scoring_full_etage2 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,10),new Pair<Integer,Integer>(2,10),new Pair<Integer,Integer>(3,10),new Pair<Integer,Integer>(4,10),new Pair<Integer,Integer>(5,10),new Pair<Integer,Integer>(6,10),new Pair<Integer,Integer>(7,0),new Pair<Integer,Integer>(8,0),new Pair<Integer,Integer>(9,0)));
  scoring_type_vehicule = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(voiture,1000),new Pair<Integer,Integer>(camion1,1),new Pair<Integer,Integer>(camion2,1),new Pair<Integer,Integer>(camion3,1)));
  choose_target = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1010,2),new Pair<Integer,Integer>(1000,3),new Pair<Integer,Integer>(1011,2),new Pair<Integer,Integer>(1001,3),new Pair<Integer,Integer>(2,1),new Pair<Integer,Integer>(11,2),new Pair<Integer,Integer>(10,2),new Pair<Integer,Integer>(12,1),new Pair<Integer,Integer>(1,3)));
  target_etage_rangee1 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,0),new Pair<Integer,Integer>(2,0),new Pair<Integer,Integer>(3,0)));
  target_etage_rangee2 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,0),new Pair<Integer,Integer>(2,0),new Pair<Integer,Integer>(3,0)));
  Temporary_target_1 = 0;
  Temporary_target_2 = 0;
  Virtual_etages = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,0),new Pair<Integer,Integer>(2,0),new Pair<Integer,Integer>(3,0)));
  Barriere_voie1 = false;
  Barriere_voie2 = false;
  Barriere_etage = (new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false)));
  Barriere_monte_charge = (new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false)));
  Barriere_acces_monte_charge = false;
  Capteur_arrive = true;
  Capteur_monte_charge_1 = true;
  Capteur_monte_charge_2 = true;
  Capteur_etages = (new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,true),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false)));
  Choose_capteur_state = (new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,true),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false)));
  Select_untouch_stage = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(21,3),new Pair<Integer,Integer>(12,3),new Pair<Integer,Integer>(23,1),new Pair<Integer,Integer>(32,1),new Pair<Integer,Integer>(13,2),new Pair<Integer,Integer>(31,2)));
}

void Display_button(){
  ButtonDispawnV1.display(Dispawn_Vehicule_Voie_1.guard_DISPAWN_VEHICULE_VOIE_1());
  SelectEvent += ButtonDispawnV1.ButtonClick();
  ButtonDispawnV2.display(Dispawn_Vehicule_Voie_2.guard_DISPAWN_VEHICULE_VOIE_2());
  SelectEvent += ButtonDispawnV2.ButtonClick();
  ButtonEvacuateV1.display(Evacuate_Voie_1.guard_EVACUATE_VOIE_1());
  SelectEvent += ButtonEvacuateV1.ButtonClick();
  ButtonEvacuateV2.display(Evacuate_Voie_2.guard_EVACUATE_VOIE_2());
  SelectEvent += ButtonEvacuateV2.ButtonClick();
  ButtonHandleV1.display(Handle_Borne_1.guard_HANDLE_BORNE_1());
  SelectEvent += ButtonHandleV1.ButtonClick();
  ButtonHandleV2.display(Handle_Borne_2.guard_HANDLE_BORNE_2());
  SelectEvent += ButtonHandleV2.ButtonClick();
  ButtonMCR1toF.display(Monte_Charge_Rangee1_To_Etage.guard_Monte_charge_rangee1_to_etage());
  SelectEvent += ButtonMCR1toF.ButtonClick();
  ButtonMCR2toF.display(Monte_Charge_Rangee2_To_Etage.guard_Monte_charge_rangee2_to_etage());
  SelectEvent += ButtonMCR2toF.ButtonClick();
  ButtonMoveMCtoF1.display(Move_Monte_Charge.guard_Move_monte_charge(1));
  SelectEvent += ButtonMoveMCtoF1.ButtonClick();
  ButtonMoveMCtoF2.display(Move_Monte_Charge.guard_Move_monte_charge(2));
  SelectEvent += ButtonMoveMCtoF2.ButtonClick();
  ButtonMoveMCtoF3.display(Move_Monte_Charge.guard_Move_monte_charge(3));
  SelectEvent += ButtonMoveMCtoF3.ButtonClick();
  ButtonBaccesMC.display(Open_Barriere_Acces_Monte_Charge.guard_Open_barriere_acces_monte_charge());
  SelectEvent += ButtonBaccesMC.ButtonClick();
  ButtonBMCfront.display(Open_Barriere_Monte_Charge.guard_Open_barriere_monte_charge(1));
  SelectEvent += ButtonBMCfront.ButtonClick();
  ButtonBMCback.display(Open_Barriere_Monte_Charge.guard_Open_barriere_monte_charge(2));
  SelectEvent += ButtonBMCback.ButtonClick();
  ButtonBF1.display(Open_Barriere_Etage.guard_Open_barriere_etage(1));
  SelectEvent += ButtonBF1.ButtonClick();
  ButtonBF2.display(Open_Barriere_Etage.guard_Open_barriere_etage(2));
  SelectEvent += ButtonBF2.ButtonClick();
  ButtonBF3.display(Open_Barriere_Etage.guard_Open_barriere_etage(3));
  SelectEvent += ButtonBF3.ButtonClick();
  ButtonSpawnVV1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(voiture));
  SelectEvent += ButtonSpawnVV1.ButtonClick();
  ButtonSpawnC1V1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion1));
  SelectEvent += ButtonSpawnC1V1.ButtonClick();
  ButtonSpawnC2V1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion2));
  SelectEvent += ButtonSpawnC2V1.ButtonClick();
  ButtonSpawnC3V1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion3));
  SelectEvent += ButtonSpawnC3V1.ButtonClick();
  ButtonSpawnVV2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(voiture));
  SelectEvent += ButtonSpawnVV2.ButtonClick();
  ButtonSpawnC1V2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion1));
  SelectEvent += ButtonSpawnC1V2.ButtonClick();
  ButtonSpawnC2V2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion2));
  SelectEvent += ButtonSpawnC2V2.ButtonClick();
  ButtonSpawnC3V2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion3));
  SelectEvent += ButtonSpawnC3V2.ButtonClick();
  ButtonV1toMCR1.display(Voie_1_To_Monte_Charge_Rangee1.guard_VOIE_1_to_monte_charge_rangee1());
  SelectEvent += ButtonV1toMCR1.ButtonClick();
  ButtonV1toMCR2.display(Voie_1_To_Monte_Charge_Rangee2.guard_VOIE_1_to_monte_charge_rangee2());
  SelectEvent += ButtonV1toMCR2.ButtonClick();
  ButtonV2toMCR1.display(Voie_2_To_Monte_Charge_Rangee1.guard_VOIE_2_to_monte_charge_rangee1());
  SelectEvent += ButtonV2toMCR1.ButtonClick();
  ButtonV2toMCR2.display(Voie_2_To_Monte_Charge_Rangee2.guard_VOIE_2_to_monte_charge_rangee2());
  SelectEvent += ButtonV2toMCR2.ButtonClick();
}

void Do_Event(){
  if(ACTION == false && SelectEvent != 0){
    ACTION = true;
    switch(SelectEvent){
      case 1: Dispawn_Vehicule_Voie_1.run_DISPAWN_VEHICULE_VOIE_1();break;
      case 2: Dispawn_Vehicule_Voie_2.run_DISPAWN_VEHICULE_VOIE_2();break;
      case 3: Evacuate_Voie_1.run_EVACUATE_VOIE_1();break;
      case 4: Evacuate_Voie_2.run_EVACUATE_VOIE_2();break;
      case 5: Handle_Borne_1.run_HANDLE_BORNE_1();break;
      case 6: Handle_Borne_2.run_HANDLE_BORNE_2();break;
      case 7: Monte_Charge_Rangee1_To_Etage.run_Monte_charge_rangee1_to_etage();break;
      case 8: Monte_Charge_Rangee2_To_Etage.run_Monte_charge_rangee2_to_etage();break;
      case 9: Move_Monte_Charge.run_Move_monte_charge(1);break;
      case 10: Move_Monte_Charge.run_Move_monte_charge(2);break;
      case 11: Move_Monte_Charge.run_Move_monte_charge(3);break;
      case 12: Open_Barriere_Acces_Monte_Charge.run_Open_barriere_acces_monte_charge();break;
      case 13: Open_Barriere_Monte_Charge.run_Open_barriere_monte_charge(1);break;
      case 14: Open_Barriere_Monte_Charge.run_Open_barriere_monte_charge(2);break;
      case 15: Open_Barriere_Etage.run_Open_barriere_etage(1);break;
      case 16: Open_Barriere_Etage.run_Open_barriere_etage(2);break;
      case 17: Open_Barriere_Etage.run_Open_barriere_etage(3);break;
      case 18: Spawn_Vehicule_Voie_1.run_SPAWN_VEHICULE_VOIE_1(voiture);break;
      case 19: Spawn_Vehicule_Voie_1.run_SPAWN_VEHICULE_VOIE_1(camion1);break;
      case 20: Spawn_Vehicule_Voie_1.run_SPAWN_VEHICULE_VOIE_1(camion2);break;
      case 21: Spawn_Vehicule_Voie_1.run_SPAWN_VEHICULE_VOIE_1(camion3);break;
      case 22: Spawn_Vehicule_Voie_2.run_SPAWN_VEHICULE_VOIE_2(voiture);break;
      case 23: Spawn_Vehicule_Voie_2.run_SPAWN_VEHICULE_VOIE_2(camion1);break;
      case 24: Spawn_Vehicule_Voie_2.run_SPAWN_VEHICULE_VOIE_2(camion2);break;
      case 25: Spawn_Vehicule_Voie_2.run_SPAWN_VEHICULE_VOIE_2(camion3);break;
      case 26: Voie_1_To_Monte_Charge_Rangee1.run_VOIE_1_to_monte_charge_rangee1();break;
      case 27: Voie_1_To_Monte_Charge_Rangee2.run_VOIE_1_to_monte_charge_rangee2();break;
      case 28: Voie_2_To_Monte_Charge_Rangee1.run_VOIE_2_to_monte_charge_rangee1();break;
      case 29: Voie_2_To_Monte_Charge_Rangee2.run_VOIE_2_to_monte_charge_rangee2();break;
    }
  }
}
  
void Anime_Event(){
  switch(SelectEvent){
    case 1: Dispawn_Vehicule_Voie_1.run_DISPAWN_VEHICULE_VOIE_1();break;
    case 2: Dispawn_Vehicule_Voie_2.run_DISPAWN_VEHICULE_VOIE_2();break;
    case 3: Evacuate_Voie_1.run_EVACUATE_VOIE_1();break;
    case 4: Evacuate_Voie_2.run_EVACUATE_VOIE_2();break;
    case 5: Handle_Borne_1.run_HANDLE_BORNE_1();break;
    case 6: Handle_Borne_2.run_HANDLE_BORNE_2();break;
    case 7: Monte_Charge_Rangee1_To_Etage.run_Monte_charge_rangee1_to_etage();break;
    case 8: Monte_Charge_Rangee2_To_Etage.run_Monte_charge_rangee2_to_etage();break;
    case 9: Move_Monte_Charge.run_Move_monte_charge(1);break;
    case 10: Move_Monte_Charge.run_Move_monte_charge(2);break;
    case 11: Move_Monte_Charge.run_Move_monte_charge(3);break;
    case 12: Open_Barriere_Acces_Monte_Charge.run_Open_barriere_acces_monte_charge();break;
    case 13: Open_Barriere_Monte_Charge.run_Open_barriere_monte_charge(1);break;
    case 14: Open_Barriere_Monte_Charge.run_Open_barriere_monte_charge(2);break;
    case 15: Open_Barriere_Etage.run_Open_barriere_etage(1);break;
    case 16: Open_Barriere_Etage.run_Open_barriere_etage(2);break;
    case 17: Open_Barriere_Etage.run_Open_barriere_etage(3);break;
    case 18: if(tableau[0] == null){Moving_Vehicules voiture = new Moving_Vehicules(-50,325,2,1);
             tableau[0] = voiture; break;}
             else if(tableau[0] != null && tableau[0].get_x() != 150){tableau[0].deplace_horizontal_right(); break;}
             else{SelectEvent = 0; ACTION = false;break;}
    case 19: if(tableau[0] == null){Moving_Vehicules voiture = new Moving_Vehicules(-50,325,2,2);
             tableau[0] = voiture; break;}
             else if(tableau[0] != null && tableau[0].get_x() != 150){tableau[0].deplace_horizontal_right();break;}
             else{SelectEvent = 0; ACTION = false;break;}
    case 20: if(tableau[0] == null){Moving_Vehicules voiture = new Moving_Vehicules(-50,325,2,3);
             tableau[0] = voiture; break;}
             else if(tableau[0] != null && tableau[0].get_x() != 150){tableau[0].deplace_horizontal_right();break;}
             else{SelectEvent = 0; ACTION = false;break;}
    case 21: if(tableau[0] == null){Moving_Vehicules voiture = new Moving_Vehicules(-50,325,2,4);
             tableau[0] = voiture; break;}
             else if(tableau[0] != null && tableau[0].get_x() != 150){tableau[0].deplace_horizontal_right();break;}
             else{SelectEvent = 0; ACTION = false;break;}
    case 22: if(tableau[1] == null){Moving_Vehicules voiture = new Moving_Vehicules(-50,425,2,1);
             tableau[1] = voiture; break;}
             else if(tableau[1] != null && tableau[1].get_x() != 150){tableau[1].deplace_horizontal_right();break;}
             else{SelectEvent = 0; ACTION = false;break;}
    case 23: if(tableau[1] == null){Moving_Vehicules voiture = new Moving_Vehicules(-50,425,2,2);
             tableau[1] = voiture; break;}
             else if(tableau[1] != null && tableau[1].get_x() != 150){tableau[1].deplace_horizontal_right();break;}
             else{SelectEvent = 0; ACTION = false;break;}
    case 24: if(tableau[1] == null){Moving_Vehicules voiture = new Moving_Vehicules(-50,425,2,3);
             tableau[1] = voiture; break;}
             else if(tableau[1] != null && tableau[1].get_x() != 150){tableau[1].deplace_horizontal_right();break;}
             else{SelectEvent = 0; ACTION = false;break;}
    case 25: if(tableau[1] == null){Moving_Vehicules voiture = new Moving_Vehicules(-50,425,2,4);
             tableau[1] = voiture; break;}
             else if(tableau[1] != null && tableau[1].get_x() != 150){tableau[1].deplace_horizontal_right();break;}
             else{SelectEvent = 0; ACTION = false;break;}
    case 26: Voie_1_To_Monte_Charge_Rangee1.run_VOIE_1_to_monte_charge_rangee1();break;
    case 27: Voie_1_To_Monte_Charge_Rangee2.run_VOIE_1_to_monte_charge_rangee2();break;
    case 28: Voie_2_To_Monte_Charge_Rangee1.run_VOIE_2_to_monte_charge_rangee1();break;
    case 29: Voie_2_To_Monte_Charge_Rangee2.run_VOIE_2_to_monte_charge_rangee2();break;
  }
}
