// default values 
boolean ANIMATE = true;
boolean CENTRE_SHAPES = true;
int WALKER_AMOUNT = 200;
int DEFAULT_LIFE = 150;
boolean USE_STROKE = false;

PImage img;
ArrayList<Walker> drawers;

void setup(){
  size(1280, 720);
  background(0);
  img = loadImage("loc129.jpg");
  image(img, 0,0);
  drawers = new ArrayList<Walker>();
  
  if (CENTRE_SHAPES) {
        rectMode(CENTER);
        ellipseMode(CENTER);
    }
  if (!USE_STROKE) { noStroke(); }
  if (!ANIMATE)    { noLoop();   }  
  
  for (int i = 0; i < WALKER_AMOUNT; i++){
    drawers.add(new Walker((int)random(width), (int)random(height), 500));
  }
}

void draw(){
  paint();
}

void paint(){
  for (int i = 0;  i < drawers.size()-1; i++ ){
    Walker brush = drawers.get(i);
    brush.step();
  }
}
