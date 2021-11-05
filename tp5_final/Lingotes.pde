class Lingotes {
  float x, y, tam, vel, cant;
  PImage lingotes;

  Lingotes() {
    x = random(tam, width);
    y = -20;
    tam = random(40, 60);
    vel = random(1, 5);
    lingotes = loadImage( "lingotes.png" );
  }

  void update() {
    lingotes.resize( int(tam), int(tam) );
    y = y +vel;
    if (y > height + tam/2) {
      reciclar();
    }
  }

  void dibujar() {
    image(lingotes, x, y, tam, tam);
  }

  void reciclar() {
    //lingotes.resize( int(tam), int(tam) );
    x = random(tam, width);
    y = -tam-10;
    tam = random( 40, 60 );
    vel = random( 1, 3 );
  }
}
