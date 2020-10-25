void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'p' || key == 'P') upkey = true;
  if (key == 'l' || key == 'L') downkey = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'p' || key == 'P') upkey = false;
  if (key == 'l' || key == 'L') downkey = false;
}
