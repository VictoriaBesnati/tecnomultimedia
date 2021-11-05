class Bolsa {
  float t, posx, posy, puntos;
  int tam;
  PImage bolsa;

  Bolsa(float t_) {
    t = t_;
    tam = 100;
    posy = height-70;
    bolsa = loadImage( "bolsa.png" );
    bolsa.resize( int(tam), int(tam) );
  }
  void dibujar() {
    posx = mouseX;
    pushStyle();
    imageMode(CENTER);
    image(bolsa, posx, posy);
    popStyle();
  }
  void puntos() {
    textSize (20);
    fill(255); 
    text("  Lingotes: "+puntos, 50, 30);
    puntos=0;
  }


  //COLICIONES lingotes
  void lingotes( Lingotes[] l ) {
    for ( int i = 0; i < l.length; i++ ) {
      float d = dist( posx, posy-t/10, l[i].x, l[i].y );
      if ( d < t/5 ) {
        t += l[i].tam;        
        puntos = puntos + 10;
        l[i].reciclar();
      }
    }
  }
  //COLICIONES piedras
  void piedra( Piedra[] p) {
    for ( int i = 0; i < p.length; i++ ) {
      float d = dist( posx, posy-t/10, p[i].x, p[i].y );
      if ( d < t/5 ) {  
        t += p[i].tam;  
        p[i].reciclar();
        puntos = puntos - 10;
      }
    }
  }
// boolean de puntos
  boolean pganar () { // ganar
    if (puntos >= 100) {
      return true;
    } else {
      return false;
    }
  }
  boolean pperder () { // perder
    if (puntos <= 50) {
      return true;
    } else {
      return false;
    }
  }
}
