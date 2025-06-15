
//  Sergio Jiménez / comision 1 / 95898754
//  nombre de la obra: "RESPIRACION OPTICA"
//  link video:  https://youtu.be/gEJJMa8Qq1c

PImage img1;
int distanciaX;
boolean respirando;

void setup()
{
  size(800,400);
  img1 =  loadImage("03.jpg");
  background(0);
  distanciaX= 400;
}

void draw()
{
  background(0);
  image(img1,0,0, 400, 400);
  
  for(int i=0; i<8; i++ ){
    stroke(120);
    strokeWeight(15);
    line(width/2, i*(height/7),   width, i*(height/7));
    line(i*(distanciaX/7)+400, 0, i*(distanciaX/7)+400, height);
  }

float tamActual = respirando ? tam(mouseX) : 20;

circulos(tamActual,255);  
  
}

void circulos(float tam, color c)
{
    for(int x=0; x<8; x++ )
      {for(int y=0; y<8; y++)
          { float posX =x*(distanciaX/7)+400; 
            float posY = y*(height/7);
            
            float d = dist(mouseX, mouseY, posX,posY);
            
            float r = (frameCount + x * 30) % 256;
            float g = (frameCount + y * 60) % 256;
            float b = (frameCount + x * 30 + y * 60) % 256;
            
            if (d<tam*5)
                {fill(r,g,b);}
            else{fill(c);}
            noStroke();
            ellipse(posX, posY,  tam,tam);}}
}


float tam( float posMouseX)
{
  float duracion = map(posMouseX, 0, width, 200,20);
  float t = frameCount % int (duracion);
  if(t>duracion/2)
    {
      t=duracion-t;
    }
   return map(t,0,duracion,5,50);
   
}

void mousePressed(){respirando=!respirando;}



void keyPressed() {
  if (key == 'r' || key == 'R') {
    respirando = false;
    distanciaX = 400;}}
