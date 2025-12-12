ArrayList<Point> points = new ArrayList<Point>(); 
PrintWriter writer;

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
    writer = createWriter("points.csv");
    writer.println("x,y");
    for( Point p : points ) {
      writer.println(p.toCSVLine());
    }
    writer.flush();
    writer.close();
  }
}

void parseFile() {
  BufferedReader reader = createReader("points.csv");
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
      String[] pieces = split(line, ',');
      float x = float(pieces[0]);
      float y = float(pieces[1]);
      points.add( new Point(x,y) );
      circle(x,y,20);
    }
    reader.close();
  } catch (IOException e) {
    e.printStackTrace();
  }
}
