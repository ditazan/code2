 int sceneNumber = 0;
int fit = 0;

void setup() {
  size(500,500);
}

void draw() {
  switch(sceneNumber){
    case 0 : 
      scene0();
    break;
    
    case 1:
      scene1();
    break;
    
    case 2:
      scene2();
    break;
    
    case 3:
    sceneNumber = 0;
    break;
  }
  switch(fit){
    case 0 : 
      fit0();
    break;
    
    case 1:
      fit1();
    break;
    
    case 2:
      fit2();
    break;
    
    case 3:
    fit = 0;
    break;
  }
}

void mousePressed() {
  sceneNumber++;
}

void keyPressed() {
  fit++;
}

void scene0() {
  background(100-(mouseY-100),255-(mouseY-50),255);
  // as the mouse goes up and down the color goes from lighter blue to darker blue
  // the higher the mouse on the y coord, the lighter the background becomes

fill(255,242,0);
stroke(252,214,98);
ellipse(110, mouseY, 40,40);
  // this is the sun which follows the mouse's y coord

fill(239,242,196);
stroke(212,214,184);
ellipse(110, mouseY-300, 40,40);
  // this is the moon wich also follows mouse's y coord

fill(255, 255, 255, 50);
noStroke();
ellipse(110, 125, 100, 80);
ellipse(120, 125, 180, 90);
ellipse(110, 125, 100, 180);
  // "glow" around moon and sun

fill(114,214,133);
stroke(97,162,109);
rect(0,300,500,250);
  // base for grass

fill(245,62,101);
stroke(245,62,101);
rect(290, 100, 210, 100);
  // roof that faces audience

fill(234,218,234);
stroke(211,119,195);
rect(310, 200, 200, 200);
  //house wall that faces audience
  
 
quad(310, 200, 270, 170, 270, 370, 310, 400);
// "front" of house

stroke(245,62,101);
fill(245,132,101);
triangle(310, 200, 270, 170, 290, 100);
  // traingular part of roof

rect(350, 260, 60, 50);
rect(450, 260, 60, 50);

player();
}

void scene1() {background(207, 255, 188);
  
  // grass detail
  // repeated rows using for(); 
    for(int i = 0; i<5; i+=2){
      grass(100 +100*i, 100);
    }
    for(int i = 0; i<6; i+=2){
      grass(0 +100*i, 200);
    }
    for(int i = 0; i<5; i+=2){
      grass(100 +100*i, 300);
    }
    for(int i = 0; i<6; i+=2){
      grass(0 +100*i, 400);
    }
    for(int i = 0; i<5; i+=2){
      grass(100 +100*i, 500);
    }
    for(int i = 0; i<6; i+=2){
      grass(0 +100*i, 600);
    }
  
  // river
  fill(167, 221, 255);
  noStroke();
  rect(350,-80, 320, 350, 80);
  
  // rave island
  fill(207, 255, 188);
  noStroke();
  rect(425,-80, 300, 275, 60);
 
  // pathway
    for(int i = 0; i<6; i+=2){
      path(200+ 40*i, 400);
    }
    for(int i = 0; i<7; i+=1){
      path(150, 150+ 40*i);
    }
    for(int i = 0; i<6; i+=2){
      path(150+ 40*i, 100);
    }
  
  // house
  fill(255, 186, 139);
  stroke( 252, 155, 89);
  rect(330, 330, 100, 100);
  triangle(330, 330, 430, 330, 380, 280);
  
  //bridge
  fill(126, 61, 28);
  stroke (108, 55, 28);
  rect(350, 70, 75, 50);
  
  // rave ! ! !
  if (mouseX> 400 && mouseY<250){
    fill(random(255), random(255),random(255));
    noStroke();
    rect(425,-80, 300, 275, 60);
  }
  player();
}

