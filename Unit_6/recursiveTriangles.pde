
void setup() {
  size(800,800);
  Point midpoint = new Point(width/2,height/2);
  float r = 300;
  Point p1 = new Point(midpoint.x + cos(0) * r, midpoint.y + sin(0) * r);
  Point p2 = new Point(midpoint.x + cos(TWO_PI/3) * r, midpoint.y + sin(TWO_PI/3) * r);
  Point p3 = new Point(midpoint.x + cos(2*TWO_PI/3) * r, midpoint.y + sin(2*TWO_PI/3) * r);
  
  triangleThingy(p1,p2,p3);
}

// recursion 
void triangleThingy(Point p1, Point p2, Point p3) {
  // base case
  if( dist(p1.x, p1.y, p2.x, p2.y) > 5 ) {
    triangleFromPoints(p1,p2,p3); 
    Point mp12 = midPoint(p1,p2);
    Point mp13 = midPoint(p1,p3);
    Point mp23 = midPoint(p2,p3);
    triangleFromPoints(mp12,mp13,mp23);
    triangleThingy(p1,mp12,mp13);
    triangleThingy(p2,mp12,mp23);
    triangleThingy(p3,mp13,mp23);
  }
}

//void smallerTriangleThingy(Point p1, Point p2, Point p3) {
//  triangleFromPoints(p1,p2,p3); 
//  Point mp12 = midPoint(p1,p2);
//  Point mp13 = midPoint(p1,p3);
//  Point mp23 = midPoint(p2,p3);
//  triangleFromPoints(mp12,mp13,mp23);
//  evenSmallerTriangleThingy(p1,mp12,mp13);
//  evenSmallerTriangleThingy(p2,mp12,mp23);
//  evenSmallerTriangleThingy(p3,mp13,mp23);  
//}

//void evenSmallerTriangleThingy(Point p1, Point p2, Point p3) {
//  triangleFromPoints(p1,p2,p3); 
//  Point mp12 = midPoint(p1,p2);
//  Point mp13 = midPoint(p1,p3);
//  Point mp23 = midPoint(p2,p3);
//  triangleFromPoints(mp12,mp13,mp23);
//}

void draw() {
}

void triangleFromPoints( Point p1, Point p2, Point p3 ) {
  triangle(p1.x,p1.y,p2.x,p2.y,p3.x,p3.y);
}


Point midPoint( Point p1, Point p2 ) {
  return new Point( (p1.x + p2.x)/2, (p1.y + p2.y)/2 );
}

class Point {
  public final float x;
  public final float y;
  
  public Point(float x, float y) {
    this.x = x;
    this.y = y;
  }
}
