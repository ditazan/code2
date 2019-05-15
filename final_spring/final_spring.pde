int numWalkers = 150;
//using array list - collaction of objects
ArrayList <Walker> walkers = new ArrayList <Walker>();

int dim;
int sceneNumber = 0;
PFont myFont; 

Rose r;
ArrayList <Rose> myRose;

PImage img;

float timeInterval, timePast;

int imgAlpha = 250;
int imgFade = 5;

float numc = 100;
float angle = 0.0;
float incr = 0.05; 
float size;
int scalar;
float offset;

void setup() {
  size(1000, 800);

  timePast= millis();
  timeInterval = 2000.0f;

  dim = width/2;
  r = new Rose();

  myRose = new ArrayList<Rose>();

  for (int i = 0; i<numWalkers; i++) {
    walkers.add (new Walker (random(0, width), 
      random (0, height), 
      random (10, 20), 
      random (10, 20)));
  }

  img = loadImage("person.png");

  offset =height/2;
  scalar =height/2 - 50;
  size = width/numc;
}

void draw() {
  switch(sceneNumber) {
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
    scene3();
    break;

  case 4:
    scene4();
    break;

  case 5:
    scene5();
    break;

  case 6:
    sceneNumber = 0;
    break;
  }
}

void mousePressed() {
  sceneNumber++;
}

void scene0() {
  background(247, 167, 133 );

  //String[] fontList = PFont.list();
  //printArray(fontList);
  myFont = createFont("Avenir-Medium", 36);
  textFont(myFont);
  textSize(36);
  fill(255, 180);
  text("arch", 100, 100); 
  textSize(16);
  fill(255, 130);
  text("by bunny grotell", 101, 120);
  text("a visual interpretation by dita zanelli", 101, 160);
}


void scene1() {
  background(56, 80, 74 );
  for (Walker w : walkers ) {
    w.display();
    w.walk();
  }
  fill(255, 130);
  String s = "I am many moons Hung on strings";
  text(s, 100, 500, 140, 200);
  text("Like Gaudi's weights", 100, 575);
}


void scene2() {
  background(105, 105, 105 );
  for (int i = 0; i<myRose.size(); i++) {
    Rose r = myRose.get(i);
    r.display(width/2, height/2);
    r.fall();
    if (r.isAlive() == false) {
      myRose.remove(i);
    }
  }

  if (frameCount% 10 == 0) {
    myRose.add(new Rose());
  }

  text("This suspension is against time", 100, 100);
  text("Where everything falls", 300, 450);
  text("Against some wisp of uncertainty", 500, 500);
}


void scene3() {
  background(3, 1, 67);
  imgFade();
  tint(255, imgAlpha);
  image(img, 20, 10, 950, 750);
  text("It revels - in the mad comfort", 500, 100);
  text("Of your narrowing eye", 200, 400);
  text("Against your silver skin", 350, 675);
  text("And this inconstant pull", 800, 770);
}

void scene4() {
  background(222, 175, 105 );
  text("Open waves, all frequencies", 10, 20);
  text("With no exception, invert", 800, 790);
 
  for (int i =0; i < numc; i++) {
    float y1 = offset + cos(angle+0.1*i)* scalar;
    fill(255, 150);
    noStroke();
    ellipse(size*i, y1, size, size);
  }

  angle += incr;
}

void scene5() {
  background(187, 222, 128 );
  textSize(36);
  text("If this is nature, what of it?", 270, height/2);
}

void imgFade() {
  if (millis()> timeInterval +timePast) {
    timePast = millis();
    imgFade *= -1;
  }
  imgAlpha += imgFade;
}
