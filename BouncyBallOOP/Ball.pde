class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 125;
    vel = PVector.random2D();
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move() {
    loc.add(vel);    //add vel to ball
  }
  void bounceoff() {
    if (loc.x-diam/2 <= 0 || loc.x+diam/2 >= width || loc.y-diam/2 <= 0 || loc.y+diam/2 >= height) {
      vel = vel.mult(-2.5);
    }
  }
}