int s = 30;

void setup() {
  size(800,800);
  //int limit = height/20;
  //for( int i = 0; i < limit; i++ ) {
  //for( int y = 0; y < height; y+=20 ) {
    //fill(random(256),random(256),random(256));
    //random positions
    //square(random(width),random(height),random(10,50));
    //neat little row
    //square(i*30,height/2-10,20);
    //square(width/2-10,i*20,20);
    //square(width/2,y,20);
  //}
  noLoop();
}

void draw() {
  background(0);
  for( int x = 0; x < width; x+=s ) {
    drawColumnOfSquares(x);
  }
}

void keyPressed() {
  if( key == ' ' ) {
    redraw();
  }
  
  if( keyCode == UP ) {
    s++;
    redraw();
  }
  
  if( keyCode == DOWN ) {
    s--;
    redraw();
  }
}

void drawColumnOfSquares(float x) {
  for( int y = 0; y < height; y+=s ) {
    fill(random(256),random(256),random(256));
    square(x,y,s);
  }
}
