int y1=800;
float rad1=100;
int x1;
int x2;
int y2=0;
float rad2=20;
void setup() {
  size(800, 800);
  background(150, 0, 150);  
  x1=1;
  x2=1;
}
void draw() {
  fill(150, 150, 0);
  //borders
  line(0, height/2, width, height/2); 
  line(width,0,width,height);
  
  //circles
  ellipse(x1,y1,rad1,rad1);
  ellipse(x2,y2,rad2,rad2);
  
  //move the circles
  y1=y1-8;
  y2++;
  rad1--;
  rad2=rad2+0.1;
  x1++;
  x2++;
  
  //reset if they are past the middle line 
  if (y1<400) {
    y1=height;
    rad1=100;
  } 
  if (y2>400) {
    y2=0;
    rad2=20;
  } 
  //reset if they are past the width
  if (x1>width){
    x1=0;
    rad1=100;
    
  }
  if(x2>width){
    rad2=20;
    x2=0;
  }
  
}
