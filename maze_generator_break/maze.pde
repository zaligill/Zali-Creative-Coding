void maze(){
  
  
  
  current.highlight();
  Cell next = current.getUnvisitedNeighbor(grid);
  if (next != null){
     removeWall(next, current);
     if (!current.visited){
       stack.add(current);
     }
     current.visited = true;
     current = next; 
     return;
     
  } else if (stack.size()>0) {
      current.visited = true;  // duplicated in code, causes issues...
      current = stack.get(stack.size()-1);
      stack.remove(stack.size()-1);
      return; 
 }}
