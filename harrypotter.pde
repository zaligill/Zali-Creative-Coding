/*
US Constitution text from http://www.usconstitution.net/const.txt
Liberation Serif font from RedHat: https://www.redhat.com/promo/fonts/
*/



PImage image;
import wordcram.*;
import java.awt.*;
import wordcram.text.*;


void setup() {
  size(800, 600);
  background(0);
  colorMode(HSB);
image = loadImage("hat.jpg");
image.resize(width,height);
Shape imageShape = new ImageShaper().shape(image,#000000);
ShapeBasedPlacer placer = new ShapeBasedPlacer(imageShape);
new WordCram(this)
      .fromTextFile("hp.txt")
      .withFont(createFont("HARRYP__.TTF", 1))
      .sizedByWeight(10, 90)
      .withColors(color(#1a6514), color(#e7d243), color(#249dd6), color(#c42323))
      .withPlacer(placer)
      .withNudger(placer)
      .drawAll();
      
}
