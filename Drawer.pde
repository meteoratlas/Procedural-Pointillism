class Drawer {
  int x,y;
  int lifeSpan;
  
  public Drawer(int x, int y, int life){
    this.x = x;
    this.y = y;
    lifeSpan = life;
  }
  
  void step(){ // generic movement/update method
    lifeSpan--;
    if (lifeSpan <= 0) die();
  } 
  
  void paint(){} // paint pixels to the screen
  
  // called when the drawer's life is 0
  void die(){ 
    drawers.remove(this);
  } 

  // Utility function to draw a triangle
  void tri(int x, int y, int size){
      triangle(x - size / 2, y + size / 2,
               x - size / 2, y - size / 2,
               x + size / 2, y + size / 2);
  }
}
