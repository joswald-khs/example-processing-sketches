// Read, Process, Display
Table table;

void setup() {
  size(800,800);
  // read the data 
  table = loadTable("dataset-edit.csv", "header");

  color[] colors = {
    color(128,0,0),
    color(0,128,128),
    color(0,0,128),
    color(245,130,48),
    color(255,225,25)
  };
  
  // process the data
  int[] groups = {0,0,0,0,0};
  
  for (TableRow row : table.rows()) {

    float x = row.getFloat("x");
    float y = row.getFloat("y");

    if( y >= 0 && y < 20 ) { groups[0]++; }
    if( y >= 20 && y < 40 ) { groups[1]++; }
    if( y >= 40 && y < 60 ) { groups[2]++; }
    if( y >= 60 && y < 80 ) { groups[3]++; }
    if( y >= 80 && y < 100 ) { groups[4]++; }
  }
  
  // display the data
  ellipseMode(RADIUS);
  float spacing = 10;
  float W = (width - spacing*(groups.length+1)) / groups.length;
  
  for( int i = 0; i < groups.length; i++ ) {
    int count = groups[i];
    // draw a rectangle based off of count
    float x = i * W + spacing * (i +1);
    float y = height-count-spacing;
    float w = W;
    float h = count;
    fill(colors[i]);
    rect(x,y,w,h);
  }
}
