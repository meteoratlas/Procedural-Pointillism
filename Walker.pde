class Walker{
  // Position
  int x,y;
  int lifeSpan;
  
  // Variables that modify the step (distance travelled each update)
  int stepSize = 8;
  double stepMultiplier = 1;
  
  // Variables that modify the brush (the pixels we're drawing with)
  int brushSize = 64;
  double brushSizeMultiplier = 1;
  
  int alpha = 255;
  double alphaMultiplier = 1;
  
  boolean useStroke = false;
  
  public Walker(int x, int y, int life){
    this.x = x;
    this.y = y;
    lifeSpan = life;
    if (!useStroke) { noStroke(); }
  }
  
  // Update this walker
  void step(){
    lifeSpan--;
    if (lifeSpan <= 0) die();
    
    walk();
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
  }
  
  void tri(int x, int y, int size){
      triangle(x - size / 2, y + size / 2,
               x - size / 2, y - size / 2,
               x + size / 2, y + size / 2);
  }
}
