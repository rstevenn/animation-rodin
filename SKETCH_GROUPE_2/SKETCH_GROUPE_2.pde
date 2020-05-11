/*Variables*/
boolean click = false;
boolean ACTION = false;
int SelectEvent;
Moving_Vehicules tableau[] = new Moving_Vehicules[15];
Moving_elements MonteCharge = new Moving_elements(450, 450, 1, 300, 100, "");
Moving_elements BFrontMonteCharge = new Moving_elements(300, 450, 1, 10, 100, "", 150);
Moving_elements BBackMonteCharge = new Moving_elements(600, 450, 1, 10, 100, "", 150);

/*Constant definitions*/
Integer camion1 = 2;
Integer camion2 = 3;
Integer camion3 = 4;
Integer none = 0;
Integer voiture = 1;
  
/*Machine variables definitions*/
BRelation<Integer,Integer> Attente_embarquement;
Boolean Barriere_acces_monte_charge;
BRelation<Integer,Boolean> Barriere_etage;
BRelation<Integer,Boolean> Barriere_monte_charge;
Boolean Barriere_voie1;
Boolean Barriere_voie2;
Boolean Borne_1;
Boolean Borne_2;
Boolean Capteur_arrive;
BRelation<Integer,Boolean> Capteur_etages;
Boolean Capteur_monte_charge_1;
Boolean Capteur_monte_charge_2;
BRelation<Integer,Boolean> Choose_capteur_state;
BRelation<Integer,Integer> Etages;
Integer Monte_charge_etage;
BRelation<Integer,Integer> Monte_charge_rangee1;
BRelation<Integer,Integer> Monte_charge_rangee2;
Integer N_slot_full_rangee1;
Integer N_slot_full_rangee2;
BRelation<Integer,Integer> Select_untouch_stage;
Integer Temporary_target_1;
Integer Temporary_target_2;
Integer Test_full_rangee1;
Integer Test_full_rangee2;
BRelation<Integer,Integer> Virtual_etages;
BRelation<Integer,Integer> Voie_arrive_1;
BRelation<Integer,Integer> Voie_arrive_2;
BRelation<Integer,Integer> Voie_de_sortie_1;
BRelation<Integer,Integer> Voie_de_sortie_2;
BRelation<Integer,Integer> choose_target;
BRelation<Integer,Integer> scoring_full_etage1;
BRelation<Integer,Integer> scoring_full_etage2;
BRelation<Integer,Integer> scoring_type_vehicule;
BRelation<Integer,Integer> target_etage_rangee1;
BRelation<Integer,Integer> target_etage_rangee2;
BRelation<Integer,Integer> value_vehicules;

/*Events*/
DISPAWN_VEHICULE_VOIE_1 Dispawn_Vehicule_Voie_1 = new DISPAWN_VEHICULE_VOIE_1();
DISPAWN_VEHICULE_VOIE_2 Dispawn_Vehicule_Voie_2 = new DISPAWN_VEHICULE_VOIE_2();
EVACUATE_VOIE_1 Evacuate_Voie_1 = new EVACUATE_VOIE_1();
EVACUATE_VOIE_2 Evacuate_Voie_2 = new EVACUATE_VOIE_2();
HANDLE_BORNE_1 Handle_Borne_1 = new HANDLE_BORNE_1();
HANDLE_BORNE_2 Handle_Borne_2 = new HANDLE_BORNE_2();
Monte_charge_rangee1_to_etage Monte_Charge_Rangee1_To_Etage = new Monte_charge_rangee1_to_etage();
Monte_charge_rangee2_to_etage Monte_Charge_Rangee2_To_Etage = new Monte_charge_rangee2_to_etage();
Move_monte_charge Move_Monte_Charge = new Move_monte_charge();
Open_barriere_acces_monte_charge Open_Barriere_Acces_Monte_Charge = new Open_barriere_acces_monte_charge();
Open_barriere_etage Open_Barriere_Etage = new Open_barriere_etage();
Open_barriere_monte_charge Open_Barriere_Monte_Charge = new Open_barriere_monte_charge();
SPAWN_VEHICULE_VOIE_1 Spawn_Vehicule_Voie_1 = new SPAWN_VEHICULE_VOIE_1();
SPAWN_VEHICULE_VOIE_2 Spawn_Vehicule_Voie_2 = new SPAWN_VEHICULE_VOIE_2();
VOIE_1_to_monte_charge_rangee1 Voie_1_To_Monte_Charge_Rangee1 = new VOIE_1_to_monte_charge_rangee1();
VOIE_1_to_monte_charge_rangee2 Voie_1_To_Monte_Charge_Rangee2 = new VOIE_1_to_monte_charge_rangee2();
VOIE_2_to_monte_charge_rangee1 Voie_2_To_Monte_Charge_Rangee1 = new VOIE_2_to_monte_charge_rangee1();
VOIE_2_to_monte_charge_rangee2 Voie_2_To_Monte_Charge_Rangee2 = new VOIE_2_to_monte_charge_rangee2();

