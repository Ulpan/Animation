Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;
Ball ball5;
Ball ball6;
Ball ball7;
Ball ball8;

 
void setup() {
  size(400,400);
  ball1 = new Ball(20,50, 2, 2);
  ball2 = new Ball(30,50, 3, 2);
  ball3 = new Ball(60,70, 1, 3);
  ball4 = new Ball(80,90, 1, 1);
  ball5 = new Ball(100,80,2,2);
  ball6 = new Ball(40,60,3,1);
  ball7 = new Ball(90,40,2,2);
  ball8 = new Ball(50,10,3,4);
}
 
void draw() {
  background(0,0,0);
  ball1.display();
  ball1.move();
  ball2.display();
  ball2.move();
  ball3.display();
  ball3.move();
  ball4.display();
  ball4.move();
  ball5.display();
  ball5.move();
  ball6.display();
  ball6.move();
  ball7.display();
  ball7.move();
  ball8.display();
  ball8.move();
}

 
class Ball {
  int x;
  int y;
  int xSpeed;
  int ySpeed;
 
  Ball(int tempX, int tempY, int xspeedtemp, int yspeedtemp) {
    x = tempX;
    y = tempY;
    xSpeed = xspeedtemp;
    ySpeed = yspeedtemp;
 
  }
 
  void display() {
    fill(random(255),random(255),random(255));
    ellipse(x,y,20,20);
  }
 
  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
    if (x > 400) {
      x = xSpeed* -1;
      y = ySpeed* -1;
    }
    if (y> 400){
      x = xSpeed* -1;
      y = ySpeed* -1;
    }
 
    //if (x>400) {
    //  xSpeed = xSpeed * -1;
    //}
  }
}