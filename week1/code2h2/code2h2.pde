void setup(){
  size(600,600); 
}

void draw(){
  for(int i=0; i<width; i++){
     for (int j =0; j<height; j++){
       float distX = dist(i,0,mouseX,0);
       float distY = dist(j,0,mouseY,0);
       
       float r= map(distX, 0, width, 0,255);
       float g= map(distY, 0, height, 0,255);
       
       noStroke();
       fill(r,g,175);
       rect(i ,j,10,10); 
     }
  }
}
