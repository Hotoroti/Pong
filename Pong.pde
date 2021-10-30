import processing.sound.*;
SoundFile bounce;

Player thePlayer;
Ball theBall;
Score theScore;

final int KEY_LIMIT = 2048;
boolean[] keysPressed = new boolean[KEY_LIMIT];

void setup() {
  size(1000, 600);

  thePlayer = new Player();
  theBall = new Ball();
  theScore = new Score();
  bounce = new SoundFile(this, "bounce.wav");
}

void updateGame() {
  thePlayer.update();
  theBall.update();
  theScore.update();
}

void drawingGame() {
  background(0);
  thePlayer.draw();
  theBall.draw();
  theScore.draw();
}



//--------------------------------------------------------------------------------------------------
void draw() {
  drawingGame();
  updateGame();
}

void keyPressed() {
  if (keyCode >= KEY_LIMIT) return;
  keysPressed[keyCode] = true;
  if (key >= KEY_LIMIT) return;
  keysPressed[key] = true;
}
void keyReleased() {
  if (keyCode >= KEY_LIMIT) return;
  keysPressed[keyCode] = false;
  if (key >= KEY_LIMIT) return;
  keysPressed[key] = false;
}
