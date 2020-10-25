void button(String text, int x, int y, int w, int h) {
  fill(white);
  rect(x, y, w, h, 20);
  fill(lightgreen);
  textSize(50);
  text(text, x, y);
}

void button2(String text, int x, int y, int w, int h) {
  fill(white);
  rect(x, y, w, h, 20);
  fill(lightgreen);
  textSize(20);
  text(text, x, y);
}

void shadowtext(String text, int x, int y) {
  textSize(150);
  fill(darkblue);
  text(text, x-10, y-10);
  fill(white);
  text(text, x, y);
}

void shadowtext2(String text, int x, int y) {
  textSize(100);
  fill(darkblue);
  text(text, x-10, y-10);
  fill(white);
  text(text, x, y);
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    stroke(glow);
    strokeWeight(5);
  } else {
    strokeWeight(0);
    stroke(white);
  }
}


void reset() {
  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  //ball
  ballx = width/2;
  bally = height/2;
  balld = 50;
  ballr = balld/2;
  v_ballx = random(-5, 5);
  v_bally = random(-5, 5);

  //key
  wkey = skey = upkey = downkey = false;

  leftr = leftd/2;
  rightr = rightd/2;

  //score
  leftscore = 0;
  rightscore = 0;
  timer = 50;

  theme.rewind();
}
