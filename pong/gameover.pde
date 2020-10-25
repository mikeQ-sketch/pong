void gameover() {
  theme.pause();
  cheer.play();
  background(black);
  if (leftscore > rightscore) {
    shadowtext2("player1 wins", width/2, height/2);
  } else {
    shadowtext2("player2 wins", width/2, height/2);
  }

  tactile(200, 500, 220, 100);
  button("restart", 200, 500, 220, 100);
  tactile(600, 500, 220, 100);
  button("quit", 600, 500, 220, 100);
}


void gameoverClicks() {
  if (mouseX > 90 && mouseX < 310 && mouseY > 400 && mouseY < 500) {
    mode = INTRO;

    reset();
  }
  if (mouseX > 490 && mouseX < 710 && mouseY > 400 && mouseY < 500) {
    exit();
  }
}
