package Projet de Groupe_sequential;
import java.util.Random;
import Util.Utilities;
import eventb_prelude.*;

public class Test_Parking sur un bateau R4{

	public static Integer random_voiture;
	public static Integer random_camion1;
	public static Integer random_camion2;
	public static Integer random_camion3;
	public static Integer random_none;

	static Random rnd = new Random();
	static Integer max_size_BSet = 10;
	Integer min_integer = Utilities.min_integer;
	Integer max_integer = Utilities.max_integer;

	public Integer GenerateRandomInteger(){
		BSet<Integer> S =  new BSet<Integer>(
				new Enumerated(min_integer, max_integer)
				);
		/** User defined code that reflects axioms and theorems: Begin **/

		/** User defined code that reflects axioms and theorems: End **/

		return (Integer) S.toArray()[rnd.nextInt(S.size())];
	}

	public boolean GenerateRandomBoolean(){
		boolean res = (Boolean) BOOL.instance.toArray()[rnd.nextInt(2)];

		/** User defined code that reflects axioms and theorems: Begin **/

		/** User defined code that reflects axioms and theorems: End **/

		return res;
	}


	public BSet<Integer> GenerateRandomIntegerBSet(){
		int size = rnd.nextInt(max_size_BSet);
		BSet<Integer> S = new BSet<Integer>();
		while (S.size() != size){
			S.add(GenerateRandomInteger());
		}

		/** User defined code that reflects axioms and theorems: Begin **/

		/** User defined code that reflects axioms and theorems: End **/

		return S;
	}

	public BSet<Boolean> GenerateRandomBooleanBSet(){
		int size = rnd.nextInt(2);
		BSet<Boolean> res = new BSet<Boolean>();
		if (size == 0){
			res = new BSet<Boolean>(GenerateRandomBoolean());
		}else{
			res = new BSet<Boolean>(true,false);
		}

		/** User defined code that reflects axioms and theorems: Begin **/

		/** User defined code that reflects axioms and theorems: End **/

		return res;
	}

	public BRelation<Integer,Integer> GenerateRandomBRelation(){
		BRelation<Integer,Integer> res = new BRelation<Integer,Integer>();
		int size = rnd.nextInt(max_size_BSet);
		while (res.size() != size){
			res.add(
					new Pair<Integer, Integer>(GenerateRandomInteger(), GenerateRandomInteger()));
		}
		/** User defined code that reflects axioms and theorems: Begin **/

		/** User defined code that reflects axioms and theorems: End **/

		return res;
	}

