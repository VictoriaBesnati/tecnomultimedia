/*
 TP4: Aventura Grafica
 Historia: Aladdin
 Comision:2
 Alumna:Besnati, Victoria(88151/1)
 Video: https://youtu.be/iq5EpSwCf_E
 */
import processing.sound.*;
SoundFile magia;
String[] txt = new String [13];
PImage [] fondos = new PImage [22];  
PImage lamp, lamp2;
PFont aladdin;
int pantalla, ID1 ;
void setup() {
  //-------------- Carga -------------
  for (int i=0; i<22; i++) {
    fondos[i]= loadImage(i+".jpg")  ;
  }
  lamp = loadImage("lampara.png");
  lamp2 = loadImage("lampara2.png");
  aladdin=createFont("aladdin.ttf", 40);
  magia = new SoundFile(this, "magia.wav");
  //-------------- Arreglo txt -------------
  txt [0] = "Inicio";
  txt [1] = "Ayudarla";
  txt [2] = "Seguir tu camino";
  txt [3] = "Engañarlo";
  txt [4] = "Correr";
  txt [5] = "Esconderse";
  txt [6] = "Subir al techo";
  txt [7] = "Seguir corriendo";
  txt [8] = "Rendirse";
  txt [9] = "Saltar";
  txt [10] = "Volver al inicio";
  txt [11] = "Siguiente ->";  
  txt [12] = "Creditos";
  //-------------- Config -------------
  size(800, 600);  
  noCursor();
  textFont(aladdin);  
  println("Para reiniciar en cualquier momento de la aventura presionar R, para ver los creditos presionar C.");
}
void draw() {
  if (pantalla == 0) {//Inicio
    image(fondos[0], -1, -1, 800, 600);
    texto2("Aladdin", width/3-100, height/3-98, 120);
    btn(txt[0], 250, height-100, 120, 60, 0);
    btn(txt[12], width-250, height-100, 140, 60, 27);
  } else if (pantalla == 1) {//Introduccion 
    image(fondos[1], -140, -1, 940, 600);
    texto1("Habia una vez un muchacho joven y pobre \nllamado Aladdin, que vivia en una guarida en\nel bazar de Agrabah con su mono Abu,\nEl sueña con vivir una vida llena de lujos.\nUn dia mientras buscaba algo que robar...", height-260, 160, 26 );
    btn(txt[11], width-150, height-100, 220, 60, 1);
  } else if (pantalla == 2) {// Joven en apuros
    image(fondos[2], -1, -1, 920, 600);
    texto1("Ves una joven en apuros", 75, 70, 50);
    btn(txt[1], width/4, height - 100, 180, 60, 2);
    btn(txt[2], width-250, height - 100, 300, 60, 3);
  } else if (pantalla == 3) {//Seguir tu camino
    image(fondos[3], -1, -1, 800, 600);
    texto1("¿En serio elegiste esta?", 50, 60, 50);
    texto1("Seguis tu camino y volves a casa con Abu", 50, 140, 40);
    btn(txt[11], width-150, height-100, 220, 60, 4);
  } else if (pantalla == 4) {//Final ¿?
    image(fondos[4], -1, -1, 800, 600);
    texto2("Final ¿?", width/4-100, 70, 70);
    texto1("Volves a tu casa, te pasas el resto de tus dias \ncon Abu, sin que tu vida cambie mucho...", 50, 200, 40);
    btn(txt[11], width-150, height-100, 220, 60, 5);
  } else if (pantalla == 5) {//Creditos 1 ¿Encerio?
    image(fondos[5], -1, -1, 800, 600);
    texto2("Creditos", width/3-50, 100, 120);
    texto2("Historia..................Aladdin", width/3-100, 250, 60);
    texto2("Alumna........Besnati,Victoria", width/3-150, 350, 60);
    btn(txt[10], width/2, height-100, 240, 60, 6);
  } else if (pantalla == 6) {//Ayudas a la muchacha
    image(fondos[6], -1, -1, 800, 600);
    texto1("Ayudas a la muchacha", 100, 70, 60);
    btn(txt[3], 200, height-100, 190, 60, 7);
    btn(txt[4], width-200, height-100, 160, 60, 8);
  } else if (pantalla == 7) {//Logras engañarlo
    image(fondos[7], -1, -1, 800, 600);
    texto1("Logras engañarlo...", 70, 70, 60);
    btn(txt[11], width-150, height-100, 220, 60, 9);
  } else if (pantalla == 8) {//Los deja tranquilos
    image(fondos[8], -1, -1, 800, 600);
    texto1("Parece que los dejo tranquilos... \nAhh los descubrio", 70, 100, 40);
    btn(txt[4], width/2, height-100, 160, 60, 10);
  } else if (pantalla == 9) {//Corren
    image(fondos[9], -1, -1, 800, 600);
    texto1("Corren...", 70, 100, 80);
    btn(txt[11], width-150, height-100, 220, 60, 11);
  } else if (pantalla == 10) {//Guardias
    image(fondos[10], -1, -1, 800, 600);
    texto1("Te siguen los guardias", 70, 80, 80);
    btn(txt[5], 120, height-100, 180, 60, 12);
    btn(txt[6], width/2-50, height-100, 240, 60, 13);
    btn(txt[7], width-170, height-100, 280, 60, 14);
  } else if (pantalla == 11) {//Esconderse
    image(fondos[11], -1, -1, 800, 600);
    texto1("Se esconden\nLo que no resulta una buena idea los \nmonos no pasan muy desapercibidos.\n", 70, 170, 40);
    btn(txt[11], width-150, height-100, 220, 60, 15);
  } else if (pantalla == 12) {//Siguen corriendo
    image(fondos[12], -1, -1, 800, 600);
    texto1("Siguen corriendo y \nlogran sacarles ventaja", 70, 120, 60);
    btn(txt[11], width-150, height-100, 220, 60, 16);
  } else if (pantalla == 13) {//Techos
    image(fondos[13], -1, -1, 800, 600);
    texto1("Suben a los techos pero \nlos guardias les pisan los talones", 70, 120, 50);
    btn(txt[8], 200, height-100, 190, 60, 17);
    btn(txt[9], width-200, height-100, 160, 60, 18);
  } else if (pantalla == 14) {//Saltas
    image(fondos[14], -1, -1, 800, 600);
    texto1("Saltas", 70, 70, 60);
    btn(txt[11], width-150, height-100, 220, 60, 19);
  } else if (pantalla == 15) {//Te rendis
    image(fondos[15], -1, -1, 800, 600);
    texto2("Final Malo", 50, 70, 70);
    texto1("Los guardias te atrapan y vas a la carcel.", 50, 170, 45);
    btn(txt[11], width-150, height-100, 220, 60, 20);
  } else if (pantalla == 16) {//Creditos 2 Final Malo
    image(fondos[16], -1, -1, 800, 600);
    texto2("Creditos", width/3-50, 100, 120);
    texto2("Historia..................Aladdin", width/3-100, 250, 60);
    texto2("Alumna........Besnati,Victoria", width/3-150, 350, 60);
    btn(txt[10], width/2, height-100, 240, 60, 21);
  } else if (pantalla == 17) {//Logran huir de los guardias
    image(fondos[17], -1, -1, 800, 600);
    texto1("Logran huir de los guardias", 70, 70, 60);
    btn(txt[11], width-150, height-100, 220, 60, 22);
  } else if (pantalla == 18) {//Llegan a tu casa
    image(fondos[18], -1, -1, 800, 600);
    texto1("Deciden esconderse en tu guarida", 50, 70, 60);
    btn(txt[11], width-150, height-100, 220, 60, 23);
  } else if (pantalla == 19) {//Se enamoran
    image(fondos[19], -1, -1, 800, 600);
    texto1("Se enamoran... \nDescubris que es la princesa y haces muchas\n locuras, conoces un genio, te enfrentas a Jafar \ny finalmente...", 40, 160, 40);
    btn(txt[11], width-150, height-100, 220, 60, 24);
  } else if (pantalla == 20) {//Final Bueno
    image(fondos[20], -1, -1, 800, 600);
    texto2("Final Bueno", 40, 70, 70);
    texto1("Te casas con \nla princesa", 40, 220, 50);
    btn(txt[11], width-150, height-100, 220, 60, 25);
  } else if (pantalla == 21) {//Creditos 3
    image(fondos[21], -1, -1, 800, 600);
    texto2("Creditos", width/3-30, 100, 100);
    texto2("Historia..................Aladdin", width/3-100, 200, 60);
    texto2("Alumna........Besnati,Victoria", width/3-150, 300, 60);
    btn(txt[10], width/2, height-50, 240, 60, 26);
  }
}
void mouseClicked() {
  if (ID1 == 0 && pantalla == 0 ) {
    pantalla = 1;
  } else if (ID1 == 1 && pantalla == 1) {
    pantalla = 2;
  } else if (ID1 == 2 && pantalla == 2 ) {
    pantalla = 6;
  } else if (ID1 == 3 && pantalla == 2) {
    pantalla = 3;
  } else if (ID1 == 4 && pantalla == 3 ) {
    pantalla = 4;
  } else if (ID1 == 5 && pantalla == 4 ) {
    pantalla = 5;
  } else if (ID1 == 6 && pantalla == 5 ) {
    pantalla = 0;
  } else if (ID1 == 7 && pantalla == 6 ) {
    pantalla = 8;
  } else  if (ID1 == 8 && pantalla == 6) {
    pantalla = 10;
  } else  if (ID1 == 9 && pantalla == 7 ) {
    pantalla = 8;
  } else  if (ID1 == 10 && pantalla == 8 ) {
    pantalla = 9;
  } else  if (ID1 == 11 && pantalla == 9 ) {
    pantalla = 10;
  } else  if (ID1 == 12 && pantalla == 10 ) {
    pantalla = 11;
  } else  if (ID1 == 13 && pantalla == 10 ) {
    pantalla = 13;
  } else  if (ID1 == 14 && pantalla == 10 ) {
    pantalla = 12;
  } else  if (ID1 == 15 && pantalla == 11 ) {
    pantalla = 15;
  } else  if (ID1 == 16 && pantalla == 12 ) {
    pantalla = 18;
  } else  if (ID1 == 17 && pantalla == 13 ) {
    pantalla = 15;
  } else  if (ID1 == 18 && pantalla == 13 ) {
    pantalla = 14;
  } else  if (ID1 == 19 && pantalla == 14 ) {
    pantalla = 17;
  } else  if (ID1 == 20 && pantalla == 15) {
    pantalla = 16;
  } else  if (ID1 == 21 && pantalla == 16 ) {
    pantalla = 0;
  } else  if (ID1 == 22 && pantalla == 17) {
    pantalla = 18;
  } else  if (ID1 == 23 && pantalla == 18) {
    pantalla = 19;
  } else  if (ID1 == 24 && pantalla == 19) {
    pantalla = 20;
  } else  if (ID1 == 25 && pantalla == 20) {
    pantalla = 21;
  } else  if (ID1 == 26 && pantalla == 21) {
    pantalla = 0;
  } else  if (ID1 == 27 && pantalla == 0) {
    pantalla = 21;
  }
  //--------------Sonido-------------
  if (mouseX < width && mouseY < height) {
    magia.play();
  } else {
    magia.stop();
  }
}
void keyPressed() {
  if (key == 'r') {
    pantalla = 0;
  }
  if (key == 'c') {
    pantalla = 21;
  }
}
