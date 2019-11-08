// default values 
boolean ANIMATE = true;
boolean CENTRE_SHAPES = true;
int WALKER_AMOUNT = 200;
int DEFAULT_LIFE = 150;

PImage img;
ArrayList<Walker> walkers;

void setup(){
  size(1280, 720);
  background(0);
  img = loadImage("loc129.jpg");
  image(img, 0,0);
  walkers = new ArrayList<Walker>();
  
  if (CENTRE_SHAPES) {
        rectMode(CENTER);
        ellipseMode(CENTER);
    }
  if (!ANIMATE){ noLoop(); }  
  
  for (int i = 0; i < WALKER_AMOUNT; i++){
    walkers.add(new Walker((int)random(width), (int)random(height), 50));
  }
}

void draw(){
  paint();
}

void paint(){
  for (int i = 0;  i < walkers.size()-1; i++ ){
    Walker brush = walkers.get(i);
    //if (brush.dead) { walkers.remove(brush); continue; }
    brush.step();
  }
}
