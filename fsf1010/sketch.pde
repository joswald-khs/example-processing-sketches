// this code presumes the inclusion of the Point class (not here)
// you'll also need a JSON file with an array called points (included). 
// The JSON file was generated from the jsonExample code.

ArrayList<Point> points = new ArrayList<Point>(); 
JSONObject json  = new JSONObject();
float averageX = 0.0;
float averageY = 0.0;
float minDist = Float.MAX_VALUE;
float maxDist = Float.MIN_VALUE;
void setup() {
  size(600,600);
  fill(0);
  background(255);
  parseFile();
  for( Point p : points ) {
    averageX += p.x; // total
    averageY += p.y;
  }
  averageX /= points.size();
  averageY /= points.size();
  for( Point p : points ) {
    float d = dist(p.x, p.y, averageX, averageY);
    if( d < minDist ) {
      minDist = d;
    }
    if( d > maxDist ) {
      maxDist = d;
    }
  }
  noLoop();
  noStroke();
}

void draw() {
  color c1 = color(255,0,0,128);
  color c2 = color(0,255,0,128);
  noStroke();
  fill(255,0,0,32);
  for( Point p : points ) {
    float x = map( dist(p.x,p.y,averageX,averageY), minDist, maxDist, 0, 1 );
    color c = lerpColor( c1, c2, x );
    fill(c);
    circle(p.x,p.y,20);
  }
  noFill();
  stroke(0);
  circle(averageX,averageY,40);
}

void keyPressed() {

}

void parseFile() {
  JSONObject json = loadJSONObject("points.json");
  JSONArray jsonPoints = json.getJSONArray("points");
  for( int i = 0; i < jsonPoints.size(); i++ ) {
    JSONObject point = jsonPoints.getJSONObject(i);
    points.add( new Point(point.getFloat("x"), point.getFloat("y")));
  }
}
