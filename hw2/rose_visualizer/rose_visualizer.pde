
//Rose rose1= new Rose(4,6,100);
//Rose rose2 = new Rose(2,5,100);
//Rose rose3 = new Rose(3,6,100);

//void setup() {
//  background(51);
//  size(600, 600);
//}

//void draw() {

//  rose1.display(140,height/2);
//  rose2.display(420,height*3/4);
//  rose3.display(420,height/4);
//}

Rose r;
ArrayList <Rose> myRose;

void setup() {
  size(800, 600);

  r = new Rose();

  myRose = new ArrayList<Rose>();
}

void draw() {
  background(88, 112, 115);
  for (int i = 0; i<myRose.size(); i++) {
    Rose r = myRose.get(i);
    r.display(width/2,height/2);
    r.fall();
    if (r.isAlive() == false) {
      myRose.remove(i);
    }
  }

  if (frameCount% 10 == 0) {
    myRose.add(new Rose());
  }
}
