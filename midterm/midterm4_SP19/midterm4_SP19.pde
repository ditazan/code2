int state = 0;

void setup(){
  size(1200,900);
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  
}
void draw(){
  switch (state) {
  case 0:
    scene0();
    break;
  case 1:
    scene1();
    break;
  case 2:
    scene2();
    break;
  case 3:
    scene3();
    break;
  case 4:
    scene4();
  default:
    break;
  }
} 

void keyPressed() {
  switch (state) {
  case 0:
    if (key == ' ') {
      state = 1;
    }
    break;
  case 1:
    if (key == ' ') {
      state = 2;
    }
    break;
  case 2:
    if (key == ' ') {
      state = 3;
    }
    break;
  case 3:
    if (key == ' ') {
      state = 4;
    }
    break;
  case 4:
    if (key == ' ') {
      state = 0;
    }
  default:
    break;
  }
}

void scene0(){
background(243, 245, 153);
  
}

void scene1(){
  background(187, 232, 185);
}

void scene2(){
  background(232, 203, 185);
}

void scene3(){
  background(202, 185, 232);
}

void scene4(){
  background(185, 232, 231);
}
