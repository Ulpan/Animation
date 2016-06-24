
  int x=0;
  int y=0;
  int dx=3;
  int dy=9;
  
  void setup(){
    size(300,300);
}
void draw(){
 fill(x,y,y); 
 ellipse(x,y,random(35),random(40));
 if((x > 300) || (x<0))
   dx= dx* - 1;
 x = x+ dx;
 y=y+dy;
 if((y>300) || (y<0))
   dy=dy* - 1;
  
}
  