void setup() {
  size(600,600);
  background(255,255,255);
}

void draw() {
  background(255,255,255);  // paints all the pixels this color
  pencil();
}

void pencil() {
  // (body) yellow, long, skinny rectangle, vertically oriented
  noStroke();
  fill(245,223,57);
  rect(285,100,30,300);
  //(eraser) red small rectangle at the top of the body of the pencil  
  fill(247,37,104);
  rect(285,70,30,30);
  //(tip) brown triangle at the bottom of the body with a small, silver triangle at the bottom bottom
  fill(216,168,98);
  triangle(285,400,315,400,300,450);
  fill(131);
  triangle(300,450,295,430,305,430);  
}
