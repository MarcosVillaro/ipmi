PImage paisaje;

void setup (){
  size( 800, 400);
  paisaje = loadImage ("paisaje.jpg");
 }

void draw (){
  background ( 91, 175, 193);
  image(paisaje, 0, 0);
  
   // Nubes
  fill(255,255,255);
  strokeWeight (1);
  stroke (0, 0, 0);
  ellipse(750, 50, 300, 200);
  ellipse (500, 35, 100, 80);
  
   // Montaña (Fondo)
  fill(101,129,111);
  stroke (255, 255, 255);
  triangle ( 680, 80, 400, 100, 800, 100);
  noStroke();
  rect(400, 100, 400, 106);
  stroke (66, 85, 73);
  fill ( 83, 103, 90);
  triangle (740, 120, 600, 200, 890, 200);
  triangle (490, 110, 410, 200, 570, 200);
  noStroke();
  
  //Pasto y tierra(?
   fill( 201,125,53);
  triangle ( 590, 160, 400, 200, 800, 200 );
  rect(400,200,400, 20);
  fill(174, 120, 23);
  noStroke();
  rect( 400, 220, 500, 700);
  fill (116, 172, 43);
  rect( 400, 280, 750, 700);
  
  //Vegetacion 
  stroke (0, 100, 0);
  strokeWeight (6);
  //1
  line (600, 270, 600, 320); 
  line (585, 280, 600, 320);
  line (615, 280, 600, 320);
  //2
  line (700, 300, 700, 260);
 line (700, 300, 685, 265);
 line (700, 300, 715, 265); 
  //3
  line (450, 350, 450, 320);
  line (450, 350, 440, 325);
  line (450, 350, 460, 325);
  //4
  line( 500, 300, 500, 260);
  line( 500, 300, 485, 265);
  line(500, 300, 515, 265);
}

  