/*Buttons*/
Button ButtonDispawnV1 = new Button(1050,25,70,25,"Dispawn V1",0,128,0,1);
Button ButtonDispawnV2 = new Button(1125,25,70,25,"Dispawn V2",0,128,0,2);
Button ButtonEvacuateV1 = new Button(1050,75,70,25,"Evacuate V1",0,128,0,3);
Button ButtonEvacuateV2 = new Button(1125,75,70,25,"Evacuate V2",0,128,0,4);
Button ButtonHandleV1 = new Button(675,25,70,25,"Handle V1",0,128,0,5);
Button ButtonHandleV2 = new Button(750,25,70,25,"Handle V2",0,128,0,6);
Button ButtonMCR1toF = new Button(375,75,70,25,"MCR1 > Floor",0,128,0,7);
Button ButtonMCR2toF = new Button(450,75,70,25,"MCR2 > Floor",0,128,0,8);
Button ButtonMoveMCtoF1 = new Button(825,75,70,25,"MC=Floor1",0,128,0,9);
Button ButtonMoveMCtoF2 = new Button(900,75,70,25,"MC=Floor2",0,128,0,10);
Button ButtonMoveMCtoF3 = new Button(975,75,70,25,"MC=Floor3",0,128,0,11);
Button ButtonBaccesMC = new Button(525,75,70,25,"openBaccesMC",0,128,0,12);
Button ButtonBMCfront = new Button(600,75,70,25,"openBMCfront",0,128,0,13);
Button ButtonBMCback = new Button(675,75,70,25,"openBMCback",0,128,0,14);
Button ButtonBF1 = new Button(825,25,70,25,"openBF1",0,128,0,15);
Button ButtonBF2 = new Button(900,25,70,25,"openBF2",0,128,0,16);
Button ButtonBF3 = new Button(975,25,70,25,"openBF3",0,128,0,17);
Button ButtonSpawnVV1 = new Button(375,25,70,25,"SpawnVV1",0,128,0,18);
Button ButtonSpawnC1V1 = new Button(450,25,70,25,"SpawnC1V1",0,128,0,19);
Button ButtonSpawnC2V1 = new Button(525,25,70,25,"SpawnC2V1",0,128,0,20);
Button ButtonSpawnC3V1 = new Button(600,25,70,25,"SpawnC3V1",0,128,0,21);
Button ButtonSpawnVV2 = new Button(75,25,70,25,"SpawnVV2",0,128,0,22);
Button ButtonSpawnC1V2 = new Button(150,25,70,25,"SpawnC1V2",0,128,0,23);
Button ButtonSpawnC2V2 = new Button(225,25,70,25,"SpawnC2V2",0,128,0,24);
Button ButtonSpawnC3V2 = new Button(300,25,70,25,"SpawnC3V2",0,128,0,25);
Button ButtonV1toMCR1 = new Button(225,75,70,25,"V1 to MCR1",0,128,0,26);
Button ButtonV1toMCR2 = new Button(300,75,70,25,"V1 to MCR2",0,128,0,27);
Button ButtonV2toMCR1 = new Button(150,75,70,25,"V2 to MCR1",0,128,0,28);
Button ButtonV2toMCR2 = new Button(75,75,70,25,"V2 to MCR2",0,128,0,29);

//Setup the size of the sketch.
void setup (){
  size(1200, 650);
  Init_Machine();
}

//Display graphical elements and buttons
void draw(){  
  //draw graphical elements.
  background(0);
  stroke(25);
  for(int i=0;i<800;i+=25){
    line(0,i,1200,i);
  }
  for(int i=0;i<1200;i+=25){
    line(i,0,i,800);
  }
  stroke(70);
  for(int i=0;i<800;i+=50){
    line(0,i,1200,i);
  }
  for(int i=0;i<1200;i+=50){
    line(i,0,i,800);
  }

  Display_button();
  Decor();
  Do_Event();
  Anime_Event();
  MonteCharge.display();
  Display_Barriere();
  for(int i=0;i<=9;i++){
    if(tableau[i] != null){
      tableau[i].display();
    }
  }
 
  click = false;
  /*print("*************************\n");
  print("Voie_arrive_1: " + Voie_arrive_1 + "\n");
  print("Voie_arrive_2: " + Voie_arrive_2 + "\n");
  print("Voie_de_sortie_1: " + Voie_de_sortie_1 + "\n");
  print("Voie_de_sortie_2: " + Voie_de_sortie_2 + "\n");
  print("Monte_charge_rangee1: " + Monte_charge_rangee1 + "\n");
  print("Monte_charge_rangee2: " + Monte_charge_rangee2 + "\n");
  print("Etages: " + Etages + "\n");
  print("Barriere_voie1: " + Barriere_voie1 + "\n");
  print("Barriere_voie2: " + Barriere_voie2 + "\n");
  print("Barriere_etage: " + Barriere_etage + "\n");
  print("Barriere_monte_charge: " + Barriere_monte_charge + "\n");
  print("Borne_1: " + Borne_1 + "\n");
  print("Borne_2: " + Borne_2 + "\n");*/
  
  stroke(255);
  fill(0);
  rect(225, 175, 50, 150);
}

void mouseClicked(){
  click = true;
}
