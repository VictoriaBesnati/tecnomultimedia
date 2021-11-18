class juego {
  // FALTA:
  //-Distintas dificultades
  //-Ordenar codigo
  //-Video
  //---------------CAMPOS----------------
  String estado, niveles;
  PImage inicio, lamp1, lamp2;
  PFont aladdin;
  int c = 4, vida = 3, vel;
  //---------------CLASES----------------
  personaje jugador;
  fondo fondo;
  Obstaculos[] obstaculos = new Obstaculos [c];
  guardias guard;
  //---------------CONSTRUCTOR----------------
  juego() {

    estado = "inicio";
    niveles = "nivel3";
    inicio= loadImage("inicio.png");
    lamp1 = loadImage("lamp1.png");
    lamp2 = loadImage("lamp2.png");
    aladdin = createFont("aladdin.ttf", 40);
    jugador = new personaje();
    fondo = new fondo(vel);
    guard = new guardias();

    for (int i = 0; i < c; i ++) {
      obstaculos [i]  = new Obstaculos(vel);
    }
    sf.loop();
    sf.amp(0.2);
  }
  //---------------METODOS----------------
  //---------------COLISION VIDAS----------------
  void cobstaculos() {
    for ( int i = 0; i < obstaculos.length; i++ ) {
      if (obstaculos[i].obtenerX() > jugador.obx() - jugador.obtamx()/2 && obstaculos[i].obtenerX()< jugador.obx() + jugador.obtamx()/2 && obstaculos[i].obtenerY()> jugador.oby() - jugador.obtamy()/2 && obstaculos[i].obtenerY()< jugador.oby() + jugador.obtamy()/2) {
        spv.play();
        obstaculos[i].reinicio();
        vida =  vida - 1;
      }
    }
    println(vida);
  }//---------------UPDATE----------------
  void update() {
    if (estado.equals( "jugar" )) {
      jugador.update();
      for (int i = 0; i < c; i ++) {
        obstaculos[i].update(vel);
      }
      guard.update();
    }
    if (niveles == ("nivel1")) {
      vel = 10;
      fondo.update(vel);
    }
    if (niveles == ("nivel2")) {
      vel = 20;
      fondo.update(vel);
    }
    if (niveles == ("nivel3")) {
      vel = 40;
      fondo.update(vel);
    }
  }//---------------DIBUJAR----------------
  void dibujar() {
    if (estado.equals( "jugar" )) {
      fondo.dibujar();
      for (int i = 0; i < c; i ++) {
        obstaculos[i].dibujar();
      }
      jugador.dibujar();
      guard.dibujar();
      fondo.distancia();
      //---------------VIDAS----------------
      pushStyle();
      rectMode(CENTER);
      stroke(#f7be5b, 200);
      strokeWeight(6);
      fill(#1d117d, 200);
      rect(width-145, 40, 240, 70, 5);
      popStyle();

      if (vida == 3) {
        image(lamp2, width-100, 10, 50, 50);
        image(lamp2, width-170, 10, 50, 50);
        image(lamp2, width-240, 10, 50, 50);
        guard.cerca();
      } else if (vida == 2) {
        image(lamp2, width-100, 10, 50, 50);
        image(lamp2, width-170, 10, 50, 50);
        image(lamp1, width-240, 28, 50, 30);
        guard.cerca1();
      } else if (vida == 1) {
        image(lamp2, width-100, 10, 50, 50);
        image(lamp1, width-170, 28, 60, 30);
        image(lamp1, width-240, 28, 60, 30);
        guard.cerca2();
      } else if (vida == 0) {
        image(lamp1, width-100, 28, 60, 30);
        image(lamp1, width-170, 28, 60, 30);
        image(lamp1, width-240, 28, 60, 30);
        guard.cerca3();
      }
      if (fondo.ox3() >= 14800) {
        guard.lejos();
      }
      if (fondo.ox3() >= 15000) {
        juego.estado = "ganar";
      }
    }// -------------------PANTALLAS-------------------
    if (estado.equals("inicio")) {
      image(inicio, 0, 0, 800, 600);
      pushStyle();
      rectMode(CENTER);
      stroke(#f7be5b);
      strokeWeight(6);
      fill(#1d117d);
      rect(width/2, height-100, 120, 60);
      textSize(40);
      fill(#f7be5b);
      textFont(aladdin);
      text("Inicio", width/2-44, height-92);
      fill(#1d117d, 140);
      noStroke();
      rect(width/2+2, 350, 600, 180, 5);
      textSize(30);
      textAlign(CENTER);
      fill(#f7be5b, 200);
      text("¡Escapa de los guardias!\n Pero cuidado ¡No te choques a nadie!\n Utiliza las flechas de arriba y abajo para moverte.", width/2, 300);
      popStyle();
      vida = 3;
      fondo.reinicio();
      for (int i = 0; i < c; i ++) {
        obstaculos[i].reinicio();
      }
    }
    if (estado.equals("menu")) {
      pushStyle(); 
      fill(#547f99);
      rect(0, 0, width, height);
      rectMode(CENTER);
      stroke( #f7be5b );
      strokeWeight(6);
      fill(#1d117d);
      rect(width/2, height/3, 170, 60);
      rect(width/2, height/2, 170, 60);
      rect(width/2, height-200, 170, 60);
      fill(0);
      fill(#f7be5b);
      textSize(40);
      textFont(aladdin);
      text("Facil", width/2-30, height/3+12);
      text("Normal", width/2-65, height/2+12);
      text("Dificil", width/2-55, height-200+12);
      popStyle();
    }
    if (estado.equals("perder") ) {
      pushStyle();
      fill(#050577, 10);
      rect(0, 0, width, height);
      imageMode(CENTER);
      image(lamp1, width/2-170, height/2+20, 100, 60);
      image(lamp1, width/2, height/2+20, 100, 60);
      image(lamp1, width/2+170, height/2+20, 100, 60);
      rectMode(CENTER);
      stroke( #f7be5b );
      strokeWeight(6);
      fill( #1d117d  );
      rect(width/2, height-100, 240, 60);
      fill(0);
      textSize(40);
      fill(#f7be5b);
      textFont(aladdin);
      text("Volver al inicio", width/3+30, height-90);
      textSize(80);
      text("Perdiste...", width/3, 150);
      popStyle();
    }
    if (estado.equals("ganar")) {
      pushStyle();
      fill(#6f70c7, 40);
      rect(0, 0, width, height);
      rectMode(CENTER);
      stroke( #f7be5b );
      strokeWeight(6);
      fill( #1d117d  );
      rect(width/2, height-100, 240, 60);
      fill(0);
      textSize(40);
      fill( #f7be5b );
      textFont(aladdin);
      text("Volver al inicio", width/3+30, height-90);
      textSize(80);
      text("Ganaste", width/3, 150);

      if (vida == 3) {
        imageMode(CENTER);
        image(lamp2, width/2-170, height/2, 100, 100);
        image(lamp2, width/2, height/2, 100, 100);
        image(lamp2, width/2+170, height/2, 100, 100);
      }
      if (vida == 2) {
        imageMode(CENTER);
        image(lamp1, width/2-170, height/2+20, 100, 60);
        image(lamp2, width/2, height/2, 100, 100);
        image(lamp2, width/2+170, height/2, 100, 100);
      }
      if (vida == 1) {
        imageMode(CENTER);
        image(lamp1, width/2-170, height/2+20, 100, 80);
        image(lamp1, width/2, height/2+20, 100, 80);
        image(lamp2, width/2+170, height/2, 100, 100);
      }
      popStyle();
    }
  }//---------------TECLADO----------------
  void teclado(int k) {
    jugador.move(k);
    guard.move(k);
  }
  void tecladoR(int k) {
    if (k == ENTER) {
      estado = "inicio";
    }
  }
  //---------------BOTONES----------------
  void click() {
    if ( estado.equals("inicio") && mouseX> width/2 - 240/2 && mouseX < width/2 + 240/2 && mouseY > height-100 - 60/2 && mouseY < height-100 + 60/22) {
      estado = "menu";
    }
    if ( estado.equals("menu") && mouseX> width/2 - 170/2 && mouseX < width/2 + 120/2 && mouseY > height/3 - 60/2 && mouseY < height/3 + 60/22) {
      niveles = "nivel1";
      estado = "jugar";
    }
    if ( estado.equals("menu") && mouseX> width/2 - 170/2 && mouseX < width/2 + 120/2 && mouseY > height/2 - 60/2 && mouseY < height/2 + 60/22) {
      niveles = "nivel2";
      estado = "jugar";
    }
    if ( estado.equals("menu") && mouseX> width/2 - 170/2 && mouseX < width/2 + 120/2 && mouseY > height-200 - 60/2 && mouseY < height-200 + 60/22) {
      niveles = "nivel3";
      estado = "jugar";
    }
    if ( estado.equals("perder") && mouseX> width/2 - 120/2 && mouseX < width/2 + 120/2 && mouseY > height-100 - 60/2 && mouseY < height-100 + 60/22) {
      estado = "inicio";
    }
    if ( estado.equals("ganar") && mouseX> width/2 - 120/2 && mouseX < width/2 + 120/2 && mouseY > height-100 - 60/2 && mouseY < height-100 + 60/22) {
      estado = "inicio";
    }
  }
}
