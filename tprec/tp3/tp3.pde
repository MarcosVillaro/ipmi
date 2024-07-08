
//VIDEO PRINCIPAL: https://youtu.be/_mzlNaxZKS8
// VIDEO CAMBIOS PARA RECUPERATORIO: https://youtu.be/5lTJLz7Jp0Y

PImage Imagen;
int in = 40;
int i;
int l;
void setup () { 
  println ("Tocar teclado para cambiar tamaño de circulo y mouse \n para mover las lineas");
size (800, 400);
Imagen = loadImage ("Imagen.jpg");
}

void draw () {
  //println (mouseX, mouseY);
  ValorEnConsola ("in", in);
background (255);
image (Imagen, 0, 0, 400, 400);
//Lineas Horizontales
{
LineasH (0, 400 ); 
LineasH (200, 600);
}


//Lineas Verticales
for (int g = 600;g < 800; g+=in){
  noStroke();
  fill(0);
rect (g, 0, 17,200 );
for (int h = 400; h < 600; h+=in){
rect (h, 200, 17, 200);
}
}

//Circulo Medio
for (i = 210; i >28; i -= 76){
  stroke (0);
  strokeWeight(20);
fill (255);
ellipse ( 600 , 200, i, i);
}

// Animacion Mover Lineas
if (mousePressed == true){
in ++;
}
if (in >= 200){
in = 40;
} else if (mousePressed == false){
in =40;    
}

// Modificar el tamaño del circulo 
if (keyPressed == true) {
  float d = dist(mouseX, mouseY, 600, 200);
float tam = map(d, 0, 500, 210, 0);
  ellipse(600, 200, tam, tam);
}}
