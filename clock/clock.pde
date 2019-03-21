String minute;
String second;
boolean showTime;

void setup(){
  
  
  background(hour()*11, minute()*4, second()*4);
  size(768, 450);
  fill (255);
  textSize(150);
  textAlign(CENTER);
}

void draw(){
  
  
  background(hour()*11, minute()*4, second()*4);
  minute=nf(minute(),2);
  second=nf(second(),2);
  
   line(hour()*32,0,hour()*32,150);
   line(minute()*11,150,minute()*11,300);
   line(second()*11,300,second()*11,450);
   
   if (showTime==true){
   text(hour()+":"+minute()+":"+second(), 0, 180, 800, 350);}
 }


void keyPressed(){
  
  
      showTime=!showTime;
 }
  
