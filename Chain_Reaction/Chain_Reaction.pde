Ball[] balls;

boolean reactionStarted;
int mouseXPos;
int mouseYPos;

void setup() {
  size(600,600);
  background(0);
  reactionStarted=false;
  balls = new Ball[25];
  for (int i=0;i<25;i++) {
    balls[i]=new Ball();
  }
  for (Ball i: balls) {
    ellipse(i.xpos, i.ypos, i.rad, i.rad);
    fill(i.coolColor);
  }
}

void draw() {
  background(0);
  for (Ball i:balls) {
    i.move();
    ellipse(i.xpos, i.ypos, i.rad, i.rad);
    fill(i.coolColor);
    if (reactionStarted) {
      i.reaction(mouseXPos, mouseYPos);
    }
  }
}

void mouseClicked() {
  if (!reactionStarted) {
    reactionStarted=true;
    mouseXPos=mouseX;
    mouseYPos=mouseY;
  }
}