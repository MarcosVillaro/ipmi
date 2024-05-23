//Imagenes
PImage intro;
PImage primera;
PImage segunda;
PImage ultima;
//Variables
String estado;
String in;
String pri;
String segu;
String fin;
int tam;
color fill;
float x1, y1;
float x2, y2;
//Botón
int esquinaX = 220;
int esquinaY = 310;
int ancho = 200;
int alto = 80;

void setup () {
size (640, 480);

// Dar valores a las variables
tam = 0;
fill = color (0, 0, 0);
x1 = 900;
y1 = 350; 
x2 = 320;
y2 = 500;

//Cargar las imagenes
intro = loadImage ("intro.jpg"); 
primera = loadImage ("primera.jpg");
segunda = loadImage ("segunda.jpg");
ultima = loadImage ("ultima.jpg");
//Textos para los ditintos eventos
in = "Red Dead Redemption 2 es un videojuego \n creado por la desarrolladora \n Rockstar Games";
pri = "Es una historia de vaqueros \n y forajidos basada en el \n oeste americano, durante el año 1899, \n en la que jugamos como un \n miembro de una banda de forajidos \n que esta escapando de la ley";
segu = "Entre sus caracteristicas \n se destacan su historia, sus personajes, \n el tamaño de su mapa, y la \n exploración"; 
}


void draw () {
  background (0);
  
  
  // Primer Estado 
  if (frameCount/60 >= 0 && frameCount/60 <= 10) 
  estado = "intro";
if (estado == "intro") {
textSize( 45 );
image ( intro , 0, 0);
fill( 255 , 255 ,255 );
textAlign (CENTER, CENTER);
text( in, x1, y1 );
x1 += -1.5;}

// Segundo Estado
if (frameCount/60 >= 11 && frameCount/60 <=20) 
estado ="primera";
if (estado == "primera") {
fill (0);
textSize( 33 );
image (primera, 0, 0); 
text (pri, x2, y2);
y2 -= 1;
}


// Tercer Estado
if (frameCount/60>= 21 && frameCount/60 <=30)
estado = "segunda";
if (estado == "segunda") {
image (segunda, 0, 0);
fill (fill);
textSize (40);
text (segu, 320, 240);
//cambio de colores del texto
if (frameCount/60 > 22)
fill = color (255, 0, 0);
if (frameCount/60 > 25)
fill = color (0, 0, 255);
}

// Cuarto y Ultimo Estado
if (frameCount/60 >= 31 && frameCount/60 <=39)
estado = "ultima";
if (estado == "ultima") {
  if( tam < 140 ){
    tam += 1; 
    println(tam); }
    
image (ultima, 0, 0);
fill (0);
textAlign (CENTER, CENTER);
textSize (tam);
text ("FIN", 320, 240);
stroke (180);
strokeWeight (7);
fill (255);
rect (esquinaX, esquinaY, ancho, alto);
textSize (35);
fill (80);
text ( "¿REINICIAR?", 320, 350);
}
}

void mousePressed () {
// Botón, el cual reinicia todos los valores a sus estados iniciales (los del void setup)
if (mouseX > esquinaX && mouseX < esquinaX+ancho && mouseY > esquinaY && mouseY < esquinaY + alto) {
frameCount = 0;
tam = 0;
fill = color (0, 0, 0);
x1 = 900;
y1 = 350; 
x2 = 320;
y2 = 500;
}
}
