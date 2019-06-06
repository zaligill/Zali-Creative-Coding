int scale;
int rows;
int cols;
Cell[] grid;
Cell current;
ArrayList<Cell> stack = new ArrayList<Cell>();

void setup(){
  
  size(1260, 720);  
  scale = 60;
  rows = width/scale;
  cols = height/scale;
 
  grid = new Cell[rows*cols];
  int i = 0;
  for(int x = 0; x < rows; x++){
  for(int y = 0; y < cols; y++){
         
  grid[i] = new Cell(x,y);
  i++;}}
         
  current = grid[0];}
 
 
void draw() {
      
      for(int i = 0; i < grid.length; i++){
      grid[i].show();}
      maze();}
//}
  
void keyPressed() {
  
    //if (key == CODED) {
   // if (keyCode == DOWN) {
    //maze();}
    //else {}
    
    if (key == CODED) {
    if (keyCode == UP) {
    for(int i = 0; i < grid.length; i++){
    grid[i].clear();}
}}}


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
       a.sides.put("top", false);
}}
