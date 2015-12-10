Ball b;                //declare a new ball called b
Ball c;                //declare a new ball called c
void setup() {
  size(900, 800);
  b = new Ball(10, width/2, height/2, 40); //initialize b as a new object of the Ball class
  c = new Ball(.1, width/4, height/2, 70);
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  c.display();         //call c's display() method
  b.move();
  c.move();
  b.bounceoff();
  c.bounceoff();
}