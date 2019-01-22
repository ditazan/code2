float xpos,xs;

void setup(){
  size(600,300);
  xpos = width/2;
  xs = 8;
}

void draw(){
  background(0);
  ellipse(xpos, height/2, 50, 50); 
  xpos += xs; 
  xs = checkBoundaryX(xpos, xs);
}

float checkBoundaryX(float pos, float speed){
   if (pos > width -100/2|| pos < 0+100/2){
    speed *= -1;
  }
  return speed;
}
