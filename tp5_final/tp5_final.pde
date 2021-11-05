Juego juego;
void setup() {
  size( 800, 400 );
  juego = new Juego();
}

void draw() {
  juego.update();
  juego.dibujar();
}

void keyPressed() {
  juego.teclas();
}
