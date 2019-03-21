PImage photo;

//PImage img;
int smallPoint, largepoint;

void setup (){
photo = loadImage ("IMG.jpg");
size (500, 500);

smallPoint = 4;
largepoint = 40;
imageMode(CENTER);
noStroke();
background(255);
}

void draw (){
  
float pointillize = map(mouseX, 0, width, smallPoint, largepoint);
int x = int(random(photo.width));
int y = int(random(photo.height));
color pix = photo.get(x,y);
fill(pix, 128);
ellipse(x,y,pointillize, pointillize);

  //image (photo, 0,0);
}
  
 //PFont front;
 //void setup(){
   //size(480, 120);
   //smooth();
   //front=loadFront("consolas-48.vlw");
   //textFront(front);}
   
   //void draw(){
     //textSize(48)
     //text(" big words", 10, 30);
     //textSize(32);
     //text("medium word", 10, 60);
     //textSize(8);
     //text("tiny eord", 10, 90);}
     
