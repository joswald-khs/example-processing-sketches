void setup() {
  size(400,400);
}

void draw() {
  background(100);
  triangleGradient(width/2, 10, 100);
}

void triangleGradient(float x, float y, int h) {
  for( int i = 0; i < h; i++ ) {
    stroke(255,255,0,map(i,0,h,255,0));
    line( x - i, y + h + i, x + i, y + h + i );
  }
}
