public class Machine_Parking_Ferry{
  
  /*Constant definitions*/
  public static final Integer camion1 = 2;
  public static final Integer camion2 = 5;
  public static final Integer camion3 = 4;
  public static final Integer none = 0;
  public static final Integer voiture = 1;
  
  /*Variable definitions*/
  private BRelation<Integer,Integer> Attente_embarquement;
  private Boolean Barriere_acces_monte_charge;
  private BRelation<Integer,Boolean> Barriere_etage;
  private BRelation<Integer,Boolean> Barriere_monte_charge;
  private Boolean Barriere_voie1;
  private Boolean Barriere_voie2;
  private Boolean Borne_1;
  private Boolean Borne_2;
  private Boolean Capteur_arrive;
  private BRelation<Integer,Boolean> Capteur_etages;
  private Boolean Capteur_monte_charge_1;
  private Boolean Capteur_monte_charge_2;
  private BRelation<Integer,Boolean> Choose_capteur_state;
  private BRelation<Integer,Integer> Etages;
  private Integer Monte_charge_etage;
  private BRelation<Integer,Integer> Monte_charge_rangee1;
  private BRelation<Integer,Integer> Monte_charge_rangee2;
  private Integer N_slot_full_rangee1;
  private Integer N_slot_full_rangee2;
  private BRelation<Integer,Integer> Select_untouch_stage;
  private Integer Temporary_target_1;
  private Integer Temporary_target_2;
  private Integer Test_full_rangee1;
  private Integer Test_full_rangee2;
  private BRelation<Integer,Integer> Virtual_etages;
  private BRelation<Integer,Integer> Voie_arrive_1;
  private BRelation<Integer,Integer> Voie_arrive_2;
  private BRelation<Integer,Integer> Voie_de_sortie_1;
  private BRelation<Integer,Integer> Voie_de_sortie_2;
  private BRelation<Integer,Integer> choose_target;
  private BRelation<Integer,Integer> scoring_full_etage1;
  private BRelation<Integer,Integer> scoring_full_etage2;
  private BRelation<Integer,Integer> scoring_type_vehicule;
  private BRelation<Integer,Integer> target_etage_rangee1;
  private BRelation<Integer,Integer> target_etage_rangee2;
  private BRelation<Integer,Integer> value_vehicules;

