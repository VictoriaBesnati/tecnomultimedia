/*
 | TP5: Videojuego | tmm1 | FdA | UNLP |
 com2 | Prof. Matias Jauregui Lorda.
 Alumna:Besnati, Victoria (88151/1).
 Video: https://youtu.be/i-RHOMQTJn0
 */
import processing.sound.*;
SoundFile spv, sf;
juego juego;
void setup() {
  size(800, 600);
  spv = new SoundFile(this, "perdervida.wav");
  sf = new SoundFile(this, "musicaegipto.mp3");
  juego= new juego();
}
void draw() {
  juego.update();
  juego.dibujar();
  juego.cobstaculos();
}
void mousePressed() {
  juego.click();
}
void keyPressed() {
  juego.teclado(keyCode);
  juego.tecladoR(keyCode);
}
