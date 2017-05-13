class Ball {
  color coolColor;
  float xpos;
  float ypos;
  float dx;
  float dy;
  int state;
  float rad;
  Ball()
  {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    coolColor = color(r, g, b);
    rad = 10;
    xpos = random((width - r) + r/2);
    ypos = random((height - r) + r/2);
    dx = random(10) - 5;
    dy = random(10) -5;
    state=0;
  }
  void move()
  {
    xpos += dx;
    ypos += dy;
    bounce();
  }
  
  void bounce() {
    if (xpos>=width || xpos<=0) {
      dx*=-1;
    }
    if (ypos>=height || ypos<=0) {
      dy*= -1;
    }
  }
  
  void reaction(float x, float y) {
    if ((xpos<=x+50 && xpos>=x-50) && (ypos<=y+50 && ypos>=y-50) && state==0) {
      dx=0;
      dy=0;
      rad++;
    }
    if (rad==100) {
      state=1;
    }
    if (state==1 && rad>0) {
      rad--;
    }
  }
}