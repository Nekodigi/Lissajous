float p1sx = 1000;
float p1sy = 1000;
float p1fx = 3;
float p1fy = 5;
float p1ox = 0;
float p1oy = PI/2;
float t = 0;

void setup(){
  fullScreen();
  background(0);
  colorMode(HSB, 360, 100, 100);
  strokeWeight(5);
}

void draw(){
  translate(width/2, height/2);
  for(int i = 0; i < 10; i++){
  float x = sin(t*p1fx+p1ox)*p1sx;
  float y = sin(t*p1fy+p1oy)*p1sy;
  stroke(360);
  point(x, y);
  t += 0.001;
  }
}