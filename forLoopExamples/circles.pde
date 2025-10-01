int numberOfCircles = 7;

void setup() {
  size(800,800);
  ellipseMode(RADIUS);
}

void draw() {
  background(255);
  circle(width/2,height/2,200);
  float deltaTheta = TWO_PI/numberOfCircles;
  for( float theta = 0; theta < TWO_PI; theta += deltaTheta ) {
    circle(
      width/2 + 200 * cos(theta),
      height/2 + 200 * sin(theta),
      40
    );
  }
  // *Almost* identical while loop
  //float theta = 0;
  //while(theta < TWO_PI) {
  //  circle(
  //    width/2 + 200 * cos(theta),
  //    height/2 + 200 * sin(theta),
  //    40
  //  );   
  //  theta += deltaTheta;
  //}
  //System.out.println(theta);
}

void keyPressed() {
  if( keyCode == UP ) {
    numberOfCircles++;
  }
  
  if( keyCode == DOWN ) {
    numberOfCircles--;
  }
}
