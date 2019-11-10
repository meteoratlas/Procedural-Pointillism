class Walker extends Drawer { 
  // Variables that modify the step (distance travelled each update)
  int stepSize = 8;
  double stepMultiplier = 1;
  
  // Variables that modify the brush (the pixels we're drawing with)
  int brushSize = 64;
  double brushSizeMultiplier = 1;
  
  int alpha = 255;
  double alphaMultiplier = 1;
  
  public Walker(int x, int y, int life){
    super(x, y, life);
  }
  
  // Update this walker
  void step(){
    super.step();
    walk();
    paint();
  }
  
  void paint(){
    super.paint();
    fill(img.get(x,y), alpha);
    rect(x, y, 8,8);
  }
  
  void walk(){
    double rand = round(random(1));
    double rx = rand + rand - 1;
    rand = round(random(1));
    double ry = rand + rand - 1;
    
    x += rx * stepSize * stepMultiplier;
    y += ry * stepSize * stepMultiplier;
    constrain(x, 0, width);
    constrain(y, 0, height); 
  }
  
  void die(){
    super.die();
  }
 
}
