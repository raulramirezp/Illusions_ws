void setup(){
  frameRate(1);
 size(570,570);
 background(255);
}

void draw(){
  int x =  60;
  int y = 20;
  int restoreValuex = 0;
  int widthRec = 40;
  int heightRec = 40;
  for(int j = 0; j < 13; j++){ //Filas 
    for(int i = 0; i < 7 ;i++){  //Columnas
     rectMode(CENTER);
     fill(0);
     rect(x, y, widthRec , heightRec);
     x += widthRec*2;
    }
    stroke(153);
    strokeWeight(2); 
    line(0,y+(widthRec/2) +2,width, y+(widthRec/2)+2);

    restoreValuex++;
    switch( restoreValuex ){
      case 1:
            x = 40;
            break;
      case 2:
            x = 20;
            break;
      case 3:
            x = 40;
            break;
      case 4:
            x = 60;
            restoreValuex = 0;
            break;
    }
    y += widthRec+4;
  
  }
}