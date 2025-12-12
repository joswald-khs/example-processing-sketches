ArrayList<Point> points = new ArrayList<Point>(); 
JSONObject json  = new JSONObject();

void setup() {
  size(600,600);
  fill(0);
  background(255);
}

void draw() {
  circle(mouseX,mouseY,20);
  points.add(new Point(mouseX,mouseY));
}

void keyPressed() {
  if( key == 'o' ) {
    noLoop();
    background(255);
    parseFile();
  }
    
  
  if( key == 's' ) {
    noLoop();
    background(255);  
    json.setInt("canvasWidth", width);
    json.setInt("canvasHeight", height);
    JSONObject backgroundColor = new JSONObject();
    backgroundColor.setInt("r",255);
    backgroundColor.setInt("g",255);
    backgroundColor.setInt("b",255);
    json.setJSONObject("backgroundColor",backgroundColor); 
    JSONArray jsonPoints = new JSONArray();
    for( int i = 0; i < points.size(); i++ ) {
      jsonPoints.setJSONObject(i, points.get(i).toJSONObject() );
    }
    json.setJSONArray("points",jsonPoints);
    saveJSONObject(json, "points.json");
  }
  
  if( key == 'd' ) {
    //System.out.println(points);
    for( Point p : points ) {
      System.out.println(p);
      circle(p.x, p.y, 20);
    }
    redraw();
  }
}

void parseFile() {
  JSONObject json = loadJSONObject("points.json");
  JSONArray jsonPoints = json.getJSONArray("points");
  for( int i = 0; i < jsonPoints.size(); i++ ) {
    JSONObject point = jsonPoints.getJSONObject(i);
    circle( point.getFloat("x"), point.getFloat("y"),20);
  }
}
