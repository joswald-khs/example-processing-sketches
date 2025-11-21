PImage image;

void setup() {
  image = loadImage("https://resources.finalsite.net/images/t_image_size_4/v1617908641/kentshillorg/pljk683ygzlp2ud3cjcj/HPSliderFinalsite1.jpg");
  windowResize( image.width, image.height );
  windowTitle("Campus Image");
  surface.setIcon(image);
}

void draw() {
  for( int i = 0; i < image.width; i++ ) {
    for( int j = 0; j < image.height; j++ ) {
      if( i % 2 == 0 && j % 2 == 0 ) {
          image.set(i,j,color(0));
      } 
      
      if( i % 2 == 1 && j % 2 == 1 ) {
        image.set(i,j,color(0));
      }
    }
  }
  image(image,0,0);
}
