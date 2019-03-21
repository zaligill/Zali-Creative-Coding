int dotx=1;
PImage rab;
PGraphics topLayer;
boolean showImage =true;

void setup(){
  smooth();
  background (255);
  size (500, 500);
  noStroke();
  fill(0);
  
  topLayer= createGraphics(500, 500);
  rab=loadImage("IMG.jpg");
}

void draw (){
 
if (showImage==false) {background(255);}
  else {image (rab, 0, 0);}


  image (topLayer, 0, 0);
}

void mousePressed (){
  
  color rgb = rab.get(mouseX, mouseY);
  topLayer.beginDraw();
  topLayer.fill(rgb);
  topLayer.noStroke();
  topLayer.smooth();
  topLayer.ellipse (mouseX, mouseY, 5 ,5);
  topLayer.textSize(10);
  topLayer.text(dotx, mouseX+10, mouseY+10);
  dotx++;
  topLayer.endDraw();
 }

void keyPressed (){
  if (key == 'x'){
    showImage=!showImage;}
    else { save("dot_to_dot"+key+" .png");}
}
