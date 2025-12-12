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
  
  float x1,y1,x2,y2;
  
  strokeWeight(4);
  stroke(255,255,0);
  
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  x2 = x + r2 * cos(theta);
  y2 = y + r2 * sin(theta);
  
  line(x1,y1,x2,y2);
  
  theta = theta + dt;
  
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  x2 = x + r2 * cos(theta);
  y2 = y + r2 * sin(theta);
  
  line(x1,y1,x2,y2);
  
  theta = theta + dt;  
  
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  x2 = x + r2 * cos(theta);
  y2 = y + r2 * sin(theta);
  
  line(x1,y1,x2,y2);
  
  theta = theta + dt;  

  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  x2 = x + r2 * cos(theta);
  y2 = y + r2 * sin(theta);
  
  line(x1,y1,x2,y2);
  
  theta = theta + dt;  
  
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  x2 = x + r2 * cos(theta);
  y2 = y + r2 * sin(theta);
  
  line(x1,y1,x2,y2);
  
  theta = theta + dt;  
 
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  x2 = x + r2 * cos(theta);
  y2 = y + r2 * sin(theta);
  
  line(x1,y1,x2,y2);
  
  theta = theta + dt;  
  
  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  x2 = x + r2 * cos(theta);
  y2 = y + r2 * sin(theta);
  
  line(x1,y1,x2,y2);
  
  theta = theta + dt;  

  x1 = x + r * cos(theta);
  y1 = y + r * sin(theta);
  x2 = x + r2 * cos(theta);
  y2 = y + r2 * sin(theta);
  
  line(x1,y1,x2,y2);
  
  theta = theta + dt;    
}
