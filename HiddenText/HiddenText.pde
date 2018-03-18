  
PGraphics pg;
PGraphics pg2;
int diametro = 5;
boolean printMessage = false;

void setup(){
 /* tamaño para diametro 5, si se aumenta el diametro se debe cambiar el tamaño de acuerdo a: size = (diametro*3*51, diametro*3*34 )
 dado que el metodo size no acepta variables del código como parametro */
 size(810,540); 
 pg = createGraphics(810, 510);
 pg2 = createGraphics(810,30);
}

public void printMessage( String[] lines){
  int x = 0;
  int y = 0;
  for (int i = 0; i < lines.length; i++) {
    y+=diametro*3;
    if ( y > pg.height )
      y = diametro*3;
    for(int j = 0; j <= lines[i].length(); j++){
        x +=diametro*3;
        if(x > pg.width )
           x = diametro*3;
      if( j<lines[i].length() && lines[i].charAt(j) == '#'){
       pg.ellipseMode(RADIUS); 
       pg.fill(0);
       pg.ellipse(x,y,diametro-1, diametro-1);
       }
      else{
       pg.ellipseMode(RADIUS); 
       pg.fill(0);
       pg.ellipse(x,y,diametro, diametro);
      }
    }
  } 
}

public void printPoints(String[] lines){
  int x = 0, y = 0;
   for (int i = 0; i < lines.length; i++) {
    y+=diametro*3;
    if ( y > pg.height )
      y = diametro*3; //<>//
    for(int j = 0; j <= lines[i].length(); j++){
        x +=diametro*3;
        if(x > pg.width )
           x = diametro*3;
       pg.ellipseMode(RADIUS); 
       pg.fill(0);
       pg.ellipse(x,y,diametro, diametro);
     }
   }
}
public void draw(){  
   translate(-diametro,-diametro);
   background(255);
   pg2.beginDraw();
   pg2.textMode(SHAPE);
   pg2.textSize(32);
   pg2.fill(0);
   pg2.text("Click me!",350, pg2.height);
   pg2.endDraw();
   String[] lines = loadStrings("data.txt");
   pg.beginDraw();

   if(printMessage)
     printMessage(lines);
   else
     printPoints(lines);
  
  pg.endDraw();
  image(pg,0,30,pg.width, pg.height);
  image(pg2,0,0, pg2.width, pg2.height);
}

 //<>//
void mousePressed() {
  pg.beginDraw();
  pg.clear();
  pg.endDraw();
  printMessage = !printMessage;
}