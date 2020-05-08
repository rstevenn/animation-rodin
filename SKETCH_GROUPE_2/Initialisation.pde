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
  ButtonDispawnV2.display(Dispawn_Vehicule_Voie_2.guard_DISPAWN_VEHICULE_VOIE_2());
  ButtonEvacuateV1.display(Evacuate_Voie_1.guard_EVACUATE_VOIE_1());
  ButtonEvacuateV2.display(Evacuate_Voie_2.guard_EVACUATE_VOIE_2());
  ButtonHandleV1.display(Handle_Borne_1.guard_HANDLE_BORNE_1());
  ButtonHandleV2.display(Handle_Borne_2.guard_HANDLE_BORNE_2());
  ButtonMCR1toF.display(Monte_Charge_Rangee1_To_Etage.guard_Monte_charge_rangee1_to_etage());
  ButtonMCR2toF.display(Monte_Charge_Rangee2_To_Etage.guard_Monte_charge_rangee2_to_etage());
  
  //ButtonMoveMCtoF1.display(Move_Monte_Charge.guard_Move_monte_charge(1));//
  
  ButtonBaccesMC.display(Open_Barriere_Acces_Monte_Charge.guard_Open_barriere_acces_monte_charge());
  ButtonBMCfront.display(Open_Barriere_Monte_Charge.guard_Open_barriere_monte_charge(1));
  ButtonBMCback.display(Open_Barriere_Monte_Charge.guard_Open_barriere_monte_charge(2));
  ButtonBF1.display(Open_Barriere_Etage.guard_Open_barriere_etage(1));
  ButtonBF2.display(Open_Barriere_Etage.guard_Open_barriere_etage(2));
  ButtonBF3.display(Open_Barriere_Etage.guard_Open_barriere_etage(3)); 
  ButtonSpawnVV1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(voiture));
  ButtonSpawnC1V1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion1));
  ButtonSpawnC2V1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion2));
  ButtonSpawnC3V1.display(Spawn_Vehicule_Voie_1.guard_SPAWN_VEHICULE_VOIE_1(camion3));
  ButtonSpawnVV2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(voiture));
  ButtonSpawnC1V2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion1));
  ButtonSpawnC2V2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion2));
  ButtonSpawnC3V2.display(Spawn_Vehicule_Voie_2.guard_SPAWN_VEHICULE_VOIE_2(camion3));
  ButtonV1toMCR1.display(Voie_1_To_Monte_Charge_Rangee1.guard_VOIE_1_to_monte_charge_rangee1());
  ButtonV1toMCR2.display(Voie_1_To_Monte_Charge_Rangee2.guard_VOIE_1_to_monte_charge_rangee2());
  ButtonV2toMCR1.display(Voie_2_To_Monte_Charge_Rangee1.guard_VOIE_2_to_monte_charge_rangee1());
  ButtonV2toMCR2.display(Voie_2_To_Monte_Charge_Rangee2.guard_VOIE_2_to_monte_charge_rangee2());
}
