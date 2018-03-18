void setup(){
 size(700,500);
 rectMode(CENTER);
 noStroke();
 frameRate(40);
}

float relativePosition = width+width /8;
boolean back = false;

void draw(){
  background(255);
  float ancho = width /8;
  float alto = width / 60;
  float x = ancho;
  int firstFig = 2;
  if( back )
    relativePosition--;
  else
    relativePosition++;
  if( relativePosition > width | relativePosition < ancho ){
    back =! back;
  }
  for(float y = alto/2; y < height; y += alto){
      if( firstFig % 2 == 0 ){
     
        fill(0);
        rect(relativePosition,y,width/2,alto);
        
        fill(125,255,51);
        rect(x,y,ancho,alto);
      }
      else{
         rect(x*3,y,ancho,alto);
      }
      firstFig++;
    }
}