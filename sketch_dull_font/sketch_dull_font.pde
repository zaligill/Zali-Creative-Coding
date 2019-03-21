PFont font;
void setup(){
 size(430, 480);
 smooth();
font = createFont("ARIAL", 36, true);
textFont(font);}

void draw(){
  
  textSize(48);
  text("big worm", 100, 300);
  textSize(16);
  text("medium worm", 100, 100);
  textSize(8);
  text("big worm", 10, 90);
}
