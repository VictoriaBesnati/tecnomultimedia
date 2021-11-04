/*
 | TP5: Videojuego | tmm1 | FdA | UNLP |
 com2 | Prof. Matias Jauregui Lorda.
 Alumna:Besnati, Victoria (88151/1).
 Video:
 -No llegue a terminarlo pero queria enviar algo de todas formas. La idea es que si te chocas 3 veces con alguno de los otros personajes pierdas y si pasas las 5 pantalas ganas. Tambien pensaba hacerle un menu con dos dificultades. 
 Saludoss y Buen Findeee Profee! :)
 */

juego juego;
void setup() {
  size(800, 600);
  juego= new juego();
}
void draw() {
  juego.update();
  juego.dibujar();
}
void mousePressed() {
  juego.click();
}
void keyPressed() {
  juego.teclado(keyCode);
}
