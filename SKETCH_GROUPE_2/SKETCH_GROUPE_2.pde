//Variables

/*Constant definitions*/
Integer camion1 = 2;
Integer camion2 = 5;
Integer camion3 = 4;
Integer none = 0;
Integer voiture = 1;
  
/*Variable definitions*/
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

//Events//

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

//Setup the size of the sketch.
void setup (){
  size(1200, 800);
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
}
