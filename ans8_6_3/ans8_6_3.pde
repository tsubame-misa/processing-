int x1;
int x2;
int y;
int d = 100;

void setup() {
  size(800, 600);
  x1 = width/3;
  x2 = width*2/3;
  y = height/2;
}

void draw() {
  background(255);
  fill(255);
  if (dist(x1, y, mouseX, mouseY) < d/2) {
    fill(255, 255, 0);
  } 
  ellipse(x1, y, d, d);
  
  fill(255);
  if (dist(x2, y, mouseX, mouseY) < d/2) {
    fill(255, 0, 0);
  } 
  ellipse(x2, y, d, d);
}
