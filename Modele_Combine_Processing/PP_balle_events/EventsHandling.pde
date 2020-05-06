void init_events() {
  
    pballe = gauche;
    num_event = 2;     // aucun evenement selectionne
    
    boutonPing.maj_couleur(ping.guard_ping());
    boutonPing.affiche();

    boutonPong.maj_couleur(pong.guard_pong());
    boutonPong.affiche();

}

void maj_events() {

    boutonPing.maj_souris();
    boutonPong.maj_souris();    
  
    boutonPing.maj_couleur(ping.guard_ping());
    boutonPing.affiche();

    boutonPong.maj_couleur(pong.guard_pong());
    boutonPong.affiche();

}

void event_action(int num_event) {
  
  switch (num_event) {
    case 0: 
      ping.run_ping();
      break;
    case 1:
      pong.run_pong();
      break;
  }
  
}
     