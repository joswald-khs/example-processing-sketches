ArrayList<Bouncer> bouncers = new ArrayList<Bouncer>();
Bouncer b;
float boundaryWidth = 10;
float boundaryHeight = 10;

class Bouncer {
  float x,y;
  float dx, dy;
  float r;  
  float leftBoundary, rightBoundary, topBoundary, bottomBoundary;
  
  Bouncer(float l, float r, float t, float b) {
    this.leftBoundary = l;
    this.rightBoundary = r;
    this.topBoundary = t;
    this.bottomBoundary = b;
    this.r = 2; 
    this.x = random(this.leftBoundary + this.r, this.rightBoundary - this.r);
    this.y = random(this.topBoundary + this.r, this.bottomBoundary - this.r);
    this.dx = random(-3,3);
    this.dy = random(-3,3);
       
  }
  
  void draw() {
    circle(this.x,this.y,this.r); 
  }
  
  void update() {
    if( x - r < this.leftBoundary || x + r > this.rightBoundary) {
      dx *= -1;
    }  
    if( y - r < this.topBoundary || y + r > this.bottomBoundary) {
      dy *= -1;
    }    
    x += dx;
    y += dy;    
  }
}

void setup() {
  size(1000,800);
  background(255);
  ellipseMode(RADIUS);
  noStroke();
  fill(0,1);
  for( float x = 0; x < width; x+=boundaryWidth ) {
    for( float y = 0; y < height; y+=boundaryHeight ) {
      bouncers.add( new Bouncer(x,x+boundaryWidth,y,y+boundaryHeight) );
    }
  }
}

void draw() {
  //background(255);
  for( Bouncer b : bouncers ) {
    b.update();
    b.draw();
  }

}
