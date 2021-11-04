class juego {
  int estado=0;
  PImage inicio;
  PFont aladdin;
  personaje jugador;
  fondo fondo;
  obstaculos obs;
  guardias guard;
  //enemigo

  juego() {

    estado = 0;
    inicio= loadImage("inicio.png");
    jugador = new personaje();
    fondo = new fondo();
    obs = new obstaculos();
    guard = new guardias();
    //enemigos
  }
  void update() {
    if (estado == 1) {
      jugador.update();
      fondo.update(10);
      obs.update(10);
      guard.update();
    }
  }
  void dibujar() {
    if (estado == 1) {
      fondo.dibujar();
      obs.dibujar();
      jugador.dibujar();
      guard.dibujar();
    }


    // -------------------Pantallas-------------------
    if (estado == 0) {
      image(inicio, 0, 0, 800, 600);
      pushStyle();
      rectMode(CENTER);
      stroke(#953d68);
      strokeWeight(4);
      fill(#624977);
      rect(width/2, height-100, 120, 60);
      fill(0);

      textSize(20);
      text("INICIO", width/2-28, height-92);
      popStyle();
      //menu con distintas dificultades donde varia la velocidad.
    }
  }

  void teclado(int k) {
    jugador.move(k);
    guard.move(k);
  }

  void click() {

    if (estado== 0 && mouseX> width/2 - 120/2 && mouseX < width/2 + 120/2 && mouseY > height-100 - 60/2 && mouseY < height-100 + 60/22) {
      estado=1;
    }
  }
}
