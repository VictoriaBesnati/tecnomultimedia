class Lingotes {
  float x, y, tam, vel;
  PImage lingotes;
  Lingotes() {  
    //-----------
    x = random( -40, width );
    y = random (-50, -200);;
    tam = random( 40, 60 );
    vel = random( 1, 4 );
    //-----------
    lingotes = loadImage( "lingotes.png" ); 
    lingotes.resize(int(tam), int(tam));
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
    image( lingotes, x, y );
    popStyle();
  }
  //----------- RECICLAR -----------
  void reciclar() {
    if (y > height) {
      x = random( width );
      y = -100;
      tam = random( 40, 60);
      vel = random( 1, 4 );
    }
  }//----------- REINICIAR ----------
  void reiniciar() {
    x = random( -40, width );
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
