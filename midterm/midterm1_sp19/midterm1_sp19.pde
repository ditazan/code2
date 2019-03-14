// Midterm SP2019
// Dita Zanelli
// :^)

// Q1

float radius;
int scale = 5; 
boolean shrink = true;

void setup(){
  size(500, 500); 
}

void draw(){
  background(0); 
  
  
  text(printText(), width*.1, height*.1); 
  ellipse(width/2, height/2, radius, radius); 
  
  if(shrink){
    radius += scale; 
    if( radius==width){
      shrink = false; 
    }
  }else{
    radius-= scale;
    if(radius == 0) {
      shrink = true; 
    }
  }
}

String printText(){
 if(shrink == true){
   return "GROW";
 }else{
   return "SHRINK";
 }
}


// Q2
