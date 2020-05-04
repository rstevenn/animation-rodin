package Projet de Groupe_sequential;

import eventb_prelude.*;
import Util.*;
//@ model import org.jmlspecs.models.JMLObjectSet;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class Parking sur un bateau R4{
	private static final Integer max_integer = Utilities.max_integer;
	private static final Integer min_integer = Utilities.min_integer;

	SPAWN_VEHICULE_VOIE_2 evt_SPAWN_VEHICULE_VOIE_2 = new SPAWN_VEHICULE_VOIE_2(this);
	VOIE_1_to_monte_charge_rangee2 evt_VOIE_1_to_monte_charge_rangee2 = new VOIE_1_to_monte_charge_rangee2(this);
	SPAWN_VEHICULE_VOIE_1 evt_SPAWN_VEHICULE_VOIE_1 = new SPAWN_VEHICULE_VOIE_1(this);
	VOIE_1_to_monte_charge_rangee1 evt_VOIE_1_to_monte_charge_rangee1 = new VOIE_1_to_monte_charge_rangee1(this);
	Monte_charge_rangee1_to_etage evt_Monte_charge_rangee1_to_etage = new Monte_charge_rangee1_to_etage(this);
	Open_barriere_monte_charge evt_Open_barriere_monte_charge = new Open_barriere_monte_charge(this);
	Open_barriere_acces_monte_charge evt_Open_barriere_acces_monte_charge = new Open_barriere_acces_monte_charge(this);
	HANDLE_BORNE_1 evt_HANDLE_BORNE_1 = new HANDLE_BORNE_1(this);
	Move_monte_charge evt_Move_monte_charge = new Move_monte_charge(this);
	Open_barriere_etage evt_Open_barriere_etage = new Open_barriere_etage(this);
	EVACUATE_VOIE_2 evt_EVACUATE_VOIE_2 = new EVACUATE_VOIE_2(this);
	VOIE_2_to_monte_charge_rangee2 evt_VOIE_2_to_monte_charge_rangee2 = new VOIE_2_to_monte_charge_rangee2(this);
	EVACUATE_VOIE_1 evt_EVACUATE_VOIE_1 = new EVACUATE_VOIE_1(this);
	Monte_charge_rangee2_to_etage evt_Monte_charge_rangee2_to_etage = new Monte_charge_rangee2_to_etage(this);
	VOIE_2_to_monte_charge_rangee1 evt_VOIE_2_to_monte_charge_rangee1 = new VOIE_2_to_monte_charge_rangee1(this);
	DISPAWN_VEHICULE_VOIE_2 evt_DISPAWN_VEHICULE_VOIE_2 = new DISPAWN_VEHICULE_VOIE_2(this);
	HANDLE_BORNE_2 evt_HANDLE_BORNE_2 = new HANDLE_BORNE_2(this);
	DISPAWN_VEHICULE_VOIE_1 evt_DISPAWN_VEHICULE_VOIE_1 = new DISPAWN_VEHICULE_VOIE_1(this);


	/******Set definitions******/
	//@ public static constraint type_vehicule.equals(\old(type_vehicule)); 
	public static final BSet<Integer> type_vehicule = new Enumerated(min_integer,max_integer);


	/******Constant definitions******/
	//@ public static constraint camion1.equals(\old(camion1)); 
	public static final Integer camion1 = Test_Parking sur un bateau R4.random_camion1;

	//@ public static constraint camion2.equals(\old(camion2)); 
	public static final Integer camion2 = Test_Parking sur un bateau R4.random_camion2;

	//@ public static constraint camion3.equals(\old(camion3)); 
	public static final Integer camion3 = Test_Parking sur un bateau R4.random_camion3;

	//@ public static constraint none.equals(\old(none)); 
	public static final Integer none = Test_Parking sur un bateau R4.random_none;

	//@ public static constraint voiture.equals(\old(voiture)); 
	public static final Integer voiture = Test_Parking sur un bateau R4.random_voiture;



	/******Axiom definitions******/
	/*@ public static invariant BSet.partition(type_vehicule,new BSet<Integer>(voiture),new BSet<Integer>(camion1),new BSet<Integer>(camion2),new BSet<Integer>(camion3),new BSet<Integer>(none)); */


	/******Variable definitions******/
	/*@ spec_public */ private BRelation<Integer,Integer> Attente_embarquement;

	/*@ spec_public */ private Boolean Barriere_acces_monte_charge;

	/*@ spec_public */ private BRelation<Integer,Boolean> Barriere_etage;

	/*@ spec_public */ private BRelation<Integer,Boolean> Barriere_monte_charge;

	/*@ spec_public */ private Boolean Barriere_voie1;

	/*@ spec_public */ private Boolean Barriere_voie2;

	/*@ spec_public */ private Boolean Borne_1;

	/*@ spec_public */ private Boolean Borne_2;

	/*@ spec_public */ private Boolean Capteur_arrive;

	/*@ spec_public */ private BRelation<Integer,Boolean> Capteur_etages;

	/*@ spec_public */ private Boolean Capteur_monte_charge_1;

	/*@ spec_public */ private Boolean Capteur_monte_charge_2;

	/*@ spec_public */ private BRelation<Integer,Boolean> Choose_capteur_state;

	/*@ spec_public */ private BRelation<Integer,Integer> Etages;

	/*@ spec_public */ private Integer Monte_charge_etage;

	/*@ spec_public */ private BRelation<Integer,Integer> Monte_charge_rangee1;

	/*@ spec_public */ private BRelation<Integer,Integer> Monte_charge_rangee2;

	/*@ spec_public */ private Integer N_slot_full_rangee1;

	/*@ spec_public */ private Integer N_slot_full_rangee2;

	/*@ spec_public */ private BRelation<Integer,Integer> Select_untouch_stage;

	/*@ spec_public */ private Integer Temporary_target_1;

	/*@ spec_public */ private Integer Temporary_target_2;

	/*@ spec_public */ private Integer Test_full_rangee1;

	/*@ spec_public */ private Integer Test_full_rangee2;

	/*@ spec_public */ private BRelation<Integer,Integer> Virtual_etages;

	/*@ spec_public */ private BRelation<Integer,Integer> Voie_arrive_1;

	/*@ spec_public */ private BRelation<Integer,Integer> Voie_arrive_2;

	/*@ spec_public */ private BRelation<Integer,Integer> Voie_de_sortie_1;

	/*@ spec_public */ private BRelation<Integer,Integer> Voie_de_sortie_2;

	/*@ spec_public */ private BRelation<Integer,Integer> choose_target;

	/*@ spec_public */ private BRelation<Integer,Integer> scoring_full_etage1;

	/*@ spec_public */ private BRelation<Integer,Integer> scoring_full_etage2;

	/*@ spec_public */ private BRelation<Integer,Integer> scoring_type_vehicule;

	/*@ spec_public */ private BRelation<Integer,Integer> target_etage_rangee1;

	/*@ spec_public */ private BRelation<Integer,Integer> target_etage_rangee2;

	/*@ spec_public */ private BRelation<Integer,Integer> value_vehicules;




	/******Invariant definition******/
	/*@ public invariant
		((BRelation.cross(NAT.instance,type_vehicule)).pow()).has(Voie_arrive_1) &&
		((BRelation.cross(NAT.instance,type_vehicule)).pow()).has(Voie_arrive_2) &&
		((BRelation.cross(NAT.instance,type_vehicule)).pow()).has(Voie_de_sortie_1) &&
		((BRelation.cross(NAT.instance,type_vehicule)).pow()).has(Voie_de_sortie_2) &&
		BOOL.instance.has(Borne_1) &&
		BOOL.instance.has(Borne_2) &&
		((BRelation.cross(NAT.instance,type_vehicule)).pow()).has(Attente_embarquement) &&
		new BSet<Integer>(new Integer(1),new Integer(2),new Integer(3)).has(Monte_charge_etage) &&
		((((BRelation.cross(NAT.instance,type_vehicule)).pow()).has(Monte_charge_rangee1)) <==> (((BRelation.cross(NAT.instance,type_vehicule)).pow()).has(Attente_embarquement))) &&
		((((BRelation.cross(NAT.instance,type_vehicule)).pow()).has(Monte_charge_rangee2)) <==> (((BRelation.cross(NAT.instance,type_vehicule)).pow()).has(Attente_embarquement))) &&
		((BRelation.cross(NAT.instance,NAT.instance)).pow()).has(Etages) &&
		((BRelation.cross(type_vehicule,NAT.instance)).pow()).has(value_vehicules) &&
		NAT.instance.has(Test_full_rangee1) &&
		NAT.instance.has(Test_full_rangee2) &&
		NAT.instance.has(N_slot_full_rangee1) &&
		NAT.instance.has(N_slot_full_rangee2) &&
		((BRelation.cross(NAT.instance,NAT.instance)).pow()).has(scoring_full_etage1) &&
		((BRelation.cross(NAT.instance,NAT.instance)).pow()).has(scoring_full_etage2) &&
		((BRelation.cross(type_vehicule,NAT.instance)).pow()).has(scoring_type_vehicule) &&
		((BRelation.cross(NAT.instance,NAT.instance)).pow()).has(choose_target) &&
		((BRelation.cross(NAT.instance,NAT.instance)).pow()).has(target_etage_rangee1) &&
		((BRelation.cross(NAT.instance,NAT.instance)).pow()).has(target_etage_rangee2) &&
		NAT.instance.has(Temporary_target_1) &&
		NAT.instance.has(Temporary_target_2) &&
		((BRelation.cross(NAT.instance,NAT.instance)).pow()).has(Virtual_etages) &&
		BOOL.instance.has(Barriere_voie1) &&
		BOOL.instance.has(Barriere_voie2) &&
		((BRelation.cross(NAT.instance,BOOL.instance)).pow()).has(Barriere_etage) &&
		BOOL.instance.has(Barriere_acces_monte_charge) &&
		((BRelation.cross(NAT.instance,BOOL.instance)).pow()).has(Barriere_monte_charge) &&
		BOOL.instance.has(Capteur_arrive) &&
		BOOL.instance.has(Capteur_monte_charge_1) &&
		BOOL.instance.has(Capteur_monte_charge_2) &&
		((BRelation.cross(NAT.instance,BOOL.instance)).pow()).has(Capteur_etages) &&
		((BRelation.cross(NAT.instance,BOOL.instance)).pow()).has(Choose_capteur_state) &&
		((BRelation.cross(NAT.instance,NAT.instance)).pow()).has(Select_untouch_stage); */


	/******Getter and Mutator methods definition******/
	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.N_slot_full_rangee1;*/
	public /*@ pure */ Integer get_N_slot_full_rangee1(){
		return this.N_slot_full_rangee1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.N_slot_full_rangee1;
	    ensures this.N_slot_full_rangee1 == N_slot_full_rangee1;*/
	public void set_N_slot_full_rangee1(Integer N_slot_full_rangee1){
		this.N_slot_full_rangee1 = N_slot_full_rangee1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Voie_arrive_2;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Voie_arrive_2(){
		return this.Voie_arrive_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Voie_arrive_2;
	    ensures this.Voie_arrive_2 == Voie_arrive_2;*/
	public void set_Voie_arrive_2(BRelation<Integer,Integer> Voie_arrive_2){
		this.Voie_arrive_2 = Voie_arrive_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.N_slot_full_rangee2;*/
	public /*@ pure */ Integer get_N_slot_full_rangee2(){
		return this.N_slot_full_rangee2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.N_slot_full_rangee2;
	    ensures this.N_slot_full_rangee2 == N_slot_full_rangee2;*/
	public void set_N_slot_full_rangee2(Integer N_slot_full_rangee2){
		this.N_slot_full_rangee2 = N_slot_full_rangee2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Virtual_etages;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Virtual_etages(){
		return this.Virtual_etages;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Virtual_etages;
	    ensures this.Virtual_etages == Virtual_etages;*/
	public void set_Virtual_etages(BRelation<Integer,Integer> Virtual_etages){
		this.Virtual_etages = Virtual_etages;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Voie_arrive_1;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Voie_arrive_1(){
		return this.Voie_arrive_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Voie_arrive_1;
	    ensures this.Voie_arrive_1 == Voie_arrive_1;*/
	public void set_Voie_arrive_1(BRelation<Integer,Integer> Voie_arrive_1){
		this.Voie_arrive_1 = Voie_arrive_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Barriere_monte_charge;*/
	public /*@ pure */ BRelation<Integer,Boolean> get_Barriere_monte_charge(){
		return this.Barriere_monte_charge;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Barriere_monte_charge;
	    ensures this.Barriere_monte_charge == Barriere_monte_charge;*/
	public void set_Barriere_monte_charge(BRelation<Integer,Boolean> Barriere_monte_charge){
		this.Barriere_monte_charge = Barriere_monte_charge;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Capteur_etages;*/
	public /*@ pure */ BRelation<Integer,Boolean> get_Capteur_etages(){
		return this.Capteur_etages;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Capteur_etages;
	    ensures this.Capteur_etages == Capteur_etages;*/
	public void set_Capteur_etages(BRelation<Integer,Boolean> Capteur_etages){
		this.Capteur_etages = Capteur_etages;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Attente_embarquement;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Attente_embarquement(){
		return this.Attente_embarquement;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Attente_embarquement;
	    ensures this.Attente_embarquement == Attente_embarquement;*/
	public void set_Attente_embarquement(BRelation<Integer,Integer> Attente_embarquement){
		this.Attente_embarquement = Attente_embarquement;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.target_etage_rangee1;*/
	public /*@ pure */ BRelation<Integer,Integer> get_target_etage_rangee1(){
		return this.target_etage_rangee1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.target_etage_rangee1;
	    ensures this.target_etage_rangee1 == target_etage_rangee1;*/
	public void set_target_etage_rangee1(BRelation<Integer,Integer> target_etage_rangee1){
		this.target_etage_rangee1 = target_etage_rangee1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.target_etage_rangee2;*/
	public /*@ pure */ BRelation<Integer,Integer> get_target_etage_rangee2(){
		return this.target_etage_rangee2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.target_etage_rangee2;
	    ensures this.target_etage_rangee2 == target_etage_rangee2;*/
	public void set_target_etage_rangee2(BRelation<Integer,Integer> target_etage_rangee2){
		this.target_etage_rangee2 = target_etage_rangee2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Barriere_acces_monte_charge;*/
	public /*@ pure */ Boolean get_Barriere_acces_monte_charge(){
		return this.Barriere_acces_monte_charge;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Barriere_acces_monte_charge;
	    ensures this.Barriere_acces_monte_charge == Barriere_acces_monte_charge;*/
	public void set_Barriere_acces_monte_charge(Boolean Barriere_acces_monte_charge){
		this.Barriere_acces_monte_charge = Barriere_acces_monte_charge;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Test_full_rangee2;*/
	public /*@ pure */ Integer get_Test_full_rangee2(){
		return this.Test_full_rangee2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Test_full_rangee2;
	    ensures this.Test_full_rangee2 == Test_full_rangee2;*/
	public void set_Test_full_rangee2(Integer Test_full_rangee2){
		this.Test_full_rangee2 = Test_full_rangee2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Test_full_rangee1;*/
	public /*@ pure */ Integer get_Test_full_rangee1(){
		return this.Test_full_rangee1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Test_full_rangee1;
	    ensures this.Test_full_rangee1 == Test_full_rangee1;*/
	public void set_Test_full_rangee1(Integer Test_full_rangee1){
		this.Test_full_rangee1 = Test_full_rangee1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Choose_capteur_state;*/
	public /*@ pure */ BRelation<Integer,Boolean> get_Choose_capteur_state(){
		return this.Choose_capteur_state;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Choose_capteur_state;
	    ensures this.Choose_capteur_state == Choose_capteur_state;*/
	public void set_Choose_capteur_state(BRelation<Integer,Boolean> Choose_capteur_state){
		this.Choose_capteur_state = Choose_capteur_state;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.choose_target;*/
	public /*@ pure */ BRelation<Integer,Integer> get_choose_target(){
		return this.choose_target;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.choose_target;
	    ensures this.choose_target == choose_target;*/
	public void set_choose_target(BRelation<Integer,Integer> choose_target){
		this.choose_target = choose_target;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Voie_de_sortie_2;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Voie_de_sortie_2(){
		return this.Voie_de_sortie_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Voie_de_sortie_2;
	    ensures this.Voie_de_sortie_2 == Voie_de_sortie_2;*/
	public void set_Voie_de_sortie_2(BRelation<Integer,Integer> Voie_de_sortie_2){
		this.Voie_de_sortie_2 = Voie_de_sortie_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Voie_de_sortie_1;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Voie_de_sortie_1(){
		return this.Voie_de_sortie_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Voie_de_sortie_1;
	    ensures this.Voie_de_sortie_1 == Voie_de_sortie_1;*/
	public void set_Voie_de_sortie_1(BRelation<Integer,Integer> Voie_de_sortie_1){
		this.Voie_de_sortie_1 = Voie_de_sortie_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.scoring_full_etage2;*/
	public /*@ pure */ BRelation<Integer,Integer> get_scoring_full_etage2(){
		return this.scoring_full_etage2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.scoring_full_etage2;
	    ensures this.scoring_full_etage2 == scoring_full_etage2;*/
	public void set_scoring_full_etage2(BRelation<Integer,Integer> scoring_full_etage2){
		this.scoring_full_etage2 = scoring_full_etage2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.scoring_full_etage1;*/
	public /*@ pure */ BRelation<Integer,Integer> get_scoring_full_etage1(){
		return this.scoring_full_etage1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.scoring_full_etage1;
	    ensures this.scoring_full_etage1 == scoring_full_etage1;*/
	public void set_scoring_full_etage1(BRelation<Integer,Integer> scoring_full_etage1){
		this.scoring_full_etage1 = scoring_full_etage1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Etages;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Etages(){
		return this.Etages;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Etages;
	    ensures this.Etages == Etages;*/
	public void set_Etages(BRelation<Integer,Integer> Etages){
		this.Etages = Etages;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Borne_2;*/
	public /*@ pure */ Boolean get_Borne_2(){
		return this.Borne_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Borne_2;
	    ensures this.Borne_2 == Borne_2;*/
	public void set_Borne_2(Boolean Borne_2){
		this.Borne_2 = Borne_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Borne_1;*/
	public /*@ pure */ Boolean get_Borne_1(){
		return this.Borne_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Borne_1;
	    ensures this.Borne_1 == Borne_1;*/
	public void set_Borne_1(Boolean Borne_1){
		this.Borne_1 = Borne_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Capteur_monte_charge_1;*/
	public /*@ pure */ Boolean get_Capteur_monte_charge_1(){
		return this.Capteur_monte_charge_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Capteur_monte_charge_1;
	    ensures this.Capteur_monte_charge_1 == Capteur_monte_charge_1;*/
	public void set_Capteur_monte_charge_1(Boolean Capteur_monte_charge_1){
		this.Capteur_monte_charge_1 = Capteur_monte_charge_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.scoring_type_vehicule;*/
	public /*@ pure */ BRelation<Integer,Integer> get_scoring_type_vehicule(){
		return this.scoring_type_vehicule;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.scoring_type_vehicule;
	    ensures this.scoring_type_vehicule == scoring_type_vehicule;*/
	public void set_scoring_type_vehicule(BRelation<Integer,Integer> scoring_type_vehicule){
		this.scoring_type_vehicule = scoring_type_vehicule;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Capteur_arrive;*/
	public /*@ pure */ Boolean get_Capteur_arrive(){
		return this.Capteur_arrive;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Capteur_arrive;
	    ensures this.Capteur_arrive == Capteur_arrive;*/
	public void set_Capteur_arrive(Boolean Capteur_arrive){
		this.Capteur_arrive = Capteur_arrive;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.value_vehicules;*/
	public /*@ pure */ BRelation<Integer,Integer> get_value_vehicules(){
		return this.value_vehicules;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.value_vehicules;
	    ensures this.value_vehicules == value_vehicules;*/
	public void set_value_vehicules(BRelation<Integer,Integer> value_vehicules){
		this.value_vehicules = value_vehicules;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Temporary_target_2;*/
	public /*@ pure */ Integer get_Temporary_target_2(){
		return this.Temporary_target_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Temporary_target_2;
	    ensures this.Temporary_target_2 == Temporary_target_2;*/
	public void set_Temporary_target_2(Integer Temporary_target_2){
		this.Temporary_target_2 = Temporary_target_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Temporary_target_1;*/
	public /*@ pure */ Integer get_Temporary_target_1(){
		return this.Temporary_target_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Temporary_target_1;
	    ensures this.Temporary_target_1 == Temporary_target_1;*/
	public void set_Temporary_target_1(Integer Temporary_target_1){
		this.Temporary_target_1 = Temporary_target_1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Barriere_voie1;*/
	public /*@ pure */ Boolean get_Barriere_voie1(){
		return this.Barriere_voie1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Barriere_voie1;
	    ensures this.Barriere_voie1 == Barriere_voie1;*/
	public void set_Barriere_voie1(Boolean Barriere_voie1){
		this.Barriere_voie1 = Barriere_voie1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Barriere_etage;*/
	public /*@ pure */ BRelation<Integer,Boolean> get_Barriere_etage(){
		return this.Barriere_etage;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Barriere_etage;
	    ensures this.Barriere_etage == Barriere_etage;*/
	public void set_Barriere_etage(BRelation<Integer,Boolean> Barriere_etage){
		this.Barriere_etage = Barriere_etage;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Barriere_voie2;*/
	public /*@ pure */ Boolean get_Barriere_voie2(){
		return this.Barriere_voie2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Barriere_voie2;
	    ensures this.Barriere_voie2 == Barriere_voie2;*/
	public void set_Barriere_voie2(Boolean Barriere_voie2){
		this.Barriere_voie2 = Barriere_voie2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Monte_charge_rangee1;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Monte_charge_rangee1(){
		return this.Monte_charge_rangee1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Monte_charge_rangee1;
	    ensures this.Monte_charge_rangee1 == Monte_charge_rangee1;*/
	public void set_Monte_charge_rangee1(BRelation<Integer,Integer> Monte_charge_rangee1){
		this.Monte_charge_rangee1 = Monte_charge_rangee1;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Select_untouch_stage;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Select_untouch_stage(){
		return this.Select_untouch_stage;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Select_untouch_stage;
	    ensures this.Select_untouch_stage == Select_untouch_stage;*/
	public void set_Select_untouch_stage(BRelation<Integer,Integer> Select_untouch_stage){
		this.Select_untouch_stage = Select_untouch_stage;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Capteur_monte_charge_2;*/
	public /*@ pure */ Boolean get_Capteur_monte_charge_2(){
		return this.Capteur_monte_charge_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Capteur_monte_charge_2;
	    ensures this.Capteur_monte_charge_2 == Capteur_monte_charge_2;*/
	public void set_Capteur_monte_charge_2(Boolean Capteur_monte_charge_2){
		this.Capteur_monte_charge_2 = Capteur_monte_charge_2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Monte_charge_etage;*/
	public /*@ pure */ Integer get_Monte_charge_etage(){
		return this.Monte_charge_etage;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Monte_charge_etage;
	    ensures this.Monte_charge_etage == Monte_charge_etage;*/
	public void set_Monte_charge_etage(Integer Monte_charge_etage){
		this.Monte_charge_etage = Monte_charge_etage;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable \nothing;
	    ensures \result == this.Monte_charge_rangee2;*/
	public /*@ pure */ BRelation<Integer,Integer> get_Monte_charge_rangee2(){
		return this.Monte_charge_rangee2;
	}

	/*@ public normal_behavior
	    requires true;
	    assignable this.Monte_charge_rangee2;
	    ensures this.Monte_charge_rangee2 == Monte_charge_rangee2;*/
	public void set_Monte_charge_rangee2(BRelation<Integer,Integer> Monte_charge_rangee2){
		this.Monte_charge_rangee2 = Monte_charge_rangee2;
	}



	/*@ public normal_behavior
	    requires true;
	    assignable \everything;
	    ensures
		Voie_arrive_1.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none))) &&
		Voie_arrive_2.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none))) &&
		Voie_de_sortie_1.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none))) &&
		Voie_de_sortie_2.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(0,none))) &&
		Borne_1 == false &&
		Borne_2 == false &&
		Monte_charge_etage == 1 &&
		Etages.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,0),new Pair<Integer,Integer>(2,0),new Pair<Integer,Integer>(3,0))) &&
		value_vehicules.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(voiture,1),new Pair<Integer,Integer>(camion1,1),new Pair<Integer,Integer>(camion2,2),new Pair<Integer,Integer>(camion3,3))) &&
		Test_full_rangee1 == 0 &&
		Test_full_rangee2 == 0 &&
		N_slot_full_rangee1 == 0 &&
		N_slot_full_rangee2 == 0 &&
		Monte_charge_rangee1.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,none),new Pair<Integer,Integer>(2,none),new Pair<Integer,Integer>(3,none))) &&
		Monte_charge_rangee2.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,none),new Pair<Integer,Integer>(2,none),new Pair<Integer,Integer>(3,none))) &&
		scoring_full_etage1.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,1),new Pair<Integer,Integer>(2,1),new Pair<Integer,Integer>(3,1),new Pair<Integer,Integer>(4,1),new Pair<Integer,Integer>(5,1),new Pair<Integer,Integer>(6,1),new Pair<Integer,Integer>(7,0),new Pair<Integer,Integer>(8,0),new Pair<Integer,Integer>(9,0))) &&
		scoring_full_etage2.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,10),new Pair<Integer,Integer>(2,10),new Pair<Integer,Integer>(3,10),new Pair<Integer,Integer>(4,10),new Pair<Integer,Integer>(5,10),new Pair<Integer,Integer>(6,10),new Pair<Integer,Integer>(7,0),new Pair<Integer,Integer>(8,0),new Pair<Integer,Integer>(9,0))) &&
		scoring_type_vehicule.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(voiture,1000),new Pair<Integer,Integer>(camion1,1),new Pair<Integer,Integer>(camion2,1),new Pair<Integer,Integer>(camion3,1))) &&
		choose_target.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1010,2),new Pair<Integer,Integer>(1000,3),new Pair<Integer,Integer>(1011,2),new Pair<Integer,Integer>(1001,3),new Pair<Integer,Integer>(2,1),new Pair<Integer,Integer>(11,2),new Pair<Integer,Integer>(10,2),new Pair<Integer,Integer>(12,1),new Pair<Integer,Integer>(1,3))) &&
		target_etage_rangee1.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,0),new Pair<Integer,Integer>(2,0),new Pair<Integer,Integer>(3,0))) &&
		target_etage_rangee2.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,0),new Pair<Integer,Integer>(2,0),new Pair<Integer,Integer>(3,0))) &&
		Temporary_target_1 == 0 &&
		Temporary_target_2 == 0 &&
		Virtual_etages.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(1,0),new Pair<Integer,Integer>(2,0),new Pair<Integer,Integer>(3,0))) &&
		Barriere_voie1 == false &&
		Barriere_voie2 == false &&
		Barriere_etage.equals(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false))) &&
		Barriere_monte_charge.equals(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,false),new Pair<Integer,Boolean>(2,false))) &&
		Barriere_acces_monte_charge == false &&
		Capteur_arrive == true &&
		Capteur_monte_charge_1 == true &&
		Capteur_monte_charge_2 == true &&
		Capteur_etages.equals(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,true),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false))) &&
		Choose_capteur_state.equals(new BRelation<Integer,Boolean>(new Pair<Integer,Boolean>(1,true),new Pair<Integer,Boolean>(2,false),new Pair<Integer,Boolean>(3,false))) &&
		Select_untouch_stage.equals(new BRelation<Integer,Integer>(new Pair<Integer,Integer>(21,3),new Pair<Integer,Integer>(12,3),new Pair<Integer,Integer>(23,1),new Pair<Integer,Integer>(32,1),new Pair<Integer,Integer>(13,2),new Pair<Integer,Integer>(31,2)));*/
	public Parking sur un bateau R4(){
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
}