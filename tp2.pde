
/*
TP2: Animacion Creditos
 Alumna:Besnati, Victoria(88151/1)
 Serie: Adventure Time
 */

int seg, min, vc = 0;
int v1 = 900, v2, v3 = width/2, v4 = 850;
float t = 0;
PFont Lcreditos;
PImage logoAT, Fondo, Bee, Bee12, Vaq, Caracol, CN;

void setup()
{
  size(900, 800);
  background(#9DEA74);

  //Caragar

  Lcreditos = loadFont( "Thunderman-100.vlw");
  logoAT    = loadImage ("AT_Logo.png");
  Fondo     = loadImage ("Fondo.png");
  CN        = loadImage ("CN LOGO.PNG");
  Bee       = loadImage ("Bee1.PNG");
  Bee12     = loadImage ("Bee1.2.png");
  Vaq       = loadImage ("Vaquita.PNG");
  Caracol   = loadImage ("Caracolmalito.png");

  //Conf

  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  textFont(Lcreditos);
  frameRate(60);
  fill(0);
}
void draw()
{
  //**************************Tiempo****************************************

  if (frameCount % 60 == 0) { 
    seg++;

    if (seg >= 60) {
      seg=0;
      min++;
    }
  }
  println(min, ":", seg);

  //*************************Variables***************************************

  v1 = v1-2;
  v2++;


  //*************************Imagenes**************************************

  //-------------Fondo--------

  image(Fondo, width/2, height/2);

  //-------------Caracol------

  t = map(mouseX, 0, width, 0, 255);
  tint(255, t);
  image(Caracol, 850, 760, 100, 100);

  //-------------Abeja--------

  tint(255);
  image(Bee, v1, v2, 300, 300);

  if ( v1 < 0) {
    image(Bee12, v2-650, v2, 300, 300);
  }
  //--------------Vaq---------

  if (seg >= 14) {
    v3++;
    v4--;
    image(Vaq, v3-150, v4-150, 200, 200);//v3-300
  }
  //------------Logo---------
  if (seg <=0) {

    println("Pantalla 1");

    image(logoAT, width/2, height/2, 1920-1200, 845-600);
    //*************************Texto***************************************
  }
  if (seg > 0 && seg <=1) {
    println("Pantalla 2");

    textSize(50);
    text("producer", width/2, height/2 -100);
    textSize(80);
    text("Kelly Crews", width/2, height/2);
  }//-------------------------------------------------
  if (seg > 1 && seg <= 2) {
    println("Pantalla 3");

    textSize(40);
    text("head of story", width/2, height-650 );
    textSize(70);
    text("Kent Osborne", width/2, height-560);

    textSize(40);
    text("writer", width/2, height/2-45 );
    textSize(70);
    text("Patrick McHale", width/2, height/2+45);

    textSize(40);
    text("writer's apprentice", width/2, height/2+150 );
    textSize(70);
    text("Dick Grunert", width/2, height/2 +240);
  }//----------------------------------------------------
  if (seg > 2 && seg <=3) {
    println("Pantalla 4");

    textSize(35);
    text("storyboar supervisor", width/2, height-700);
    textSize(60);
    text("Ian Jones-Quartey", width/2, height-630);

    textSize(35);
    text("supervising director", width/2, height-540);
    textSize(60);
    text("Larry Leichliter", width/2, height-480);

    textSize(35);
    text("sheet timing", width/2, height-400);
    textSize(60);
    textLeading(60);
    text("Rich Collado\nDon Judge\nMichel Lyman\nHelen Roh\nJoung Yon Kwon", width/2, height-220);
  }//-------------------------------------------------------------------------------------------------
  if (seg > 3 && seg <=4) {
    println("Pantalla 5");

    textSize(30);
    text("production manager", width/2, height-630 );
    textSize(60);
    text("Keith Mack", width/2, height-560);

    textSize(30);
    text("production coordiantion", width/2, height-480 );
    textSize(60);
    text("Scott Malchus", width/2, height-410);

    textSize(30);
    text("production asistants", width/2, height-330);
    textSize(60);
    text("Pactrick Seery", width/2, height-270);
    textSize(50);
    text("Joseph Eduardo Game Cooke", width/2, height-200);
  }//-----------------------------------------------------------
  if (seg > 4 && seg <=5) {
    println("Pantalla 6");
    textSize(40);
    text("lead carácter & propr designer", width/2, height-630 );
    textSize(70);
    text("Andy Ristano", width/2, height-560);

    textSize(40);
    text("character & prop designers", width/2, height-460 );
    textSize(70);
    text("Michelle Xin", width/2, height-390);
    text("Michael DeForge", width/2, height-310);

    textSize(40);
    text("Carácter & prop design clean-up", width/2, height-220);
    textSize(70);
    text("Alex Campos", width/2, height-150);
  }//---------------------------------------------------------------
  if (seg > 5 && seg <=6) {
    println("Pantalla 7");

    textSize(35);
    text("background designers", width/2, height-730);
    textSize(60);
    text("Santino Lascano\nDerek Hunter", width/2, height-630);


    textSize(35);
    text("background painters", width/2, height-490);
    textSize(60);
    text("Martin Ansolebehere\nSandra Calleros\nRon Rusell", width/2, height-330);


    textSize(35);
    text("color stylist", width/2, height-170);
    textSize(60);
    text("Catherine E. Simmonds", width/2, height-100);
  }//------------------------------------------------------------------------------------
  if (seg > 6 && seg <=7) {
    println("Pantalla 8");
    textSize(40);
    text("animatic timer", width/2, height-740);
    textSize(70);
    text("Oliver Akuin", width/2, height-670);

    textSize(40);
    text("animatic scanner", width/2, height-590);
    textSize(70);
    text("Tammy List ", width/2, height-520);

    textSize(40);
    text("storyboard revisions", width/2, height-430);
    textSize(70);
    text("Natasha Allegri\nRobert Ryan Cory\nAleth Romanillos\nSteven Sugar", width/2, height-220);
  }//------------------------------------------------------------------------------------------------
  if (seg > 7 && seg <=8) {
    println("Pantalla 9");

    textSize(40);
    text("featured voices", width/2, height/2-250);
    text("finn                                        Jeremy Shada\njake                                        John DiMaggio\nprinces bubblegum                    Hyden Walch\nmarceline                            Olivia Olsonlady\nrainicorn / BMO                       Niki Yangice\nking / gunter                               Tom Kenny", width/2, height/2);
  }//------------------------------------------------------------------------------
  if (seg > 8 && seg <=9) {
    println("Pantalla 10");

    textSize(40);
    text("voice director", width/2, height-650 );
    textSize(70);
    text("Kent Osborne", width/2, height-580);

    textSize(40);
    text("casting & recording studio manager", width/2, height/2-50 );
    textSize(70);
    text("Karie Gima Pham", width/2, height/2+30);

    textSize(40);
    text("recording engineer", width/2, height-240);
    textSize(70);
    text("Robert Serda", width/2, height-170);
  }//------------------------------------------------------
  if (seg > 9 && seg <=10) {
    println("Pantalla 11");

    textSize(40);
    text("supervising editor", width/2, height-650 );
    textSize(70);
    text("Paul Douglas", width/2, height-580);

    textSize(40);
    text("dialogue editor", width/2, height-480 );
    textSize(70);
    text("Krandal Crews", width/2, height-410);

    textSize(40);
    text("director production technology", width/2, height-310);
    textSize(70);
    text("Antonio Gonella", width/2, height-240);
  }//----------------------------------------------------------------
  if (seg > 10 && seg <=11) {
    println("Pantalla 12");

    textSize(20);
    text("composers", width/2-200, height-680);
    text("supervising sound editors", width-250, height-680);
    textSize(35);
    text("Casey James", width/2-200, height-640);
    text("Tom Syslo", width-250, height-640);
    text("Tim Keifer", width/2-200, height-580);
    textSize(30);
    text("Timothy J.\nBorquez MPSE", width-250, height-560);

    textSize(20);
    text("music editor", width/2-200, height-460);
    text("sound editor", width-250, height-460);
    textSize(35);
    text("Nick Carr", width/2-200, height-420);
    text("Tony Orozco", width-250, height-420);

    textSize(20);
    text("post production sound studio", width/2-200, height-290);
    text("re-recording mixers", width-250, height-290);
    textSize(35);
    text("Sabre Media Studios", width/2-200, height-240);
    text("Eric Freeman", width-250, height-240);
    textSize(30);
    text("Timothy J.\nBorquez C.A.S.", width-250, height-160);
  }//------------------------------------------------------------------------
  if (seg > 11 && seg <=12) {

    println("Pantalla 13");
    textSize(40);
    text("post production supervisor", width/2, height-650 );
    textSize(70);
    text("Tony Tedford", width/2, height-550);

    textSize(40);
    text("post production coordinator", width/2, height/2-25 );
    textSize(70);
    text("Alisia Parkinson", width/2, height/2+65);

    textSize(40);
    text("production estimator", width/2, height/2+150 );
    textSize(70);
    text("Cecilia Rheins", width/2, height/2 +250);
  }//----------------------------------------------------
  if (seg > 12 && seg <=13) {
    println("Pantalla 14");

    textSize(40);
    text("animation checking", width/2, height-630 );
    textSize(70);
    text("Sandy Benenati", width/2, height-560);
    text("Vicki Casper", width/2, height-465 );

    textSize(40);
    text("track reading by", width/2, height-390 );
    textSize(70);
    text("Slightly Off Track", width/2, height-315);

    textSize(40);
    text("production administration", width/2, height-220);
    textSize(70);
    text("Linda Barry", width/2, height-150);
  }//------------------------------------------------------
  if (seg > 13 && seg <=14) {
    println("Pantalla 15");

    textSize(30);
    text("overseas production facilities", width/2, height -710 );
    textSize(60);
    text("Rough Draft Korea Co'Ltd.\nSaerom Animatic Inc.", width/2, height-600);

    textSize(30);
    text("overseas directors", 250, 340);
    text("for frederator studios\nassociate producer", width-250, 380);
    textSize(55);
    text("Dong Kun Won", width-250, 465);
    text("Bongui Han\nEric Homan", 250, 450);

    textSize(30);
    text("supervising producer", width-450, height-220);
    textSize(60);
    text("Kevin Kolde", width-450, height-140);
  }//-------------------------------------------------------
  if (seg > 14 && seg <=15) {
    println("Pantalla 16");

    textSize(40);
    text("for cartoon network studios\nexecutives producers", width/2, 300 );

    textSize(70);
    text("Brian A. Miller", width/2, 420);

    textSize(70);
    text("Jennifer Pelpherey", width/2, 520);
  }//-----------------------------------------------------
  if (seg > 15 && seg <=16) {
    println("Pantalla 17");

    textSize(40);
    text("for cartoon network\nexecutive producers ", width/2, 200);

    textSize(70);
    text("Curtis Lelash\nRob Sorcher", width/2, 360 );

    textSize(40);
    text("current series executive", width/2, 520 );
    textSize(70);
    text("Conrad Montgomery", width/2, 600);
  }//---------------------------------------------------
  if (seg > 16 && seg <=17) {
    println("Pantalla 18");

    textSize(50);
    text("executive producer", width/2, height/2 -100);
    textSize(80);
    text("Pendleton Ward", width/2, height/2);

    textSize(20);
    text("©2012. The Cartoon Network. A Time Warner Company. All Rights Reserved", width/2, height-300);
  }//----------------------------------------------------
  if (seg > 17 && seg <=20) {
    println("Pantalla 19");

    background(0);
    vc=vc+20;
    noFill();
    strokeWeight(4);
    stroke(#02B1C6);
    circle(width/2, height/2, vc);
    circle(width/2, height/2, vc-200);
    circle(width/2, height/2, vc-400);
    circle(width/2, height/2, vc-600);
    circle(width/2, height/2, vc-800);
    circle(width/2, height/2, vc-1000);
    circle(width/2, height/2, vc-12000);
    image(CN, width/2, height/2);
  }//----------------------------------------------------
  if (seg > 20) {
    println("Pantalla 20");

    background(0);
    fill(255, random(0, 255));
    textSize(100);
    text("-FINN-", width/2, height/2);
  }
}
//***********************************************************
void keyPressed() {

  if ( key == 'r' ) { 

    seg = 0;
    v1 = 900;
    v2 = 0;
    v3 = width/2;
    v4=850;

    println( "Reinicio" );
  } else if ( key == ' ' || key == 'f') { 

    frameCount = frameCount*30;

    println( "..." );
  }
}

//-FINN-
