class fondo {
  int x, vel;
  PImage fondo;  
  fondo() {
    x=0;
    fondo= loadImage("fondo2.png");
  }
  void update(int vel) {
    x = x - vel;
  }
  void dibujar() {
    for (int i = 0; i < 5400; i = i + 900) {
      image(fondo, x+i, 0, width+100, height);
    }
    // image win...
  }
}
