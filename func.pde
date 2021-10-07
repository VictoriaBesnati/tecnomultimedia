void btn(String texto, int x, int y, int tamx, int tamy, int ID) {
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
  if (lampara(x, y, tamx, tamy)) {
    image(lamp2, mouseX, mouseY, 60, 40);
    ID1 = ID;
  } else {
    image(lamp, mouseX, mouseY, 50, 20);
  }
  popStyle();
}
boolean lampara(int x1, int y1, int tamx1, int tamy1) {
  if (mouseX> x1 - tamx1/2 && mouseX < x1 + tamx1/2 && mouseY > y1 - tamy1/2 && mouseY < y1 + tamy1/2) {
    return true;
  } else {
    return false;
  }
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
