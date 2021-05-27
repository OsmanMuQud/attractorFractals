PVector endPoints[];
PVector currPoint;
int numOfPoints=3;
float resolution=.5;
float ratio=2;
int dotsPerFrame=200;
void setup()
{
  size(800,800);
  background(0);
  endPoints=new PVector[numOfPoints];
  translate(width>>1,height>>1);
  for(int i=0;i<numOfPoints;i++)
  {
    endPoints[i]=new PVector((width>>1)*sin(i*2*PI/numOfPoints),(height>>1)*cos(i*2*PI/numOfPoints));
    fill(255,0,0);
    circle(endPoints[i].x,endPoints[i].y,10);
  
  }
  currPoint=new PVector(random(-width>>1,width>>1),random(-height>>1,height>>1));
  println(width>>1);
}
void draw()
{
  translate(width>>1,height>>1);
  scale(ratio/2);
  for(int i=0;i<dotsPerFrame;i++)
  { 
    int chance=floor(random(endPoints.length));
    fill(255,100);
    noStroke();
    circle(currPoint.x,currPoint.y,resolution);
    currPoint.x=(currPoint.x+endPoints[chance].x)/ratio;
    currPoint.y=(currPoint.y+endPoints[chance].y)/ratio;
  }
}
