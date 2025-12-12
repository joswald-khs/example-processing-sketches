void setup() {
  size(600,600);
  ellipseMode(RADIUS);
}

void draw() {
  background(100);
  fill(255,255,0);
  sun(width/2,height/2,mouseX);
}

void sun(int x, int y, int r) {
  strokeWeight(1);
  circle(x,y,r);
  // placing things on a circle: 
  // x = xc + r * cos(theta)
  // y = yc + r * sin(theta)
  float theta = 0;
  float dt = PI/4;
  float r2 = 1.2*r;
  float triTheta = 0.1;
  
  float x1,y1,x2,y2,x3,y3;
  
  strokeWeight(4);
  stroke(255,255,0);
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta);
  y3 = y + r2 * sin(theta);
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta);
  y3 = y + r2 * sin(theta);
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta);
  y3 = y + r2 * sin(theta);
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta);
  y3 = y + r2 * sin(theta);
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta);
  y3 = y + r2 * sin(theta);
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta);
  y3 = y + r2 * sin(theta);
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta);
  y3 = y + r2 * sin(theta);
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta-triTheta);
  y1 = y + r * sin(theta-triTheta);
  x2 = x + r * cos(theta+triTheta);
  y2 = y + r * sin(theta+triTheta);
  x3 = x + r2 * cos(theta);
  y3 = y + r2 * sin(theta);
  
  triangle(x1,y1,x2,y2,x3,y3);
  
  theta = theta + dt;  
      
}
