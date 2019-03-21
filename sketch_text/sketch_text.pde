PFont font;
int rand;
String paragraph = "The polar bear (Ursus maritimus) is a hypercarnivorous bear whose native range lies largely within the Arctic Circle, encompassing the Arctic Ocean, its surrounding seas";
int i=1;
void setup(){
frameRate(10);
size (800,800);
fill(0);
font = createFont("ARIAL", 20, true);}

void draw(){
  textFont(font);
  if (mousePressed) {
    text (paragraph.charAt(i-1), mouseX, mouseY);
    if (i<paragraph.length()){
      i++;
    }
    else {i=1;}
}}
