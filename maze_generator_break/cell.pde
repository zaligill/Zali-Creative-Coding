 class Cell{
  int x;
  int y;
  boolean visited;
  HashMap<String,Boolean> sides;
  
  //PFont kanit;
  //kanit = loadFont("Kanit-Medium.ttf");
  
  
  void clear(){
    visited = false;
    sides = new HashMap<String,Boolean>();
    sides.put("top", true);
    sides.put("left", true);
    sides.put("bottom", true);
    sides.put("right", true);
  
}
  
  Cell(int x_,int y_){
    x = x_;
    y = y_;
    visited = false;
    sides = new HashMap<String,Boolean>();
    sides.put("top", true);
    sides.put("left", true);
    sides.put("bottom", true);
    sides.put("right", true);
  
}
  
  
  void show(){
    
    if (!visited){
    fill(0, 0, 0, 0);}
    else {
    fill(0); }
    noStroke();
    rect(x*scale, y*scale, scale, scale);
    stroke(255);
    
    if(sides.get("top"))
    line(x*scale, y*scale, x*scale+scale, y*scale);
    
    if(sides.get("left"))
    line(x*scale, y*scale, x*scale, y*scale+scale);
    
    if(sides.get("bottom"))
    line(x*scale, y*scale+scale, x*scale+scale, y*scale+scale);
    
    if(sides.get("right"))
    line(x*scale+scale, y*scale, x*scale+scale, y*scale+scale);   
  
}
  
  
  
   void highlight(){
    
     
// end cell
    fill(255, 255, 255);
    noStroke();
    rect(1200, 660, scale, scale);
    
     
// start/drawing cell

    fill(255, 255, 255);
    noStroke();
    rect(x*scale, y*scale, scale, scale);
    
    textSize(15);
    fill(0);
    text("Start", 15, 30);
    text("End",1220, 700);}
   
     int index(int x, int y){
     if(x < 0 || x >= rows || y < 0 || y >= cols){
     return -1;}
     return x * cols + y; }
   
 
 Cell getUnvisitedNeighbor(Cell[] grid){
       
     ArrayList<Cell> PotentialNeighbors = new ArrayList<Cell>();
     int ind;
     
     ind = index(x, y-1);
     if ( ind != -1 && (!grid[ind].visited)){
     PotentialNeighbors.add(grid[ind]);}
     
     ind = index(x-1, y);
     if ( ind != -1 && (!grid[ind].visited)){
     PotentialNeighbors.add(grid[ind]);}
           
     ind = index(x, y+1);
     if ( ind != -1 && (!grid[ind].visited)){
     PotentialNeighbors.add(grid[ind]);}
     
     ind = index(x+1, y);
     if ( ind != -1 && (!grid[ind].visited)){
     PotentialNeighbors.add(grid[ind]);}
           
     if (PotentialNeighbors.size() > 0){
     return PotentialNeighbors.get(floor(random(PotentialNeighbors.size())));}
     else {return null;}

}}
