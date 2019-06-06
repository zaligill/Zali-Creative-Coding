import processing.video.*;
Capture video;

int scale;
int rows;
int cols;
color trackColor; 
float threshold = 25;
float distThreshold = 50;
Cell[] grid;
Cell current;
ArrayList<Cell> stack = new ArrayList<Cell>();
ArrayList<Blob> blobs = new ArrayList<Blob>();


void setup(){
  
  size(640, 360);  
  scale = 30;
  rows = width/scale;
  cols = height/scale;
  
  
// video

  String[] cameras = Capture.list();
  printArray(cameras);
  video = new Capture(this, 640, 360);
  video.start();
  trackColor = color(255, 0, 0);
 
//maze

  grid = new Cell[rows*cols];
  int i = 0;
  for(int x = 0; x < rows; x++){
  for(int y = 0; y < cols; y++){

  grid[i] = new Cell(x,y);
  i++;}}
  current = grid[0];}
  
  
// video

   void captureEvent(Capture video) {
   video.read();}
 

void draw(){
  
// video
      
    video.loadPixels();
    image(video, 0, 0);
    
    for (int x = 0; x < video.width; x++ ) {
    for (int y = 0; y < video.height; y++ ) {
    int loc = x + y * video.width;
    
    
     color currentColor = video.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);

      float d = distSq(r1, g1, b1, r2, g2, b2); 

      if (d < threshold*threshold) {

        boolean found = false;
        for (Blob b : blobs) {
        if (b.isNear(x, y)) {
        b.add(x, y);
        found = true;
        break;}}

        if (!found) {
          Blob b = new Blob(x, y);
          blobs.add(b);}}}

      for (Blob b : blobs) {
      if (b.size() > 500) {
      b.show();}}}
    
//maze
    
    for(int i = 0; i < grid.length; i++){
    grid[i].show();}
      
    current.highlight();
    Cell next = current.getUnvisitedNeighbor(grid);
    if (next != null){
    removeWall(next, current);
    if (!current.visited){
    stack.add(current);}
       
     current.visited = true;
     current = next; 
     return;}
     
     else if (stack.size()>0) {
      current.visited = true;  // duplicated in code, causes issues...
      current = stack.get(stack.size()-1);
      stack.remove(stack.size()-1);
      return;}

}


//video

  float distSq(float x1, float y1, float x2, float y2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1);
  return d;}

  float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
  return d;}



  void keyPressed() {
  
//maze
  
    if (key == CODED) {
    if (keyCode == UP) {
    for(int i = 0; i < grid.length; i++){
    grid[i].clear();}}}
  
}

  void removeWall(Cell a, Cell b){
     if (a.x < b.x){
         b.sides.put("left", false);
         a.sides.put("right", false);}

       else if (a.x > b.x){
       b.sides.put("right", false);
       a.sides.put("left", false);}
       
       else if (a.y < b.y){
       b.sides.put("top", false);
       a.sides.put("bottom", false);}
       
       else if (a.y > b.y){
       b.sides.put("bottom", false);
       a.sides.put("top", false);}}
       
       
//vidoe

void mousePressed() {
  int loc = mouseX + mouseY*video.width;
  trackColor = video.pixels[loc];

}
