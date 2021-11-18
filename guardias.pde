class guardias {
  //---------------CAMPOS----------------
  PImage guardias;
  int x, y, movAr, movAb;
  // -------------------CONSTRUCTOR-------------------
  guardias() {
    guardias = loadImage("guardias.png");
    x=0;
    y=250;
    movAr = 120;
    movAb = 120;
  }
  // -------------------METODOS-------------------
  // -------------------DIBUJAR-------------------  
  void dibujar() {
    image(guardias, x, y, 160, 100);
  }// -------------------UPDATE-------------------
  void update() {
    if (y > 371) {
      y = 370;
    } else if (y < 131) {
      y = 131;
    }
  }// -------------------MOVIMIENTO-------------------
  void move(int k) {

    if (k == UP) {
      y = y - movAr;
    } else if (k == DOWN) {
      y = y + movAb;
    }
  }// -------------------DISTANCIA-------------------
  void cerca() {
    x = 0;
  }
  void cerca1() {
    x ++;
    if (x >= 15) {
      x = 15;
    }
  }
  void cerca2() {
    x ++;
    if (x >= 40) {
      x = 40;
    }
  }
  void cerca3() {
    x = x + 4;
    if (x >= 150) {
      juego.estado = "perder";
    }
  }
  void lejos() {
    x = x - 4;
  }
}
