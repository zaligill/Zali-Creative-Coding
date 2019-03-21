 Eye e1, e2 ;
 int r,g,b,w;
 

void setup() {
  size(600, 600);
  noStroke();
  background(0);
  
  e1 = new Eye( 240, 225,  80);
  e2 = new Eye( 400, 225,  80);}

void draw() { 
  
  //face
  fill(16, 146, 206);
  ellipse(320,275,350,350);
  
  //ears
  fill(16, 146, 206);
  ellipse(150,250,60,100);
  ellipse(490,250,60,100);
 
  // Mouth
  fill(56, 56, 56);
  ellipse(320,350,80,20);
  
  // pupils
  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);
  e1.display();
  e2.display();}


class Eye {
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
 }

  void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    
    
 
    
   if(mousePressed)
  {fill (16, 146, 206);}
   else { fill(255);}
    ellipse(0, 0, size, size);
    rotate(angle);
    
    
    
      if(mousePressed)
  {fill (16, 146, 206);}
   else { fill(153, 204, 0);}
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
  }
  
  
}
