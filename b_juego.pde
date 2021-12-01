class Juego {
  //size( 550, 620 );
  int c = 6, c2 = 10, tam;
  int vidas, puntos;
  //-----------
  Piedra[] piedra= new Piedra[c2];
  Lingotes[] lingotes = new Lingotes[c];
  Bolsa bolsa;

  Juego() {
    //-----------
    bolsa = new Bolsa();
    for ( int i = 0; i < lingotes.length; i++ ) { 
      lingotes[i] = new Lingotes();
    }
    for ( int i = 0; i < piedra.length; i++ ) {
      piedra[i] = new Piedra();
    }
    //-----------
    vidas = 3;
    puntos = 0;
  }
  //----------- COLISION LINGOTES -----------
  void lingotes( Lingotes[] l ) { 
    for ( int i = 0; i < l.length; i++ ) { 
      if (l[i].obtenerX() > bolsa.oposX() - bolsa.tamxo()/2 && l[i].obtenerX() < bolsa.oposX() + bolsa.tamxo()/2 && l[i].obtenerY()> bolsa.oy() - bolsa.tamyo()/2 && l[i].obtenerY()< bolsa.oy() + bolsa.tamyo()/2 ) { 
        //-----------
        l[i].reiniciar();
        tam++;
        bolsa.update(tam);
        //-----------
        puntos = puntos + 10; 
        //-----------
        colision2.play();
        colision2.amp(0.5);
      }
    }
  }//----------- COLISION PIEDRAS -----------
  void piedra( Piedra[] p) { 
    for ( int i = 0; i < p.length; i++ ) { 
      if (p[i].obtenerX() > bolsa.oposX() - bolsa.tamxo()/2 && p[i].obtenerX() < bolsa.oposX() + bolsa.tamxo()/2 && p[i].obtenerY() > bolsa.oy() - bolsa.tamyo()/2 && p[i].obtenerY() < bolsa.oy() + bolsa.tamyo()/2) {   
        p[i].reiniciar(); 
        tam = tam - 2;
        bolsa.update(tam);
        //-----------
        vidas =  vidas - 1;
        puntos = puntos - 5;
        //-----------
        colision1.play();
        colision2.amp(0.5);
      }
    }
  }
  //----------- DIBUJAR -----------
  void dibujar() { 
    for ( int i = 0; i < c2; i++ ) {  
      piedra[i].dibujar();
    }
    for ( int i = 0; i < c; i++ ) {  
      lingotes[i].dibujar();
    }
    bolsa.dibujar();
  }
  //----------- UPDATE -----------
  void actualizar() {
    for ( int i = 0; i < piedra.length; i++ ) {  
      piedra[i].actualizar();
    }
    for ( int i = 0; i < lingotes.length; i++ ) {  
      lingotes[i].actualizar();
    }// ----------- COLISIONES -----------
    lingotes(lingotes);
    piedra(piedra);
  }//----------- REINICIAR ----------
  void reinicio() {
    vidas = 3;
    puntos = 0;
    tam = 0;
    //-----------
    for ( int i = 0; i < piedra.length; i++ ) {  
      piedra[i].reiniciar();
    }
    for ( int i = 0; i < lingotes.length; i++ ) {  
      lingotes[i].reiniciar();
    }
    bolsa.reinicio();
  }
}
