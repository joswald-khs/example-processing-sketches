class Menu extends PApplet {
  PImageEditor pie;
  
  public Menu(PImageEditor pie) {
    super();
    smooth();
    this.pie = pie;
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }  
  public void settings() {
    size(200, 800);
    noLoop();
  }
  
  public void setup() { 
    windowTitle("Menu");
  }  
  
  public void draw() {
    background(240);
    fill(100);
    text( "Press 1 to Apply Edge Detection", 10, 12 );
    text( "Press 2 to Apply Unsharp Mask", 10, 36 );
    text( "Press 0 to Reset to Original", 10, 60 );
  }
  
  public void keyPressed() {
    if( key == '0' ) {
      pie.resetToOriginal();
      redraw();
    }
    
    if( key == '1' ) {
      pie.applyEdgeDetection(); 
      redraw();
    }
  
    if( key == '2' ) {
      pie.applyUnsharpMask(); 
      redraw();
    }  
  }
}