	public static void main(String[] args){
		Test_Parking sur un bateau R4 test = new Test_Parking sur un bateau R4();

		/** User defined code that reflects axioms and theorems: Begin **/
		test.random_voiture = test.GenerateRandomInteger();
		test.random_camion1 = test.GenerateRandomInteger();
		test.random_camion2 = test.GenerateRandomInteger();
		test.random_camion3 = test.GenerateRandomInteger();
		test.random_none = test.GenerateRandomInteger();
		/** User defined code that reflects axioms and theorems: End **/

		Parking sur un bateau R4 machine = new Parking sur un bateau R4();
		int n = 18; //the number of events in the machine
		//Init values for parameters in event: SPAWN_VEHICULE_VOIE_1
		Integer vehicule_type = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));

		//Init values for parameters in event: SPAWN_VEHICULE_VOIE_2
		Integer vehicule_type = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));

		//Init values for parameters in event: Move_monte_charge
		Integer Value = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));

		//Init values for parameters in event: Open_barriere_monte_charge
		Integer Value = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));

		//Init values for parameters in event: Open_barriere_etage
		Integer Value = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));

		while (true){
			switch (rnd.nextInt(n)){
			case 0: if (machine.evt_SPAWN_VEHICULE_VOIE_1.guard_SPAWN_VEHICULE_VOIE_1(vehicule_type))
				machine.evt_SPAWN_VEHICULE_VOIE_1.run_SPAWN_VEHICULE_VOIE_1(vehicule_type); break;
			case 1: if (machine.evt_SPAWN_VEHICULE_VOIE_2.guard_SPAWN_VEHICULE_VOIE_2(vehicule_type))
				machine.evt_SPAWN_VEHICULE_VOIE_2.run_SPAWN_VEHICULE_VOIE_2(vehicule_type); break;
			case 2: if (machine.evt_EVACUATE_VOIE_1.guard_EVACUATE_VOIE_1())
				machine.evt_EVACUATE_VOIE_1.run_EVACUATE_VOIE_1(); break;
			case 3: if (machine.evt_EVACUATE_VOIE_2.guard_EVACUATE_VOIE_2())
				machine.evt_EVACUATE_VOIE_2.run_EVACUATE_VOIE_2(); break;
			case 4: if (machine.evt_DISPAWN_VEHICULE_VOIE_1.guard_DISPAWN_VEHICULE_VOIE_1())
				machine.evt_DISPAWN_VEHICULE_VOIE_1.run_DISPAWN_VEHICULE_VOIE_1(); break;
			case 5: if (machine.evt_DISPAWN_VEHICULE_VOIE_2.guard_DISPAWN_VEHICULE_VOIE_2())
				machine.evt_DISPAWN_VEHICULE_VOIE_2.run_DISPAWN_VEHICULE_VOIE_2(); break;
			case 6: if (machine.evt_VOIE_1_to_monte_charge_rangee1.guard_VOIE_1_to_monte_charge_rangee1())
				machine.evt_VOIE_1_to_monte_charge_rangee1.run_VOIE_1_to_monte_charge_rangee1(); break;
			case 7: if (machine.evt_VOIE_1_to_monte_charge_rangee2.guard_VOIE_1_to_monte_charge_rangee2())
				machine.evt_VOIE_1_to_monte_charge_rangee2.run_VOIE_1_to_monte_charge_rangee2(); break;
			case 8: if (machine.evt_VOIE_2_to_monte_charge_rangee1.guard_VOIE_2_to_monte_charge_rangee1())
				machine.evt_VOIE_2_to_monte_charge_rangee1.run_VOIE_2_to_monte_charge_rangee1(); break;
			case 9: if (machine.evt_VOIE_2_to_monte_charge_rangee2.guard_VOIE_2_to_monte_charge_rangee2())
				machine.evt_VOIE_2_to_monte_charge_rangee2.run_VOIE_2_to_monte_charge_rangee2(); break;
			case 10: if (machine.evt_HANDLE_BORNE_1.guard_HANDLE_BORNE_1())
				machine.evt_HANDLE_BORNE_1.run_HANDLE_BORNE_1(); break;
			case 11: if (machine.evt_HANDLE_BORNE_2.guard_HANDLE_BORNE_2())
				machine.evt_HANDLE_BORNE_2.run_HANDLE_BORNE_2(); break;
			case 12: if (machine.evt_Move_monte_charge.guard_Move_monte_charge(Value))
				machine.evt_Move_monte_charge.run_Move_monte_charge(Value); break;
			case 13: if (machine.evt_Monte_charge_rangee1_to_etage.guard_Monte_charge_rangee1_to_etage())
				machine.evt_Monte_charge_rangee1_to_etage.run_Monte_charge_rangee1_to_etage(); break;
			case 14: if (machine.evt_Monte_charge_rangee2_to_etage.guard_Monte_charge_rangee2_to_etage())
				machine.evt_Monte_charge_rangee2_to_etage.run_Monte_charge_rangee2_to_etage(); break;
			case 15: if (machine.evt_Open_barriere_monte_charge.guard_Open_barriere_monte_charge(Value))
				machine.evt_Open_barriere_monte_charge.run_Open_barriere_monte_charge(Value); break;
			case 16: if (machine.evt_Open_barriere_etage.guard_Open_barriere_etage(Value))
				machine.evt_Open_barriere_etage.run_Open_barriere_etage(Value); break;
			case 17: if (machine.evt_Open_barriere_acces_monte_charge.guard_Open_barriere_acces_monte_charge())
				machine.evt_Open_barriere_acces_monte_charge.run_Open_barriere_acces_monte_charge(); break;
			}
			vehicule_type = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));
			vehicule_type = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));
			Value = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));
			Value = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));
			Value = Utilities.someVal(new BSet<Integer>((new Enumerated(1,Utilities.max_integer))));
		}
	}

}
