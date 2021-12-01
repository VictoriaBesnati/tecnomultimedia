class Texto {
  int posy, ID1;
  String [] texto;
  PFont fuente, fuente1;
  PImage imagenes [] =new PImage [24];
  PImage vida, novida, paw1, paw2, aranazo, aranazo2;
  Texto() {
    //----------- CARGA ----------- 
    texto = loadStrings("texto.txt");
    fuente = loadFont("SitkaDisplay-48.vlw");
    fuente1 = loadFont("VinerHandITC-48.vlw");
    //-----------
    for ( int i = 0; i < imagenes.length; i++ ) {
      imagenes[i] = loadImage ("imagen" + i + ".png");
    }
    vida = loadImage("vida.png");
    novida = loadImage("vida2.png");
    paw1 = loadImage("patita1.png");
    paw2 = loadImage("patita2.png");
    aranazo = loadImage("arañazo.png");
    aranazo2 = loadImage("arañazo2.png");
    //-----------
    posy = height;
  }//----------- MOSTRAR PANTALLAS -----------
  void mostrar(int nro) {
    pushStyle();
    image(imagenes[nro], 0, 0, width, height);
    image(paw2, mouseX, mouseY, 20, 20);
    popStyle();
  }//----------- DIALOGO ----------- 
  void textosd(int nro, int rectx, int recty) { 
    pushStyle();
    rectMode(CENTER);
    fill(222);
    rect(rectx, recty, 340, 80);
    textFont(fuente);
    fill(0);
    textSize(18);
    text(texto[nro], rectx, recty + 65, (rectx+380)/2, (recty+80)/2);
    popStyle();
  }//----------- TITULOS -----------
  void textoDecision(int nro, int x, int y) { 
    pushStyle();
    textAlign(CENTER, CENTER);
    textFont(fuente1, 48);
    fill(255);
    textSize(30);
    text(texto [nro], x, y);
    popStyle();
  }
  void textoDecision2(int nro, int x, int y) { 
    pushStyle();
    textAlign(CENTER, CENTER);
    textFont(fuente1, 48);
    fill(255);
    textSize(22);
    text(texto [nro], x, y);
    popStyle();
  }//----------- BOTONES -----------
  void btn(int nro, int x, int y, int ID) { 
    pushStyle();
    rectMode(CENTER);
    noStroke();
    fill(224, 145, 41);
    rect(x, y, 165, 60, 10);
    fill(255);
    textFont(fuente);
    textSize(26);
    textAlign(CENTER, CENTER);
    text(texto[nro], x+2, y);
    if (detectarbtn(x, y, 135, 60)) {
      image(paw1, mouseX, mouseY, 20, 20);
      ID1 = ID;
    } else {
      image(paw2, mouseX, mouseY, 20, 20);
    }
    popStyle();
  }//----------- BOTONES 2 -----------
  void btn2(int nro, int x, int y, int ID) { 
    pushStyle();
    rectMode(CENTER);
    noStroke();
    fill(224, 145, 41);
    rect(x, y, 230, 60, 10);
    fill(255);
    textFont(fuente);
    textSize(26);
    textAlign(CENTER, CENTER);
    text(texto[nro], x+2, y);
    if (detectarbtn(x, y, 135, 60)) {
      image(paw1, mouseX, mouseY, 20, 20);
      ID1 = ID;
    } else {
      image(paw2, mouseX, mouseY, 20, 20);
    }
    popStyle();
  }
  void update() {
    posy --;
    if (posy < -10) {
      posy = height;
    }
  }//----------- CREDITOS -----------
  void creditos() {
    pushStyle();
    textFont(fuente, 48);
    textSize(24);
    fill(0);
    text(texto [21], 500, posy, 300, height);
    fill(255);
    text(texto [21], 502, posy, 300, height);
    textFont(fuente1, 48);
    textSize(38);
    text(texto [22], 20, 30, 400, height);
    popStyle();
  }//-----------  PUNTOS -----------
  void puntos(int p) {
    pushStyle();
    textSize(28);
    text("Puntos = " + p, 20, 50);
    popStyle();
  }//-----------  VIDAS -----------
  void vida(int nrov) {
    pushStyle();
    fill(224, 145, 41);
    rectMode(CENTER);
    stroke(255);
    strokeWeight(5);
    rect(width-100, 50, 150, 60, 5);
    imageMode(CENTER);
    if (nrov == 3) {
      image(vida, width-60, 50, 20, 40);
      image(vida, width-100, 50, 20, 40);
      image(vida, width-140, 50, 20, 40);
    }
    if (nrov == 2) {
      image(novida, width-60, 50, 20, 40);
      image(vida, width-100, 50, 20, 40);
      image(vida, width-140, 50, 20, 40);
      image(aranazo, width-100, height-100, 300, 250);
    } 
    if (nrov == 1) {
      image(novida, width-60, 50, 20, 40);
      image(novida, width-100, 50, 20, 40);
      image(vida, width-140, 50, 20, 40);
      image(aranazo, width-100, height-100, 250, 200);
      image(aranazo2, 100, 70, 200, 250);
    } 
    if (nrov <= 0) {
      image(novida, width-60, 50, 20, 40);
      image(novida, width-100, 50, 20, 40);
      image(novida, width-140, 50, 20, 40);
      image(aranazo, width-100, height-100, 200, 150);
      image(aranazo, width/2, height/2, 200, 150);
      image(aranazo, 100, 70, 200, 150);
    }
    popStyle();
  }
  int ID2() {
    return ID1;
  }
  boolean detectarbtn(int x1, int y1, int tamx, int tamy) {
    if (mouseX> x1 - tamx/2 && mouseX < x1 + tamx/2 && mouseY > y1 - tamy/2 && mouseY < y1 + tamy/2) {
      return true;
    } else {
      return false;
    }
  }
}
