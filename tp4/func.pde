void btn(String texto, int x, int y, int tamx, int tamy) {

  pushStyle();
  rectMode(CENTER);
  stroke(#953d68);
  strokeWeight(4);
  fill(#624977);
  rect(x, y, tamx, tamy);
  textSize(40);
  textAlign(CENTER, CENTER);
  textFont(aladdin);
  fill(#664E24);
  text(texto, x-2, y-10);
  fill(#f7be5b);
  text(texto, x-4, y-12);
  imageMode(CENTER);
  if (mouseX> x - tamx/2 && mouseX < x + tamx/2 && mouseY > y - tamy/2 && mouseY < y + tamy/2) {
    p[nrobtn] = true;
  } 
  if (p[nrobtn] == true) {
    image(lamp2, mouseX, mouseY, 60, 40);
    p[nrobtn] = false;
  } else {
    image(lamp, mouseX, mouseY, 50, 20);
  }
  popStyle();
}
void texto1(String texto, int x, int y, int tam) {
  pushStyle();
  textAlign(LEFT, CENTER);
  textSize(tam);
  fill(0);
  text(texto, x, y);
  fill(#e5ddd0);
  text(texto, x-2, y-2);
  popStyle();
}
void texto2(String texto, int x, int y, int tam) {
  pushStyle();
  textAlign(LEFT, CENTER);
  textSize(tam);
  fill(#664E24);
  text(texto, x, y);
  fill(#f7be5b);
  text(texto, x-2, y-2);
  popStyle();
}
