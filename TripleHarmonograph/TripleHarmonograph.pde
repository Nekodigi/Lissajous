float randomRate = 0.005;
float dumpRate = 0.001;

float sx1, sy1, fx1, fy1, ox1, oy1, dx1, dy1;
float sx2, sy2, fx2, fy2, ox2, oy2, dx2, dy2;
float sx3, sy3, fx3, fy3, ox3, oy3, dx3, dy3;
float t = 0;

void setValue(){
  sx1 = 500;
  sy1 = 500;
  fx1 = (int)(random(5)*random(1))+1+randomRate*randomGaussian();
  fy1 = (int)(random(5)*random(1))+1+randomRate*randomGaussian();
  ox1 = random(TWO_PI);
  oy1 = random(TWO_PI);
  dx1 = dumpRate;
  dy1 = dumpRate;
  sx2 = 500;
  sy2 = 500;
  fx2 = (int)(random(5)*random(1))+1+randomRate*randomGaussian();
  fy2 = (int)(random(5)*random(1))+1+randomRate*randomGaussian();
  ox2 = random(TWO_PI);
  oy2 = random(TWO_PI);
  dx2 = dumpRate;
  dy2 = dumpRate;
  sx3 = 500;
  sy3 = 500;
  fx3 = (int)(random(5)*random(1))+1+randomRate*randomGaussian();
  fy3 = (int)(random(5)*random(1))+1+randomRate*randomGaussian();
  ox3 = random(TWO_PI);
  oy3 = random(TWO_PI);
  dx3 = dumpRate;
  dy3 = dumpRate;
  t = 0;
}

void keyPressed(){
  if(key=='r'){
    background(0);
    setValue();
  }
}
void setup(){
  fullScreen();
  background(0);
  colorMode(HSB, 360, 100, 100);
  setValue();
}

void draw(){
  translate(width/2, height/2);
  for(int i = 0; i < 1000; i++){
  float x = sin(t*fx1+ox1)*sx1*exp(-dx1*t) + sin(t*fx2+ox2)*sx2*exp(-dx2*t) + sin(t*fx3+ox3)*sx3*exp(-dx3*t);
  float y = sin(t*fy1+oy1)*sy1*exp(-dy1*t) + sin(t*fy2+oy2)*sy2*exp(-dy2*t) + sin(t*fy3+oy3)*sy3*exp(-dy3*t);
  stroke((t/10)%360, 100, 100);
  point(x, y);
  t += 0.001;
  }
}