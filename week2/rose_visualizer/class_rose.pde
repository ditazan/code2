class Rose {
  // n and d control petal numbers
  float n, d;
  // angle size and radius
  float a, s, radius;
  // x and y coord to draw lines that connect the circle
  float x, y;
  float q, t;
  float gravity;
  float o=255;

  Rose () {
    n = random(1, 7);
    d = random(1, 9);
    a = 0; // angle
    s = random(100, 400); // size of pattern 
    radius = s * cos(n/d * a);
    x = radius * cos(a);
    y = radius * sin(a);
    q= width/2;
    t=height/2;
    gravity = .3;
  }

  void display(int radiusX, int radiusY) {
    if (mousePressed) {
      n++;
      d++;
    }
    pushMatrix();
    translate(radiusX, radiusY);



    float prevX = x;
    float prevY = y;
    // save the previous x and y 

    stroke(255);
    noFill();
    strokeWeight(1);
    radius = s * cos(n/d * a);
    x = radius * cos(a);
    y = radius * sin(a);
    line(x, y, prevX, prevY);
    a += 0.1;
    popMatrix();
  }


  boolean isAlive() {
    if (q==height/2) {
      return false;
    } else {
      return true;
    }
  }
  void fall() {
    y += gravity;
    o -=.1;
  }
}
