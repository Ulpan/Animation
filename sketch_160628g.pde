Ball ball[] = new Ball[100];    //Array
 
void setup() {
  size(400,400);
 
  for(int i=0; i<ball.length; i++) {
    ball[i] = new Ball((int)random(0,400),(int)random(0,400),(int)random(-3,3),(int)random(-3,3));
  }
}
 
void draw() {
  background(0);
  for (int i=0; i<ball.length; i++){
    ball[i].move();
    ball[i].display();
  }
 
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
    fill(random(200),random(255),random(200));
    ellipse(x,y,20,20);
  }
 
  void move() {
    x = x + xSpeed;
    y = y + ySpeed;
 
    if (x>400) {
      xSpeed = xSpeed * -1;
    }
   if (y>400) {
     ySpeed = ySpeed * -1;
    }
    if (x<0) {
      xSpeed = xSpeed * -1;
    }
   if (y<0) {
     ySpeed = ySpeed * -1;
    }
  
}
}