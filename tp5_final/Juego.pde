class Juego {
  int c = 8, c2 = 6, estado;
  PImage [] fondo = new PImage [4];
  PFont fuente;

  Bolsa bolsa;
  Piedra[] piedra= new Piedra[c2];
  Lingotes[] lingotes = new Lingotes[c];

  Juego() {
    estado = 0;
    bolsa = new Bolsa (width/8);
    
    for ( int i = 0; i < lingotes.length; i++ ) {
      lingotes[i] = new Lingotes();
    }
    for ( int i = 0; i < piedra.length; i++ ) {
      piedra[i] = new Piedra();
    }
    for (int i = 0; i < fondo.length; i++) {
      fondo[i] = loadImage("fondo"+i+".png");
    }

    fuente = loadFont("VinerHandITC-48.vlw");
    textFont(fuente, 48);
    textSize(22);
    fill(255);
  }
  void texto (String txt, int x, int y, int tam, color col) {
    textFont(fuente, 48);
    textSize(tam);
    fill(col);
    text(txt, x, y, tam);
  }

  void dibujar() {
    if (estado == 0) { // estado inicio
      image(fondo[1], 0, 0);
      texto("      Atrapa los lingotes de oro \n  Presiona 'barra espaciadora' para jugar", 30, 200, 22, 255);
    }
    if (estado == 1) { // estado jugar
      image(fondo[0], 0, 0);   
      for ( int i = 0; i < c; i++ ) {  
        lingotes[i].dibujar();
      }
      for ( int i = 0; i < c2; i++ ) {  
        piedra[i].dibujar();
      }
      bolsa.dibujar();  
      //puntos??
    }
    if ( estado == 2 ) { // estado perder
      image(fondo[2], 0, 0);
      texto("      Perdiste! :(\n   Presiona 'barra espaciadora' para volver a jugar", 120, 200, 22, 255);
    }

    if (estado == 3 ) { // estado ganar
      image(fondo[3], 0, 0);
      textSize(30);
      fill(255);
      text("      Ganaste, ¡HONORABUENA!", 100, 200, 22, 255);
    }
  }

  void update() {
    if ( estado == 1 ) { // estado jugar
      for ( int i = 0; i < piedra.length; i++ ) {  
        piedra[i].update();
      }
      for ( int i = 0; i < lingotes.length; i++ ) {  
        lingotes[i].update();
      }
      //Colisiones
      bolsa.lingotes(lingotes);
      bolsa.piedra(piedra);
      
      if(bolsa.pganar() == true){
        estado = 3;
      } else if (bolsa.pperder() == true){
        estado = 2;
      }
    }
  }
  void teclas() {
    if ( key == ' ' ) {  
      if ( estado == 0) {
        estado = 1;
      }
    }
  }
}