  /*Constructor*/
  public Machine_Parking_Ferry(){
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
  
  /*Getter and Mutator methods definition*/
  public Integer get_N_slot_full_rangee1(){
    return this.N_slot_full_rangee1;
  }

  public void set_N_slot_full_rangee1(Integer N_slot_full_rangee1){
    this.N_slot_full_rangee1 = N_slot_full_rangee1;
  }

  public BRelation<Integer,Integer> get_Voie_arrive_2(){
    return this.Voie_arrive_2;
  }

  public void set_Voie_arrive_2(BRelation<Integer,Integer> Voie_arrive_2){
    this.Voie_arrive_2 = Voie_arrive_2;
  }

  public Integer get_N_slot_full_rangee2(){
    return this.N_slot_full_rangee2;
  }

  public void set_N_slot_full_rangee2(Integer N_slot_full_rangee2){
    this.N_slot_full_rangee2 = N_slot_full_rangee2;
  }

  public  BRelation<Integer,Integer> get_Virtual_etages(){
    return this.Virtual_etages;
  }

  public void set_Virtual_etages(BRelation<Integer,Integer> Virtual_etages){
    this.Virtual_etages = Virtual_etages;
  }

  public BRelation<Integer,Integer> get_Voie_arrive_1(){
    return this.Voie_arrive_1;
  }

  public void set_Voie_arrive_1(BRelation<Integer,Integer> Voie_arrive_1){
    this.Voie_arrive_1 = Voie_arrive_1;
  }

  public  BRelation<Integer,Boolean> get_Barriere_monte_charge(){
    return this.Barriere_monte_charge;
  }

  public void set_Barriere_monte_charge(BRelation<Integer,Boolean> Barriere_monte_charge){
    this.Barriere_monte_charge = Barriere_monte_charge;
  }

  public BRelation<Integer,Boolean> get_Capteur_etages(){
    return this.Capteur_etages;
  }

  public void set_Capteur_etages(BRelation<Integer,Boolean> Capteur_etages){
    this.Capteur_etages = Capteur_etages;
  }

  public BRelation<Integer,Integer> get_Attente_embarquement(){
    return this.Attente_embarquement;
  }

  public void set_Attente_embarquement(BRelation<Integer,Integer> Attente_embarquement){
    this.Attente_embarquement = Attente_embarquement;
  }

  public BRelation<Integer,Integer> get_target_etage_rangee1(){
    return this.target_etage_rangee1;
  }

  public void set_target_etage_rangee1(BRelation<Integer,Integer> target_etage_rangee1){
    this.target_etage_rangee1 = target_etage_rangee1;
  }

  public BRelation<Integer,Integer> get_target_etage_rangee2(){
    return this.target_etage_rangee2;
  }

  public void set_target_etage_rangee2(BRelation<Integer,Integer> target_etage_rangee2){
    this.target_etage_rangee2 = target_etage_rangee2;
  }

  public Boolean get_Barriere_acces_monte_charge(){
    return this.Barriere_acces_monte_charge;
  }

  public void set_Barriere_acces_monte_charge(Boolean Barriere_acces_monte_charge){
    this.Barriere_acces_monte_charge = Barriere_acces_monte_charge;
  }

  public Integer get_Test_full_rangee2(){
    return this.Test_full_rangee2;
  }

  public void set_Test_full_rangee2(Integer Test_full_rangee2){
    this.Test_full_rangee2 = Test_full_rangee2;
  }

  public Integer get_Test_full_rangee1(){
    return this.Test_full_rangee1;
  }

  public void set_Test_full_rangee1(Integer Test_full_rangee1){
    this.Test_full_rangee1 = Test_full_rangee1;
  }

  public BRelation<Integer,Boolean> get_Choose_capteur_state(){
    return this.Choose_capteur_state;
  }

  public void set_Choose_capteur_state(BRelation<Integer,Boolean> Choose_capteur_state){
    this.Choose_capteur_state = Choose_capteur_state;
  }

  public BRelation<Integer,Integer> get_choose_target(){
    return this.choose_target;
  }

  public void set_choose_target(BRelation<Integer,Integer> choose_target){
    this.choose_target = choose_target;
  }

  public BRelation<Integer,Integer> get_Voie_de_sortie_2(){
    return this.Voie_de_sortie_2;
  }

  public void set_Voie_de_sortie_2(BRelation<Integer,Integer> Voie_de_sortie_2){
    this.Voie_de_sortie_2 = Voie_de_sortie_2;
  }

  public BRelation<Integer,Integer> get_Voie_de_sortie_1(){
    return this.Voie_de_sortie_1;
  }

  public void set_Voie_de_sortie_1(BRelation<Integer,Integer> Voie_de_sortie_1){
    this.Voie_de_sortie_1 = Voie_de_sortie_1;
  }

  public BRelation<Integer,Integer> get_scoring_full_etage2(){
    return this.scoring_full_etage2;
  }

  public void set_scoring_full_etage2(BRelation<Integer,Integer> scoring_full_etage2){
    this.scoring_full_etage2 = scoring_full_etage2;
  }

  public BRelation<Integer,Integer> get_scoring_full_etage1(){
    return this.scoring_full_etage1;
  }

  public void set_scoring_full_etage1(BRelation<Integer,Integer> scoring_full_etage1){
    this.scoring_full_etage1 = scoring_full_etage1;
  }

  public BRelation<Integer,Integer> get_Etages(){
    return this.Etages;
  }

  public void set_Etages(BRelation<Integer,Integer> Etages){
    this.Etages = Etages;
  }

  public Boolean get_Borne_2(){
    return this.Borne_2;
  }

  public void set_Borne_2(Boolean Borne_2){
    this.Borne_2 = Borne_2;
  }

  public Boolean get_Borne_1(){
    return this.Borne_1;
  }

  public void set_Borne_1(Boolean Borne_1){
    this.Borne_1 = Borne_1;
  }

  public Boolean get_Capteur_monte_charge_1(){
    return this.Capteur_monte_charge_1;
  }

  public void set_Capteur_monte_charge_1(Boolean Capteur_monte_charge_1){
    this.Capteur_monte_charge_1 = Capteur_monte_charge_1;
  }

  public BRelation<Integer,Integer> get_scoring_type_vehicule(){
    return this.scoring_type_vehicule;
  }

  public void set_scoring_type_vehicule(BRelation<Integer,Integer> scoring_type_vehicule){
    this.scoring_type_vehicule = scoring_type_vehicule;
  }

  public Boolean get_Capteur_arrive(){
    return this.Capteur_arrive;
  }

  public void set_Capteur_arrive(Boolean Capteur_arrive){
    this.Capteur_arrive = Capteur_arrive;
  }

  public BRelation<Integer,Integer> get_value_vehicules(){
    return this.value_vehicules;
  }

  public void set_value_vehicules(BRelation<Integer,Integer> value_vehicules){
    this.value_vehicules = value_vehicules;
  }

  public Integer get_Temporary_target_2(){
    return this.Temporary_target_2;
  }

  public void set_Temporary_target_2(Integer Temporary_target_2){
    this.Temporary_target_2 = Temporary_target_2;
  }

  public Integer get_Temporary_target_1(){
    return this.Temporary_target_1;
  }

  public void set_Temporary_target_1(Integer Temporary_target_1){
    this.Temporary_target_1 = Temporary_target_1;
  }

  public Boolean get_Barriere_voie1(){
    return this.Barriere_voie1;
  }

  public void set_Barriere_voie1(Boolean Barriere_voie1){
    this.Barriere_voie1 = Barriere_voie1;
  }

  public BRelation<Integer,Boolean> get_Barriere_etage(){
    return this.Barriere_etage;
  }

  public void set_Barriere_etage(BRelation<Integer,Boolean> Barriere_etage){
    this.Barriere_etage = Barriere_etage;
  }

  public Boolean get_Barriere_voie2(){
    return this.Barriere_voie2;
  }

  public void set_Barriere_voie2(Boolean Barriere_voie2){
    this.Barriere_voie2 = Barriere_voie2;
  }

  public BRelation<Integer,Integer> get_Monte_charge_rangee1(){
    return this.Monte_charge_rangee1;
  }

  public void set_Monte_charge_rangee1(BRelation<Integer,Integer> Monte_charge_rangee1){
    this.Monte_charge_rangee1 = Monte_charge_rangee1;
  }

  public BRelation<Integer,Integer> get_Select_untouch_stage(){
    return this.Select_untouch_stage;
  }

  public void set_Select_untouch_stage(BRelation<Integer,Integer> Select_untouch_stage){
    this.Select_untouch_stage = Select_untouch_stage;
  }

  public Boolean get_Capteur_monte_charge_2(){
    return this.Capteur_monte_charge_2;
  }

  public void set_Capteur_monte_charge_2(Boolean Capteur_monte_charge_2){
    this.Capteur_monte_charge_2 = Capteur_monte_charge_2;
  }

  public Integer get_Monte_charge_etage(){
    return this.Monte_charge_etage;
  }

  public void set_Monte_charge_etage(Integer Monte_charge_etage){
    this.Monte_charge_etage = Monte_charge_etage;
  }

  public BRelation<Integer,Integer> get_Monte_charge_rangee2(){
    return this.Monte_charge_rangee2;
  }

  public void set_Monte_charge_rangee2(BRelation<Integer,Integer> Monte_charge_rangee2){
    this.Monte_charge_rangee2 = Monte_charge_rangee2;
  }
}
