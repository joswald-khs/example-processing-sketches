class Point {
  float x;
  float y;
  
  Point(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  String toString() {
    return "(" + x + ", " + y + ")";  
  }
  
  String toCSVLine() {
    return x +"," + y;
  }
  
  JSONObject toJSONObject() {
    JSONObject json = new JSONObject();
    json.setFloat("x",this.x);
    json.setFloat("y",this.y);
    return json;
  }
}
