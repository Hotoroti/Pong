class Score {
  int ScoreRight;
  int ScoreLeft;

  Score() {
    ScoreRight = 0;
    ScoreLeft = 0;
  }

  void update() {
    if (theBall.BallX >= width) {
    ScoreLeft += 1;
    }
    if (theBall.BallX <= 0) {
    ScoreRight += 1;
    }
  }

  void draw() {
    fill(255);
    textSize(40);
    text(ScoreLeft, width/2 - 100, 40);
    text(ScoreRight, width/2 + 100, 40);
  }
}
