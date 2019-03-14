class Object {
  PVector pos, vel, accel; 

  Object() {
    pos = new PVector(width/2, height/2); 
    vel = new PVector(0, 0);
  }

  void move() {
    PVector mouse = new PVector(mouseX, mouseY);
    accel = PVector.sub(mouse, pos);

    accel.normalize();

    vel.limit(4); 
    vel.add(accel);
    pos.add(vel); 

  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(pos.x, pos.y, 30, 30);
  }

  void checkBoundaries() {
    if (pos.x > width) {
      pos.x = 0;
    } else if (pos.x < 0) {
      pos.x = width;
    }
  }
}
