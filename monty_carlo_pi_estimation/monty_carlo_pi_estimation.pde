float r = 400;
long total = 0;
long circle = 0;
void setup() {
  size(802, 802);
  
  background(0);
  translate(width/2, height/2);
  
  stroke(255);
  noFill();
  ellipse(0, 0, r*2, r*2);
  rectMode(CENTER);
  rect(0, 0, r*2, r*2);
}

void draw() {
  translate(width/2, height/2);
  
  for(int i=0; i<10000; i++) {
    float x = random(-r, r);
    float y = random(-r, r);
    total++;
    float dsquare = x*x + y*y;
    if(dsquare <= (r*r)) {
      circle++;
      stroke(0, 255, 0, 100);
    } else {
      stroke(255, 0, 0, 100);
    }
    point(x, y);
  }
  double pi = 4 * ((double)(circle) / total);
  strokeWeight(1);
  println(pi-Math.PI);
  
}