void scene2() {
  background(105,105,105 );
  strokeWeight(1);
  fill(180,234,201,100);
  stroke(255,255,0);
  rect(40, 100, 70, 500, 15, 15, 0, 0);
 
  

ellipse(75, 75, 70, 70);
 // head
  //ellipse(a, b, c, d);
    // a is x coord of the ellipse
    // b is y coord of ellipse
    // c is width by default
    // d is height of ellipse by default

arc(75, 85, 30, 20, 0, PI);
 // smile
  // arc(a, b, c, d, start, stop);
    // arc(a, b, c, d, start, stop, mode);
    // a is x coord of arc ellipse
    // b is y coord of arc ellipse
    // c is width of arc ellipse by default
    // d is height of arc ellipse by default
    // start is angle to start, specified in radians
    // stop is angle to stop, specified in radians

line(75, 72, 80, 77);
line(75, 78, 80, 77);
 // nose
  // line(x1, y1, x2, y2)
    // x1 is the x start coord, x2 is the x stop coord
    // y1 is the y start coord, y2 is the y stop coord
    // line(x1, y1, x2, y2, z1, z2)
    // z1 is the z coord of start, z2 is the z coord of the stop, for 3d
strokeWeight(10);
point(60, 65);
point(90, 65);
 // eyes
  // point(x, y)
    // point(x, y, z)
    // z coord of point, for 3D

strokeWeight(1);
triangle(60, 44, 75, 25, 90, 44);
 // party hat
triangle(67, 110, 75, 120, 83, 110);
 // top of tie
  //triangle(x1, y1, x2, y2, x3, y3)
    // x1, y1 first pt
    // x2, y2 second pt
    // x3, y3 third pt

ellipse(75.5, 25, 7, 7);
 //ball on top of party hat

quad(67, 130, 75, 120, 83, 130, 75, 140);

player();
}

void fit0(){
fill(255, 246, 121);
  stroke(240, 240, 70);
  triangle(mouseX -24 , mouseY -55, mouseX +24, mouseY -55,mouseX, mouseY-90);
  
  // party hat topper
  fill(255, 0, 0);
  noStroke();
  ellipse(mouseX, mouseY-95, 15, 15);

}
void fit1(){
  fill(136, 86, 206);
  stroke(170, 121, 234);
  triangle(mouseX -24 , mouseY -55, mouseX +24, mouseY -55,mouseX, mouseY-90);
  
  // party hat topper
  fill(255,255,0);
  noStroke();
  ellipse(mouseX, mouseY-95, 15, 15);

}
void fit2(){
  fill(33, 38, 255);
  stroke(110, 115, 232);  
  triangle(mouseX -24 , mouseY -55, mouseX +24, mouseY -55,mouseX, mouseY-90);
  
  // party hat topper
  fill(255,165,0);
  noStroke();
  ellipse(mouseX, mouseY-95, 15, 15);

}
// defining grass detail function
void grass(float x, float y){
  noFill();
  stroke(178, 219, 161);
  arc(x, y, 10,30,PI, PI*2);
  arc(x +10, y, 10,30,PI, PI*2);
  arc(x -10, y, 10,30,PI, PI*2);
}
// defing how handsome ur friend is
void player(){
  
  // head base
  fill(244, 232, 255);
  stroke(219, 178, 255);
  ellipse(mouseX, mouseY-30, 70, 70);
  
  //party hat base
  fill(255, 246, 121);
  stroke(240, 240, 70);
  triangle(mouseX -24 , mouseY -55, mouseX +24, mouseY -55,mouseX, mouseY-90);
  
  // party hat topper
  fill(255, 0, 0);
  noStroke();
  ellipse(mouseX, mouseY-95, 15, 15);
  
  // eyes
  fill(0, 10, 110);
  stroke(0, 10, 110);
  ellipse(mouseX- 15, mouseY -40, 3,3);
  ellipse(mouseX+ 15, mouseY -40, 3,3);
  
  // smile
  noFill();
  arc(mouseX, mouseY-24, 30, 20, 0, PI);
  
  // nose
  line(mouseX, mouseY-33, mouseX+3, mouseY-30);
  line(mouseX, mouseY-30, mouseX+3, mouseY-30);
  
  }
  
//pathway
void path(float x, float y){
  fill(171, 186, 188);
  stroke( 146, 156, 157);
  ellipse(x, y, 20, 10);
  ellipse(x +40, y- 20, 20, 10);
}
