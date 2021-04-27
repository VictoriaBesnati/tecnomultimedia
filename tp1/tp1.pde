void setup()
{
  size(600,600);
  background(230,215,189); // Color pergamino
  noStroke();
  
}
void draw()
{
  fill(255);
  circle(width/2,height/2,500);// Fuera
  

  
  
  
  
  
  stroke(0);
  /*
  stroke(0);
  line(width/2,height,width/2,0);
  line(0,height/2,width,height/2);
  */
  
  fill(230,215,189);
  circle(width/2,height/2,250);// Dentro
  fill(255,0,0,100);
  //triangle(width/2, height/2,350,300,450,300);
   circle(175,300,10);
}
