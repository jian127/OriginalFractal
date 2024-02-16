void setup() {
  size(600, 600);
}
void draw() {
  background(255);
  myFractal(300, 300,600);
  fill(0);
  textSize(21);
  text("For Celine Lei Only <3", 200, 70);
}
public void myFractal(float x, float y, float len) {
  if (len < 18) {
    ellipse(x, y, len, len);
  } else {
    fill(255, 192, 203);
    ellipse(x-len/4, y, len/2, len/2);
    ellipse(x-len*.176, y-len*.176, len/3, len/3);
    ellipse(x, y-len/4, len/2, len/2);
    ellipse(x+len*.176, y-len*.176, len/3, len/3);
    ellipse(x+len/4, y, len/2, len/2);
    ellipse(x+len*.176, y+len*.176, len/3, len/3);
    ellipse(x, y+len/4, len/2, len/2);
    ellipse(x-len*.176, y+len*.176, len/3, len/3);
    myFractal(x, y, len/1.5);
  }
}
