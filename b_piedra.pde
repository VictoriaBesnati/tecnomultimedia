class Piedra {
  float x, y;
  float tam;
  float vel;
  PImage piedra;
  Piedra() { 
    //-----------
    x = random( -20, width );
    y = random (-50, -200);
    tam = random( 40, 65 );
    vel = random( 1, 3 );
    //-----------
    piedra = loadImage("piedra.png");  
    piedra.resize( int(tam), int(tam) );
  }
  //----------- UPDATE -----------
  void actualizar() {
    y = y + vel;
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  //----------- DIBUJAR -----------
  void dibujar() {
    pushStyle();
    imageMode(CENTER);
    image( piedra, x, y );
    popStyle();
  }//----------- RECICLAR -----------
  void reciclar() {
    if (y > height) {
      x = random( width );
      y = -100;
      tam = random( 40, 65 );
      vel = random( 1, 3 );
    }
  }//----------- REINICIAR -----------
  void reiniciar() {
    x = random( -20, width );
    y = -100;
  }
  //----------- RETURNS -----------
  float obtenerX() {
    return x;
  }
  float obtenerY() {
    return y;
  }
}
