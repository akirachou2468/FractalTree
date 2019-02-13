private double fractionLength = .8; 
private int smallestBranch = 20; 
private double branchAngle = .3;  
public void setup() 
{   
  size(650,500);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(255);   
  line(325,500,325,375);   
  //drawBranches(325,375,90,2.5*Math.PI/2);
  //drawBranches(325,375,90,3.5*Math.PI/2);
  drawBranches(325,375,70,3*Math.PI/2);
  drawBranches(325,375,80,3*Math.PI/2);
  drawBranches(325,375,90,3*Math.PI/2);
  drawBranches(325,375,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  
  double angle1;
  double angle2;
  
  angle1 = angle + branchAngle;
  angle2 = angle - branchAngle;
  
  branchLength = branchLength*fractionLength;

  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  
  if (branchLength > smallestBranch){
    drawBranches(endX1, endY1,branchLength,angle1);
    drawBranches(endX2, endY2,branchLength,angle2);
  }
  
} 
