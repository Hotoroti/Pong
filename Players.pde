class Player {
  float PlayerLeftX;
  float PlayerLeftY;
  float PlayerRightX;
  float PlayerRightY;
  float PlayerWidth;
  float PlayerHeight;
  float PlayerSpeed;
  float PlayerDirection;

  Player() {
    PlayerLeftX = 50;
    PlayerLeftY = 250;
    PlayerWidth = 25;
    PlayerHeight = 100;
    PlayerRightX = 925;
    PlayerRightY = 250;
    PlayerSpeed = 5;
    PlayerDirection = 0;
  }

  void update() {
    //Movement PlayerLeft
    if (keysPressed['w']) {
      PlayerLeftY -= PlayerSpeed;
    }
    if (keysPressed['s']) {
      PlayerLeftY += PlayerSpeed;
    }

    //Movement PlayerRight
    if (keysPressed['o']) {
      PlayerRightY -= PlayerSpeed;
    }oko
    if (keysPressed['k']) {
      PlayerRightY += PlayerSpeed;
    }

    //Borders
    PlayerLeftY = constrain(PlayerLeftY, 0, 500);
    PlayerRightY = constrain(PlayerRightY, 0, 500);
  }

  void draw() {
    //PlayerLeft
    fill(255);
    rect(PlayerLeftX, PlayerLeftY, PlayerWidth, PlayerHeight);

    //PlayerRight;
    fill(255);
    rect(PlayerRightX, PlayerRightY, PlayerWidth, PlayerHeight);
  }
}
