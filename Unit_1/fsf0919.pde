float angle;
float t;

void setup() {
  size(600,600);
  //angle = random(360);
  t = random(10000); 
}

void draw() {  
  background(100);
  angle = map(noise(t),0,10,0,360);
  push();
  translate(45,70);
  rotate(radians(angle));
  rect(-25,-50,50,100);
  // rect(20,20,50,100);
  pop();
  t = t + 0.001;
}
