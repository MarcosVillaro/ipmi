
//https://youtu.be/_mzlNaxZKS8

PImage Imagen;
int in = 40;
int i;
void setup () { 
  println ("Tocar teclado para cambiar tamaño de circulo y mouse \n para mover las lineas");
size (800, 400);
Imagen = loadImage ("Imagen.jpg");
}

void draw () {
  //println (mouseX, mouseY);
background (255);
image (Imagen, 0, 0, 400, 400);
//Lineas Horizontales
for (int l = 0; l < 200; l+=in) {
  noStroke();
  fill (0);
rect (400, l, 200, 17 );
for (int f = 200; f < 400; f+=in) {
rect (600, f, 200, 17); 
}}

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
