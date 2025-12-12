void setup() {
  size(600,600);
  background(255,255,255);
}

void draw() {
  background(255,255,255);  // paints all the pixels this color
  pencil(50,50,mouseX,mouseY);
}

void pencil(int x, int y, int w, int h) {
  float bodyHeight = h - 2.33 * w;
  noStroke();
  //(eraser) red small rectangle at the top of the body of the pencil  
  fill(247,37,104);
  rect(x,y,w,w);
  // (body) yellow, long, skinny rectangle, vertically oriented
  fill(245,223,57);
  rect(x,y+w,w,bodyHeight);
  // (tip) brown quadrilateral at the bottom of the body with a small, silver triangle at the bottom bottom
  fill(216,168,98);
  quad( x,       y+w+bodyHeight,
        x+w,     y+w+bodyHeight,        
        x+0.6*w, y+w+bodyHeight+w,
        x+0.4*w, y+w+bodyHeight+w);
        
  fill(131);
  triangle( x+0.4*w, y+w+bodyHeight+w,
            x+0.6*w, y+w+bodyHeight+w,
            x+0.5*w, y+h); 
}
