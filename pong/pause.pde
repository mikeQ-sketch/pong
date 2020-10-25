void pause() {
  tactile(width/2, 100, 100, 50);
  button2("pause",width/2, 100, 100, 50);
}

void pauseClicks() {
  if (mouseX > 350 && mouseX < 450 && mouseY > 75 && mouseY < 125) {
    mode = GAME;
  }
}
