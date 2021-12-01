class Bolsa {
  int tamx, tamy, posX, y;
  PImage bolsa;
  //-----------
  Bolsa() {
    posX = width/2;
    y = height;
    tamx = 90; 
    tamy = 90; 
    //-----------
    bolsa = loadImage( "bolsa.png" );
  }
  //----------- DIBUJAR -----------
  void dibujar() {
    posX = mouseX;
    pushStyle();
    imageMode(CENTER);
    bolsa.resize(tamx, tamy);
    image(bolsa, posX, y);
    popStyle();
  }//----------- UPDATE TAMAÑO -----------
  void update(int tam) {
    tamx = tamx + tam;
    tamy = tamy + tam;
  }
  //----------- RETURNS -----------
  int tamxo() {
    return tamx;
  }
  int tamyo() {
    return tamy;
  }
  int oposX() {
    return posX;
  }
  int oy() {
    return y;
  }
}
