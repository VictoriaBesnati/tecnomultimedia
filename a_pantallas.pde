class Pantallas {
  String estado;
  int ID;
  Texto texto;
  //-----------
  Pantallas() {
    estado = "inicio";
    //-----------
    texto = new Texto();
  }
  void dibujar(Juego j) {
    //----------- PANTALLAS ----------- 
    if (estado == "inicio") {//----------- Inicio 
      texto.mostrar(0);
      mf.loop();
      mf.amp(0.2);
      texto.btn(1, 490, 180, 1);//Boton 1 = INICIAR --> presentacion
      texto.btn(2, 680, 180, 2);//Boton 2 = CREDITOS --> creditos
    } else if (estado == "presentacion") {//----------- Presentacion
      texto.mostrar(1);
      texto.textosd(0, 200, 290);
      texto.btn( 28, width-100, height-50, 3); // Boton 3 = SIGUIENTE --> aventuras
    } else if (estado == "aventuras") {//-----------Elegir Aventura
      texto.mostrar(2);
      texto.textoDecision(5, width/2, 45);
    } else if (estado == "ladrones") {// ----------- Ladrones
      texto.mostrar(10);
      texto.textosd(13, 200, 290);
      texto.btn(28, width-100, height-50, 12);//Boton 12  = SIGUIENTE --> lucha
    } else if (estado == "lucha") {// ----------- Lucha
      texto.mostrar(11);
      texto.textosd(14, 200, 290);
      texto.btn(28, width-100, height-50, 13);//Boton 13  = SIGUIENTE --> iniciojuego
      // --------------------------------- JUEGO ---------------------------------
    } else if (estado == "iniciojuego") {// ----------- Pantalla inicial juego
      surface.setSize(550, 620);
      j.reinicio();
      ganar.stop();
      perder.stop();
      texto.mostrar(20);
      texto.textoDecision(31, width/2, 100);
      texto.textoDecision(35, width/2, 160);
      texto.btn(29, width/2, height-50, 24); //Boton 24  = JUGAR --> jugar
    } else if (estado == "jugar") {
      surface.setSize(550, 620);
      texto.mostrar(19);
      j.dibujar();
      j.actualizar();
      texto.vida(j.vidas);
      texto.puntos(j.puntos);
      if (j.puntos >= 100) {
        estado = "ganar";
        ganar.play();
      } else if (j.vidas <= 0) {
        estado = "perder";
        perder.play();
      }
    } else if (estado == "ganar") {
      surface.setSize(550, 620);
      texto.mostrar(22);
      texto.textoDecision(33, width/2, height/2);
      texto.btn(36, 100, height-50, 25);//Boton 25  = Reiniciar --> iniciojuego
      texto.btn2(37, width-150, height-50, 26);////Boton 26  = Continuar Aventura --> oro
    } else if (estado == "perder") {
      surface.setSize(550, 620);
      texto.mostrar(21);
      texto.textoDecision2(32, width/2, height/2-50);
      texto.textoDecision2(38, width/2, height/2);
      texto.textoDecision2(39, width/2, height/2+50);
      texto.btn(36, 100, height-50, 27);//Boton 27  = Reiniciar --> iniciojuego
      texto.btn2(37, width-150, height-50, 28);////Boton 28  = Continuar Aventura --> finalperder
      //---------------------------------------------------------------------------
    } else if (estado == "finalperder") {
      surface.setSize(800, 450);
      perder.stop();
      texto.mostrar(23);
      texto.textosd(34, 200, 290);
      texto.btn(28, width-100, height-50, 23);//Boton 23  = SIGUIENTE --> creditos
    } else if (estado == "oro") { 
      surface.setSize(800, 450);
      ganar.stop();
      texto.mostrar(18);
      texto.textoDecision(25, 340, 80);
      texto.btn(23, width-250, height-50, 14 );//Boton 14 = SI --> joven
      texto.btn(24, width/3, height-50, 15 );//Boton 15 = NO --> quedarseoro
    } else if (estado == "quedarseoro") { 
      texto.mostrar(15);
      texto.btn(28, width-100, height-50, 16);//Boton 16  = SIGUIENTE --> creditos
      texto.textosd(15, 200, 290);
    } else if (estado == "joven") {//----------- Se encuentra  a la joven
      texto.mostrar(12);
      texto.textosd(16, 200, 290);
      texto.btn(28, width-100, height-50, 17);//Boton 17  = SIGUIENTE -->acompañarjoven      decicion
    } else if (estado == "acompañarjoven") {//-----------Decicion de acompañar
      texto.mostrar(13);
      texto.textoDecision(17, width/2, 80);
      texto.btn(23, width-250, height-50, 18 ); //Boton 18 = SI --> acompañar
      texto.btn(24, width/3, height-50, 19 ); //Boton 19 = NO --> no acompañar
    } else if (estado == "acompañar") {//-----------Si acompañar
      texto.mostrar(14);
      texto.textosd(18, 200, 290);
      texto.btn(28, width-100, height-50, 20);//Boton 20  = SIGUIENTE -->creditos
    } else if (estado == "noacompañar") {//-----------No acompañar
      texto.mostrar(16);
      texto.textosd(19, 200, 290);
      texto.btn(28, width-100, height-50, 21);//Boton 21  = SIGUIENTE -->creditos
    } else if (estado == "creditos") {//----------- Creditos
      texto.mostrar(17);
      texto.update();
      texto.creditos();
      texto.btn(20, width/2, height-50, 22);//Boton 22   = Volver al Inicio --> inicio
    }
    ID = texto.ID2();
  }
  //----------- BOTONES -----------
  void click() {
    if (ID == 1 && estado == "inicio" ) {
      estado = "presentacion";
    } else if (ID == 2 && estado == "inicio" ) {
      estado = "creditos";
    } else if (ID == 3 && estado == "presentacion" ) {
      estado = "aventuras";
    } else if (mouseX < width && estado == "aventuras") {
      estado = "ladrones";
    } else if (ID == 12 && estado == "ladrones") {
      estado = "lucha";
    } else if (ID == 13 && estado == "lucha") {
      estado = "iniciojuego";
    } else if (ID == 14 && estado == "oro") { // BOTON SI
      estado = "joven";
    } else if (ID == 15 && estado == "oro") { // BOTON NO
      estado = "quedarseoro";
    } else if (ID == 16 && estado == "quedarseoro") {
      estado = "creditos";
    } else if (ID == 17 && estado == "joven") {
      estado = "acompañarjoven";
    } else if (ID == 18 && estado == "acompañarjoven") { // BOTON SI
      estado = "acompañar";
    } else if (ID == 19 && estado == "acompañarjoven") { // BOTON NO
      estado = "noacompañar";
    } else if (ID == 20 && estado == "acompañar") { 
      estado = "creditos";
    } else if (ID == 21 && estado == "noacompañar") {
      estado = "creditos";
    } else if (ID == 22 && estado == "creditos") { 
      estado = "inicio";
    } else if (ID == 23 && estado == "finalperder") { 
      estado = "creditos";
    } else if (ID == 24 && estado == "iniciojuego") {
      estado = "jugar";
    } else if (ID == 25 && estado == "ganar") {
      estado = "iniciojuego";
    } else if (ID == 26 && estado == "ganar") {
      estado = "oro";
    } else if (ID == 27 && estado == "perder") { 
      estado = "iniciojuego";
    } else if (ID == 28 && estado == "perder") { 
      estado = "finalperder";
    }
  }//----------- BOTONES 2 -----------
  void mouse() {
    if (estado == "aventuras") {
      if (mouseX> width/2 - 264/2 && mouseX < width/2 + 264/2 && mouseY > height/2+28 - 266/2 && mouseY < height/2+28 + 266/2) {
        pushStyle();
        rectMode(CENTER);
        noFill();
        stroke(255);
        strokeWeight(8);
        rect(width/2, height/2+28, 264, 266);
        popStyle();
      }
    }
  }
}
