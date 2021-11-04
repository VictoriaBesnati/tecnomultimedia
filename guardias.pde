class guardias {
  PImage guardias;
  int x, y, vel, movAr, movAb;

  guardias() {
    guardias = loadImage("guardias.png");
    x=0;
    y=220;
    movAr = 120;
    movAb = 120;
  }
  void dibujar() {

    image(guardias, x, y, 140, 120);
  }
  void update() {

    if (y > 320) {
      y = 30;
    } else if (y < 120) {
      y = 131;
    }
  }

  void move(int k) {
    if (k == UP) {
      y = y - movAr;
    } else if (k == DOWN) {
      y = y + movAb;
    }
  }
}
