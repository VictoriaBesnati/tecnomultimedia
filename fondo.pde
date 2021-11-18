class fondo {
  //---------------CAMPOS----------------
  int x, x2, x3, vel, tamx, c;
  PImage fondo; 
  PImage [] a = new PImage[6];
  //---------------CONSTRUCTOR----------------
  fondo(int vel1) {
    vel = vel1;
    tamx = 1000;
    x = 0;
    x2 = tamx;
    x3 = 0;
    c = 0;
    fondo= loadImage("fondo2.png");
    for (int i = 0; i < a.length; i++) {
      a[i] = loadImage("alf_" + i + ".png");
    }
  }//---------------METODOS----------------
  // -------------------MAPA DISTANCIA-------------------
  void distancia() {   
    pushStyle();
    float m = map(x3, 0, 15000, 100, width-100);
    noStroke();
    fill(#1d117d);
    rectMode(CENTER);
    rect(width/2, height-100, 620, 20, 5);
    rectMode(CORNER);
    fill(#f7be5b);
    rect(100, height-105, m-100, 10, 5);
    noStroke();
    imageMode(CENTER);
    image(a[c], m, height-100, 40, 40);
    popStyle();
  }// -------------------UPDATE-------------------
  void update(int vel1) {
    if (juego.estado == ("jugar")) {
      c++;
      if (c == 6) {
        c = 0;
      }
      vel = vel1;
      x = x - vel;
      x2 = x2 - vel;
      x3 = x3 + vel;
      if (x2 == 0) {
        x = tamx;
      } else if (x == 0) {
        x2 = tamx;
      }
    }
  }// -------------------DIBUJAR-------------------
  void dibujar() {

    if (juego.vida == 3) {
      image(fondo, x, 0, tamx, height);
      image(fondo, x2, 0, tamx, height);
    }
    if (juego.vida == 2) {
      pushStyle();
      image(fondo, x, 0, tamx, height);
      image(fondo, x2, 0, tamx, height);
      filter(POSTERIZE, 10);
      popStyle();
    }
    if (juego.vida == 1) {
      pushStyle();
      image(fondo, x, 0, tamx, height);
      image(fondo, x2, 0, tamx, height);
      filter(POSTERIZE, 6);
      popStyle();
    }
    if (juego.vida <= 0) {
      pushStyle();
      image(fondo, x, 0, tamx, height);
      image(fondo, x2, 0, tamx, height);
      filter(POSTERIZE, 4);
      popStyle();
    }
  }//---------------RECINICIO----------------
  void reinicio() {
    tamx = 1000;
    x = 0;
    x2 = tamx;
    x3 = 0;
    c = 0;
  }
  // -------------------RETURN-------------------
  int ox3() {
    return x3;
  }
}
