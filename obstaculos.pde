class obstaculos {
  float x, x1, x2, nro1, nro2, nro3;
  float y [] = new float[3];
  PImage obst[] = new PImage [4];
  //Constructor
  obstaculos() {
    for (int i = 1; i < obst.length; i++ ) {
      obst[i] = loadImage("obstaculo_" + i + ".png");
    }
    x = random(30, width); 
    x1 = random(30, width);
    x2 = random(30, width);
    nro1 = random(1, 3);
    nro2 = random(1, 3);
    nro3 = random(1, 3);
    y[0] = 130;
    y[1] = 250;
    y[2] = 370;
  }
  //Metodos
  void update (int vel) {
    x = x - vel;
    x1 = x1 - vel;
    x2 = x2 - vel;
    reciclar();
  }
  void dibujar() {
    image(obst[1], x, y[int (nro1)], 50, 90);
    image(obst[2], x1, y[int (nro2)], 50, 90);
    image(obst[3], x2, y[int (nro3)]+30, 60, 50);
  }
  void reciclar() {
    if (x < 0 && x1 < 0 && x2 < 0) {
      x = random(810, 900);
      x1 = random(810, 1500);
      x2 = random(810, 2000);
      nro1 = random(0, 3);
      nro2 = random(0, 3);
      nro3 = random(0, 3);
    }
  }
}
