Menu menu;
PImageEditor pie;

void setup() {
  PImage image = loadImage("https://resources.finalsite.net/images/t_image_size_4/v1617908641/kentshillorg/pljk683ygzlp2ud3cjcj/HPSliderFinalsite1.jpg");
  pie = new PImageEditor(image);
  windowResize( image.width, image.height );
  windowTitle("Campus Image");
  surface.setIcon(image);
  menu = new Menu(pie);
}

void draw() {
  image(pie.workingImage,0,0);
}
