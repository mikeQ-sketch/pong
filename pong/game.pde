void game() {

  background(black);

  strokeWeight(5);
  //paddle
  fill(darkgreen);
  stroke(lightgreen);
  circle(leftx, lefty, leftd);

  fill(darkblue);
  stroke(lightblue);
  circle(rightx, righty, rightd);


  //move paddle
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty +5;

  if (AI == false) {
    if (upkey == true) righty = righty - 5;
    if (downkey == true) righty = righty +5;
  } else {
    if (bally > righty) righty = righty + 5;
    if (bally < righty) righty = righty - 5;
    if (bally == righty) righty = righty + 0;
  }

  if (lefty < 110) {
    lefty = 110;
  }
  if (lefty > 590) {
    lefty = 590;
  }
  if (righty < 110) {
    righty = 110;
  }
  if (righty > 590) {
    righty = 590;
  }

  //move
  fill(ballcolor);
  stroke(glow);
  circle(ballx, bally, balld);

  if (timer < 0 ) {
    ballx = ballx + v_ballx;
    bally = bally + v_bally;
  }


  //bouncing
  if (dist(leftx, lefty, ballx, bally) < leftr + ballr) {
    v_ballx = (ballx - leftx) / 15;
    v_bally = (bally - lefty) / 15;
    stroke(lightgreen);
    ballcolor = green;
  }

  if (bally < ballr || bally > height - ballr) {
    v_bally = v_bally * -1;
  } 
  if ( dist(rightx, righty, ballx, bally) <= rightr + ballr) {
    v_ballx = (ballx - rightx) / 15;
    v_bally = (bally - righty) / 15;
    stroke(lightblue);
    ballcolor = blue;
  }

  //score
  if (ballx < 0) {
    rightscore++;
    ballx = width/2;
    bally =height/2;
    timer = 50;
    v_ballx = random(-5, 5);
    v_bally = random(-5, 5);
  } 
  if (ballx > width) {
    leftscore++;
    ballx = width/2;
    bally =height/2;
    timer = 50;
    v_ballx = random(-5, 5);
    v_bally = random(-5, 5);
  }

  //score
  textSize(50);
  fill(green);
  text(leftscore, width/4, 100);
  fill(blue);
  text(rightscore, 3*width/4, 100);

  //
  timer = timer - 1;


  if (leftscore == 3 || rightscore == 3) {
    mode = GAMEOVER;
  }
  
  tactile(width/2, 100, 100, 50);
  button2("pause",width/2, 100, 100, 50);
}

void gameClicks() {
  if (mouseX > 350 && mouseX < 450 && mouseY > 75 && mouseY < 125) {
    mode = PAUSE;
  }
}
