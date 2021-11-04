class personaje {
  // Campos
  int x, y, vel, movAr, movAb;
  boolean mAr, mAb;
  int tamx, tamy;
  color col;
  int vidas [] = new int [3];
  PImage aladdin;

  //Constructor
  personaje() {

    aladdin = loadImage("personajes_aladdin.png");
    x = 200;
    y = 250;
    tamx=120;
    tamy=100;
    movAr = 120;
    movAb = 120;
  }
  void update() {

    if (y > 371) {
      y = 370;
    } else if (y < 131) {
      y = 131;
    }
  }
  void dibujar() {   
    image(aladdin, x, y, tamx, tamy);
  }
  void move(int k) {

    if (k == UP) {
      y = y - movAr;
    } else if (k == DOWN) {
      y= y + movAb;
    }
  }
}
