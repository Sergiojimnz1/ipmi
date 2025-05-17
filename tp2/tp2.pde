
// Sergio Jiménez / comision 1 / 95898754

//declaramos variable:

PImage img1, img2, img3, img4, img5, botonImg;
PFont miFuente;
int diapo;
float contador, opacidad;
float posX3, posY3, tamX3, tamY3;
float posX4;
float posX1, posY1;
float  textoY2, textoX4;
boolean efecto;

void setup()
{
  
  diapo=0;
  contador=0;
  tamX3 = 0;
  tamY3 = 0;
  posX3 = width/2;
  posY3 = height/2;
  textoY2 = height+100;
  size(640, 480);
  img1 = loadImage("fallout1.jpg");
  img2 = loadImage("fallout2.jpg");
  img3 = loadImage("fallout3.jpg");
  img4 = loadImage("fallout4.jpg");
  img5 = loadImage("fallout5.jpg");
  miFuente = loadFont("OCRAExtended32.vlw");
  botonImg = loadImage("boton.png");
}

void draw()
{
 
  contador++;   
  println("contador = "+contador);
  
  efecto =  mouseX > 150 && mouseX < 250 && mouseY > 230 && mouseY < 330;
  
  if (contador >= 0 && contador < 360){ diapo=1;}
  else if (contador >= 360 && contador < 840){ diapo=2;}
  else if (contador >= 840 && contador < 1320){ diapo=3;}
  else if (contador >= 1320 && contador < 1800){ diapo=4;}
  else if (contador >= 1800){ diapo=5;}
  
    if(diapo==1) 
      {
        background(0);            
        image(img1,0,0);
        fill(255);
        textFont(miFuente);
        textSize(30);
        fill(0,255,0);
        text("Bienvenidos al yelmo", 150, 370);
        posX1 = random(width);
        posY1 = random(height);
        fill(0,255,0);
        ellipse(posX1, posY1, 3, 3);}
        
    else if(diapo==2) 
      {
        background(0);
        opacidad= map(contador, 360, 720, 0, 255);
        tint(255, opacidad);
        image(img2,0,0);
        noTint();
        fill(255);
        
        textoY2= map(contador, 360, 720, textoY2, 330 );
        textFont(miFuente);
        textSize(20);
        fill(0,255,0);
        text("Fallout es una serie de televisión basada\n" +
             "en la popular franquicia de videojuegos\n" +
             "del mismo nombre. La serie explora un mundo\n" +
             "postapocalíptico después de una guerra\n" +
             "nuclear devastadora.", 80, textoY2);}

    else if(diapo==3) 
      {
        background(0);
        if(contador <960){
          tamX3 = map(contador, 840, 960, 0, width);
          tamY3 = map(contador, 840, 960, 0, height);}
        else{tamX3=width; tamY3=height;} 
        
        posX3 = width/2 - tamX3/2;
        posY3 = height/2 - tamY3/2;
        
        image(img3, posX3, posY3, tamX3, tamY3);
        
        opacidad = map(contador, 840, 960, 0, 255);
        fill(0, 255, 0, opacidad);
        textFont(miFuente);
        textSize(20);
        text("En este mundo, los supervivientes luchan\n" +
             "por sobrevivir entre ruinas y peligros\n" +
             "constantes. Combina elementos de ciencia\n" +
             "ficción, drama y aventura para mostrar\n" +
             "cómo la humanidad enfrenta las consecuencias\n" +
             "del colapso total.",80, 330);}
        
    else if(diapo==4)
    { 
      
        background(0);
        
        if(contador<1440)
          {posX4 = map(contador, 1320, 1440, width,0);}
        else{posX4=0;}
        
        image(img4,posX4,0);
        
        if(contador <1440)
          {textoX4 = map(contador, 1320, 1440, -width, 80);}
        else{textoX4=80;}
        fill(255);
        textFont(miFuente);
        textSize(20);
        fill(0,255,0);
        text("La serie busca capturar la atmósfera oscura\n" +
             "y desesperanzada del universo Fallout,\n" +
             "desarrollando personajes complejos y una\n" +
             "narrativa que examina la naturaleza humana\n" +
             "en situaciones extremas.",textoX4, 330);}
             
    else if(diapo==5)
  {
    image(img5, 0,0);
      if(efecto){tint(255,255,0);}
      else{noTint();}
      image(botonImg, 150, 230, 100, 100);
      noTint();
  }
  
}

void mousePressed()

   { 
     if(diapo==5)
     if(mouseX>150 && mouseX <250 && mouseY >230 && mouseY <330)
     {contador=0;
     textoY2 = height + 100;
      tamX3 = 0;
      tamY3 = 0;
      posX3 = width / 2;
      posY3 = height / 2;
     }
}
  
  
