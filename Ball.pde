class Ball {
  float BallX;
  float BallY;
  float radius;
  float BallSpeedY;
  float BallSpeedX;


  Ball() {
    BallX = width/2;
    BallY = height/2;
    radius = 20;
    BallSpeedY = 5;
    BallSpeedX = 5;
  }

  void update() {
    BallX += BallSpeedX;
    BallY += BallSpeedY;

    if (BallY > height) {
      BallSpeedY *= -1;
    }
    if (BallY < 0) {
      BallSpeedY *= -1;
    }
    if (BallX > width) {
      BallX = width/2;
      BallY = height/2;
      BallSpeedX *=-1;
    }
    if (BallX < 0) {
      BallSpeedX *=-1;
      BallX = width/2;
      BallY = height/2;
    }
    //Collision with PlayerRight
    if (BallX >= thePlayer.PlayerRightX && BallX <= thePlayer.PlayerRightX + thePlayer.PlayerWidth && BallY >= thePlayer.PlayerRightY && BallY <= thePlayer.PlayerRightY + thePlayer.PlayerHeight) {
      BallSpeedX *= -1;
      bounce.play();
    }

    //Collision with PlayerLeft
    if (BallX >= thePlayer.PlayerLeftX && BallX <= thePlayer.PlayerLeftX + thePlayer.PlayerWidth && BallY >= thePlayer.PlayerLeftY && BallY <= thePlayer.PlayerLeftY + thePlayer.PlayerHeight) {
      BallSpeedX *= -1;
      bounce.play();
    }
  }


  void draw() {
    fill(255);
    circle(BallX, BallY, radius);
  }
}
