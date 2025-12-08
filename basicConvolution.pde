PImage image;

void setup() {
  //size(400,400);
  image = loadImage("https://resources.finalsite.net/images/t_image_size_4/v1617908641/kentshillorg/pljk683ygzlp2ud3cjcj/HPSliderFinalsite1.jpg");
  windowResize( image.width, image.height );
  windowTitle("Campus Image");
  surface.setIcon(image);
  noLoop();
}

void draw() {
  PImage updatedImage; 
  //float[][] edgeDetection = new float[][]{
  //  {3,0,-3}, 
  //  {10,0,-10}, 
  //  {3,0,-3},
  //};    
  //updatedImage = applyKernel( image, edgeDetection );
    
  float[][] unsharpMask = new float[][]{ 
    {1,4,6,4,1},
    {4,16,24,16,4},
    {6,24,-476,24,6},
    {4,16,24,16,4},
    {1,4,6,4,1}
  };
  
  updatedImage = applyKernel( image, unsharpMask, -1.0/256.0);

  image(updatedImage,0,0);
}

PImage applyKernel(PImage oldImage, float[][] kernel ) {
  return applyKernel( oldImage, kernel, 1 );
}

// this skips the edges
PImage applyKernel(PImage oldImage, float[][] kernel, float multiplier) {
  // make an empty new image the same size as the old image
  PImage newImage = createImage(oldImage.width,oldImage.height,RGB);
  int offset = kernel.length/2; // this is the part that skips the edges
  
  for( int i = offset; i < oldImage.width - offset; i++ ) {
    for( int j = offset; j < oldImage.height - offset; j++ ) {
      // get all the color values surrounding the current pixel at the same 
      // dimensions as the kernel
      color[][] values = new color[kernel.length][kernel.length];
      for( int m = 0; m < kernel.length; m++ ) {
        for( int n = 0; n < kernel.length; n++ ) {
          values[m][n] = oldImage.get(i+m-offset, j+n-offset);
        }
      }
      newImage.set(i,j,calculate(kernel, multiplier, values));  
    }
  }  
  return newImage;
}

color calculate(float[][] kernel, float multiplier, color[][] colors) {
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
