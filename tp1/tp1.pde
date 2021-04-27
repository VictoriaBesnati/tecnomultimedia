void setup()
{

  size(800, 800);
  background(230, 215, 189); // Color pergamino
  noStroke();
}

void draw()
{

  //Colores
  fill(255, 0, 0);
  triangle(400, 400, 225, 97, 400, 50); // 1 Rojo

  fill(255, 125, 0);
  triangle(400, 400, 400, 50, 575, 97); // 2 Naranja

  fill(255, 255, 0);
  triangle(400, 400, 575, 97, 705, 230); // 3 Amarillo

  fill(125, 255, 0);
  triangle(400, 400, 705, 230, 750, 400); // 4 Lima

  fill(0, 255, 0);
  triangle(400, 400, 750, 400, 708, 568); // 5 Verde

  fill(0, 255, 126);
  triangle(400, 400, 708, 568, 575, 705); // 6 Verde agua

  fill(0, 255, 125);
  triangle(400, 400, 708, 568, 575, 705); // 7 Esmeralda claro

  fill(0, 255, 255);
  triangle(400, 400, 575, 705, 400, 750); // 8 Cyan

  fill(0, 126, 255);
  triangle(400, 400, 400, 750, 225, 703); // 9 Ceruleo

  fill(0, 0, 255);
  triangle(400, 400, 225, 703, 95, 572); // 10 Azul

  fill(125, 0, 255);
  triangle(400, 400, 95, 572, 50, 400); // 11 Violeta

  fill(255, 0, 255);
  triangle(400, 400, 50, 400, 93, 232); // 12 Magenta

  fill(255, 0, 125);
  triangle(400, 400, 93, 232, 225, 97); // 13 Fuccia

  // Circulo adentro 

  fill(230, 215, 189);
  circle(width/2, height/2, 300);//Grande

  fill(255, 0, 0, 190);
  circle(400, 350, 120); // R
  fill(0, 255, 0, 190);
  circle(450, 420, 120); // G
  fill(0, 0, 255, 190);
  circle(350, 420, 120); // B

  fill(255, 255, 0, 190);
  circle(485, 345, 30);  // Y
  fill(0, 255, 255, 190);
  circle(400, 485, 30);  // C
  fill(255, 0, 255, 190);
  circle(320, 345, 30);  // M
}
