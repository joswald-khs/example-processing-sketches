class PImageEditor {
  private PImage originalImage;
  private PImage workingImage;
  
  PImageEditor( PImage image ) {
    this.originalImage = image.copy();
    this.workingImage = image.copy();
  }
  
  private void applyKernel( float[][] kernel ) {
    applyKernel( kernel, 1 );
  }
  
  // this skips the edges
  private void applyKernel(float[][] kernel, float multiplier) {
    // make an empty new image the same size as the old image
    PImage newImage = createImage(workingImage.width,workingImage.height,RGB);
    int offset = kernel.length/2; // this is the part that skips the edges
    
    for( int i = offset; i < workingImage.width - offset; i++ ) {
      for( int j = offset; j < workingImage.height - offset; j++ ) {
        // get all the color values surrounding the current pixel at the same 
        // dimensions as the kernel
        color[][] values = new color[kernel.length][kernel.length];
        for( int m = 0; m < kernel.length; m++ ) {
          for( int n = 0; n < kernel.length; n++ ) {
            values[m][n] = workingImage.get(i+m-offset, j+n-offset);
          }
        }
        newImage.set(i,j,calculate(kernel, multiplier, values));  
      }
    }  
    workingImage = newImage;
  }  
  
  private color calculate(float[][] kernel, float multiplier, color[][] colors) {
    float r = 0;
    float g = 0;
    float b = 0;
    for( int i = 0; i < colors.length; i++ ) {
      for( int j = 0; j < colors.length; j++ ) {
        color c = colors[i][j];
        float v = kernel[i][j];
        r += red(c) * v;
        g += green(c) * v;
        b += blue(c) * v;
      }
    }
    return color(r*multiplier,g*multiplier,b*multiplier);
  }  
  
  void resetToOriginal() {
    this.workingImage = this.originalImage.copy();
  }
  
  PImage image() { return workingImage; }
  
  void applyEdgeDetection() {
    applyKernel( new float[][]{
      {3,0,-3}, 
      {10,0,-10}, 
      {3,0,-3},
    });    
  }
  
  void applyUnsharpMask() {
    applyKernel( new float[][]{ 
      {1,4,6,4,1},
      {4,16,24,16,4},
      {6,24,-476,24,6},
      {4,16,24,16,4},
      {1,4,6,4,1}
    }, -1.0/256.0);
  }
}
