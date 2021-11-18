class personaje {
  //---------------CAMPOS----------------
  int x, y, vel, movAr, movAb, tamx, tamy;
  boolean mAr, mAb;
  PImage aladdin;
  //---------------CONSTRUCTOR----------------
  personaje() {

    aladdin = loadImage("personajes_aladdin.png");
    x = 200;
    y = 250;
    tamx=120;
    tamy=100;
    movAr = 120;
    movAb = 120;
  }//---------------METODOS----------------
  //---------------UPDATE----------------
  void update() {
    if (y > 371) {
      y = 370;
    } else if (y < 131) {
      y = 131;
    }
  }
  void dibujar() {  
    //---------------VIDAS----------------
    if (juego.vida == 3) { 
      image(aladdin, x, y, tamx, tamy);
    }
    if (juego.vida == 2) {
      tamx--;
      tamy--;
      if (tamx <= 110 && tamy <= 90) {
        tamx = 120;
        tamy = 100;
      }
      image(aladdin, x, y, tamx, tamy);
    } else if (juego.vida == 1) {
      tamx--;
      tamy--;
      if (tamx <= 115 && tamy <= 95) {
        tamx = 120;
        tamy = 100;
      }
      image(aladdin, x, y, tamx, tamy);
    } else if (juego.vida == 0) {
      tamx--;
      tamy--;
      if (tamx <= 118 && tamy <= 98) {
        tamx = 120;
        tamy = 100;
      }
      image(aladdin, x, y, tamx, tamy);
    }
  }  
  //---------------MOVIMIENTO----------------
  void move(int k) {
    if (k == UP) {
      y = y - movAr;
    } else if (k == DOWN) {
      y= y + movAb;
    }
  }//---------------RETURN----------------
  float obx() {
    return x;
  }
  float oby() {
    return y;
  }
  float obtamx() {
    return tamx;
  }
  float obtamy() {
    return tamy;
  }
}
