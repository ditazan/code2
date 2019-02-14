// Question 1

// four diff buttons 
String myStrings [] = {"b","o","o","b"};
float xPos[] = new float[4]; 
int size = 100; 

void setup(){
  size(600,600);
  
  float spacing = width/4; 
  
  for( int i =0; i<4; i++){
    xPos[i] = i*spacing +size*.75; 
  }
}

int index=0;
void draw (){
  background(255); 
  for( int i =0; i<4; i++){
    if(dist(mouseX, mouseY, xPos[i], 100)<=size
    && mousePressed){
      index=i; 
      println(i);
      fill(255);
    }else{
      fill(0);
    }
    ellipse(xPos[i], 100, size, size);
  }
  fill(0);
  text(myStrings[index], width/2-textWidth(myStrings[index])/2, height/2);
}
