final int CIRCLE_SIZE = 300;
final int degreesPerClick = 10;
final float deltaVelocity = degreesPerClick * PI / 180.0;

void setup(){
  frameRate(50);
  size(1100, 600);
}

float velocity = deltaVelocity;
float theAngle = 0;

void drawCircle(float angle){
   pushMatrix();
     rotate(angle);
     ellipseMode(CENTER);
     noStroke();
     fill(255, 0, 0);
     arc(0, 0, CIRCLE_SIZE, CIRCLE_SIZE, 0, 2.0 * PI / 3.0);
     
     fill(0, 255, 0);
     arc(0, 0, CIRCLE_SIZE, CIRCLE_SIZE, 2.0 * PI / 3.0, 4.0 * PI / 3.0);
     
     fill(0, 0, 255);
     arc(0, 0, CIRCLE_SIZE, CIRCLE_SIZE, 4.0 * PI / 3.0, 2 * PI);
   popMatrix();
}

int toDegrees(float radians){
  return Math.round(radians * 180 / PI);
}

void drawText() {
   textAlign(CENTER);
   textSize(20);
   text("Press click to increase the velocity",width/2, -50); 
   text("Angular velocity: " + toDegrees(velocity) + "°", width/2, 0); 
   text("At about 110°", width/2, 80);
   text("You should see the wheel spinning backwards", width/2, 100);
}

void increaseAngle() {
    theAngle += velocity;
}

void draw(){
   background(168, 168, 168);
   translate(300, 300);
   drawCircle(theAngle);
   drawText();
   increaseAngle();
}

void mousePressed(){
   velocity += deltaVelocity; 
}
