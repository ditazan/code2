float angle = 0.0;
float incr = 0.05;
int scalar;

void setup(){
  size(600,300);
  scalar =width/2 - 50;
}
void draw(){
  background(0);
  
  
  //ellipse(x1, height/2 -60,100,100); 
  
  float x1 = width/2 + sin(angle)* scalar;
  
  ellipse(x1, height/2, 50, 50);
  
  angle += incr;
}
