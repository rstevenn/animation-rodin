void Init_Machine(){
  Voie_arrive_1 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
  Voie_arrive_2 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
  Voie_de_sortie_1 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
  Voie_de_sortie_2 = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none)));
  Borne_1 = false;
  Borne_2 = false;
  Monte_charge_etage = 1;
  Etages = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,0),new Pair<Integer,Integer>(2,0),new Pair<Integer,Integer>(3,0)));
  value_vehicules = (new BRelation<Integer,Integer>(new Pair<Integer,Integer>(voiture,1),new Pair<Integer,Integer>(camion1,1),new Pair<Integer,Integer>(camion2,2),new Pair<Integer,Integer>(camion3,3)));
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
}
