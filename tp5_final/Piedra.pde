class Piedra {
  float x, y, tam, vel;
  PImage piedra;
  Piedra() {
    x = random(tam, width);
    y = -20;
    tam = random(30, 60);
    vel = random(1, 5);
    piedra = loadImage( "piedra.png" );
  }
  void update() {
    y = y + vel;
    piedra.resize( int(tam), int(tam) );
    if ( y > height + tam/2 ) {
      reciclar();
    }
  }
  void dibujar() {
    image(piedra, x, y);
  }
  void reciclar() {
    x = random(tam, width);
    y = -20;
    tam = random(30, 60);
    vel = random(1, 5);
    piedra.resize( int(tam), int(tam) );
  }
}
