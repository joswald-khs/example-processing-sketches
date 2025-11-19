ArrayList<ArrayList<Bouncer>> bouncers = new ArrayList<ArrayList<Bouncer>>();
Bouncer b;
float boundaryWidth = 40;
float boundaryHeight = 40;

class Bouncer {
  float x,y;
  float dx, dy;
  float r;  
  float leftBoundary, rightBoundary, topBoundary, bottomBoundary;
  
  // we initialize our Bouncer objects with their boundaries
  Bouncer(float l, float r, float t, float b) {
    this.leftBoundary = l;
    this.rightBoundary = r;
    this.topBoundary = t;
    this.bottomBoundary = b;
    this.r = 2; 
    // then we use the boundaries to randomly position the circle within
    //   the boundaries. 
    this.x = random(this.leftBoundary + this.r, this.rightBoundary - this.r);
    this.y = random(this.topBoundary + this.r, this.bottomBoundary - this.r);
    this.dx = random(-3,3);
    this.dy = random(-3,3);
       
  }
  
  void draw() {
    noStroke();
    fill(200);
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
  background(240);
  ellipseMode(RADIUS);
  noStroke();
  fill(100);
  int numberOfColumns = (int) (width/boundaryWidth);
  int numberOfRows = (int) (height/boundaryHeight);
  
  for( int i = 0; i < numberOfRows ; i++ ) {
    ArrayList<Bouncer> newRow = new ArrayList<Bouncer>();
    for( int j = 0; j < numberOfColumns ; j++ ) {
      float left = j * boundaryWidth;
      float right = left + boundaryWidth;
      float top = i * boundaryHeight;
      float bottom = top + boundaryHeight;
      newRow.add( new Bouncer(left, right, top, bottom) );
    }
    bouncers.add( newRow );
  }
}

void draw() {
  background(240);
  for( ArrayList<Bouncer> row : bouncers ) {
    for( Bouncer b : row ) {
      b.update();
      b.draw();
    }
  }
}

void mouseMoved() {
  int row = (int) map( mouseY, 0, height, 0, bouncers.size() );
  int col = (int) map( mouseX, 0, width, 0, bouncers.get(0).size() );
  // ArrayList<Bouncer> selectedRow = bouncers.get(row);
  // Bouncer selectedBouncer = selectedRow.get(col);
  Bouncer selectedBouncer = bouncers.get(row).get(col);

  noFill();
  stroke(255,0,0);
  rect(selectedBouncer.leftBoundary, 
    selectedBouncer.topBoundary, 
    selectedBouncer.rightBoundary - selectedBouncer.leftBoundary,
    selectedBouncer.bottomBoundary - selectedBouncer.topBoundary ); 
}
