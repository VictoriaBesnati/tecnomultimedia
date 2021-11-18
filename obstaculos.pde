class Obstaculos {
  //---------------CAMPOS----------------
  float x, vel, y;
  PImage obst; 
  //---------------CONSTRUCTOR----------------
  Obstaculos(int vel1) {
    obst = loadImage("obstaculo_1.png");
    x = random(810, 1500);  
    y = random(130, 370); 
    vel = vel1;
  }//---------------METODOS----------------
  //---------------UPDATE----------------
  void update (int vel1) {
    vel = vel1;
    //vel = 10;
    x = x - vel;
    reciclar();
  }//---------------DIBUJAR----------------
  void dibujar() {
    image(obst, x, y, 50, 90);
  }//---------------RECICLAR----------------
  void reciclar() {
    if (x < 0) {
      x = random(810, 1500);
      y = random(130, 370);
    }
  }//---------------REINICIO----------------
  void reinicio() {
    x = random(810, 1500);    
    y = random(130, 370); 
    //vel = 10;
  }//---------------RETURN----------------
  float obtenerX() {
    return x;
  }
  float obtenerY() {
    return y;
  }
}
