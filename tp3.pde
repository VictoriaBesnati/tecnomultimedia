/*
TP3: Ilusión Óptica Interactiva
 Alumna:Besnati, Victoria(88151/1)
 https://youtu.be/YIEbY8Nbghc
 */

float tx, ty, q, e, d;
color f, c1, c2, c3, c4;
//Perlin
float er, vr, op;

void setup() {
  surface.setSize(600, 600);
  surface.setResizable(true);
  noStroke();
  noCursor();
  colorMode(RGB);
  q = 20;
  c1 = color(255);
  c2 = color(0);
  f = color(255);
  er = 0.02;
  println("Presionar la barra espaciadora para reiniciar\nRuedita del mouse aumenta y disminuye cuadraditos / Click para parar el mouseWheel \nColores:v = Violeta, n = Naranja, f = Fucsia, r = Random, p = Perlin");
}
void draw() {

  background(f);
  //--------------------------------
  q = q + e;
  tx = width/q;
  ty = height/q;
  //--------------------------------
  if (q <= 15 || q > 50 ) {
    e = 0;
  }

  //--------------------------------
  for (float v = 0; v <= q; v= v+1) {
    for (float i = 0; i <= q; i= i+1) {
      //--------------------------------

      if ((v+i) % 2 == 0 ) {
        fill(c1);
      } else if ((v+i) % 2 == 1) {
        fill(c2);
      }

      if ((v+i) % 2 == 0 && key == 'p' ) {
        vr = noise(er+v, er+i);
        colorMode(HSB);
        f = color(255*vr+v, 255*vr, 255*vr, 255*vr);
        fill(255*vr+v, 255, 255, 255);
      } else if ((v+i) % 2 == 1) {
        fill(c2);
      }
      colorMode(RGB);
      //--------------------------------

      d = dist(mouseX/tx, 0, v, 0);
      float d2 = map(d, 0, width, 0, width*2);
      float r = v * tx;
      rect(r, i*ty, d2, ty);
    }
  }
  //--------------------------------
}
void mouseWheel(MouseEvent event) {
  e = event.getCount();
}

void mouseClicked() {
  e = 0;

  //Ramdom
  //--------------------------------
  if (key  == 'r') {
    c1= color(random(0, 255), random(0, 255), random(0, 255));
    f = c1;
  }
}
void keyPressed() {

  if (key  == ' ') {
    //Reinicio.
    //--------------------------------
    surface.setSize(600, 600);
    q = 20;
    f = color(255);
    c1= color(255);
    c2= color(0);
    er = 0.02;
  }
  //Colores
  //--------------------------------
  if (key  == 'v') {
    f = color(0);
    c1= color(124, 31, 183);// violeta
    c2= color(246, 255, 0);// amarillo
  }
  if (key  == 'f') {
    f = color(255);
    c1= color(255, 41, 217);//rosa
    c2= color(110, 255, 41);// verde
  }
  if (key  == 'n') {
    f = color(0);
    c1= color(41, 255, 189);//verde agua
    c2= color(255, 82, 41);// naranja
  }
}
