PFont f;

String instructions = "Instructions:";
String intor1 = "This is a maze digital activity book. It uses your webcam and";
String intor2 = "colour tracking to help you interact with the mazes.";

String p1 = "- Pick up a narrow object with a coloured tip to act as the";
String p12 = " pen (preferably different colour from anything else in the";
String p13 = " frame.";

String p2 = "- Click on the pen colour in the frame, it should start";
String p22 = " tracking and drawing.";

String p3 = "- Press the ‘Up’ key to generate a maze. Keep pressing this";
String p32 = " this key to get new mazes.";

String p4 = "- Press ‘’ to clear:";

void draw_text(){
  
 fill(16,31,49);
 noStroke();
 rect(330, 180, 600, 400, 7);
 
 fill(255);
 textFont(f);
 textAlign(LEFT);
 
  textSize(30);
  text(instructions,530,230);
  
  textSize(20);
  text(intor1,360,300);
  text(intor2,360,320);
  
  text(p1,370,360);
  text(p12,375,380);
  text(p13,375,400);
  
  text(p2,370,430);
  text(p22,375,450);
  
  text(p3,370,480);
  text(p32,375,500);
  
  text(p4,370,530);}
