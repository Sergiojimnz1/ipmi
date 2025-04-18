
PImage gumball, grilla; //variables declaradas.)


void setup()
{
  size(800,400);
  gumball = loadImage("gumball.jpg");
  grilla = loadImage ("grilla.png");
   
}

void draw()
{
  background( 250, 229, 35); //fondo
  image(gumball, 0,0, 400,400);
  //image(grilla, 400,0);
  
  println("x:",mouseX, "y:",mouseY); //coordenadas!
 
  //cuerpo****
  
  noStroke();
  
  //cabeza ***: 
  fill(35, 191, 191); //color de relleno
  ellipse(610,120, 90,180);  //orejader
  ellipse(700,110, 90,70);  //orejaizq
  ellipse(717,103, 70,63);  //orejaizq2
  ellipse(550,170, 160,120); //menton
  triangle(570,230, 570,245, 611,243); //cuello
  triangle(570,239, 570,222, 533,228); //cuello
  ellipse(615,145, 215,195); //forma principal
  
  //cara ***
  
  fill(10);
  quad(568,65, 568,75, 588,72, 587,62); //ceja1
    circle(589,67, 10);
    circle(570,70, 10);
    circle(567,71, 10);
    
  quad(669,68, 664,78, 678,83, 683,74); //ceja2
     circle(666,73, 10);
     circle(682,80, 10);
  
  stroke(0);  
  strokeWeight(3);
  line(692,187, 705,197); //bigotes
  line(675,200, 686,215); //bigotes
  line(654,210, 665,230); //bigotes
  line(514,197, 496,210); //bigotes
  line(498,176, 475,189); //bigotes
  noStroke();
 
  
  //boca ***
  
  fill(255);
  ellipse(590,175, 70,100); //dientes
  stroke(0);
  strokeWeight(2);
  line(576,174, 580,222);
  line(603,172, 607,218);
  
  noStroke();
  fill(35, 191, 191);//colorgumball tapa
  triangle(640,168, 577,94, 540,182); //tapamediaboca
  
  
  //ojos ***
  noStroke();
  fill(255); //esclerotica
  ellipse(576,119, 60,70);
  ellipse(575,130, 60,70);
  ellipse(573,136, 60,80);
  
  ellipse(659,119, 60,70);
  ellipse(656,130, 60,70);
  ellipse(653,136, 60,80);

  fill(0);//pupila
  ellipse(576,126, 40, 66);
  ellipse(654,130, 40, 66);
  
  
   
  //cuerponariz *** 
  
  fill(35, 191, 240); 
  ellipse(570,169, 23,18);
  ellipse(610,166, 23,11);
  quad(571,159, 606,159, 610,172, 575,178);
  stroke(0);
  strokeWeight(2);
  fill(255,48,48);
  
  //nariz ***
  ellipse(585,163, 30,10); 
  line(585,168, 583,176);
  line(570,178, 610,173);

  
  
  
  //brazos ***
  noStroke();
  fill(35, 191, 191);
  triangle(611,264, 622,264, 613,321);      //brazo izq
  quad(554,260, 566,270, 542,297, 539,278);//brazo der
  quad(539,278, 530,267, 517,276, 527,292); //brazo der
  circle(536,288, 20); //codo
  ellipse(516,263, 42,30); //palma
  quad(525,270, 525,235, 512,235, 512, 270);//dedo1
  quad(512,248, 505,236, 494,242, 501,253); //dedo2
  circle(519,236, 13); //puntadedo1
  circle(500,240, 13); //puntadedo2
  
  //piernas ***
  fill(35, 191, 191);
  quad(571,336, 606,336, 610,372, 570,372 );
  quad(610,318, 640,331, 626,344, 610,329); //cuerpocola
  circle(638,339, 15);//punta cola
  circle(633,339, 15);//punta cola
  fill(0,0,0,90);
  rect(565,371, 150,15); //sombra
  fill(200);
  ellipse(605,374, 37,25); //zapato izq
  ellipse(577,375, 37,25); //zapato der
  
  
   //pantalones ***
  fill(41, 60, 155);
  stroke(0);
  rect(561,316, 51,25);
  strokeWeight(2);
  line(585,322, 590,385);//division piernas
  fill( 250, 229, 35); //fondo piso amarillo
  noStroke();
  rect(551,384, 180,30); //piso
  
  //camisa ***
  
  fill(255,255,255);
  circle(612,255, 15);
  circle(565,256, 15);
  
   line(611,263, 623,264); //detalle izq
   line(564,267, 549,264); //detalle der
   
  quad(611,243, 569,243, 555,327, 614,327); // parteblanca
  quad(610,251, 620,251, 624,265, 610,265); //mangaizq
  quad(565,269, 550,265, 558,251, 568,251); //mangader
  fill(250,0,0); //partes rojas
  quad(611,243, 569,243, 567,255, 610,250); //cuello
  stroke(250,0,0);
  strokeWeight(4);
  line(611,263, 623,264); //detalle izq
  line(564,267, 549,264); //detalle der
 
   
}
