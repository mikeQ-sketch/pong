void intro() {

  theme.play();
  background(black);
  fill(white);

  shadowtext("Pong", 400, 100);

  tactile(200, 500, 220, 100);
  button("1 player", 200, 500, 220, 100);
  tactile(600, 500, 220, 100);
  button("2 players", 600, 500, 220, 100);
}

void introClicks() {
  if (mouseX > 90 && mouseX < 310 && mouseY > 400 && mouseY < 500) {
    AI = true;
    mode = GAME;
  }
  if (mouseX > 490 && mouseX < 710 && mouseY > 400 && mouseY < 500) {
    AI = false;
    mode = GAME;
  }
}
