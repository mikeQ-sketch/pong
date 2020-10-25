import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//pong
//Oct 15, 2020



int mode;
final int INTRO = 1;
final int GAME = 2;
final int  PAUSE = 3;
final int GAMEOVER = 4;

//
float leftx, lefty, leftd, rightx, righty, rightd;  //paddle
float ballx, bally, balld, ballr; //ball
float v_ballx, v_bally;

float leftr, rightr;

//keyboard
boolean wkey, skey, upkey, downkey;

//other
int leftscore, rightscore, timer;
boolean AI;

//color
color black, white;
color darkgreen, green, lightgreen;
color darkblue, blue, lightblue;
color glow;
color ballcolor;

//sound
Minim minim;
AudioPlayer theme, leftpaddle, rightpaddle, wall, score, cheer;


void setup() {
  size(800, 700);
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  
  mode = INTRO;
  

  //paddles
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
  
  //color
  black = (0);
  white = (255);
  darkgreen = #3e432e;
  green = #616f39;
  lightgreen = #a7d129;
  darkblue = #0f4c75;
  blue = #3282b8;
  lightblue = #bbe1fa;
  glow = #fcf876;
  
  //sound
   minim = new Minim(this);
   theme = minim.loadFile("theme.mp3");
   leftpaddle = minim.loadFile("leftpaddle.wav");
   rightpaddle = minim.loadFile("rightpaddle.wav");
   score = minim.loadFile("score.wav");
   wall = minim.loadFile("wall.wav");
   cheer = minim.loadFile("clapping.wav");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else  if (mode == GAME) {
    game();
  } else  if (mode == PAUSE) {
    pause();
  } else  if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
