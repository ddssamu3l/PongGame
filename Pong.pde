import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

AudioPlayer theme, lp, rp, gg, score, wall;


float leftx, lefty, leftd, rightx, righty, rightd, ballx, bally, balld;
int mode;
int intro;
int game;
int pause;
int gameOver;
float vx, vy;
float leftScore, rightScore;
int lScore, rScore;
int timer;
float textSizee, textChange;

Boolean AI;

PFont dance;

boolean wkey, skey, pkey, lkey;

void setup(){
  background(180);
  size(1000, 800);
  // initialize paddles
  leftx = -10;
  lefty = height/2;
  leftd = 200;
  
  rightx = width+10;
  righty = height/2;
  rightd = 200;
  // initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 100;
  
  //initialize keybinds
  wkey = skey = pkey = lkey = false;
  // initialize speed
  vx = -6;
  vy = 3;
  
  //initialize score
  leftScore = rightScore = 0;
  
  // initialize modes
  intro = 1;
  game = 2;
  pause = 3;
  gameOver = 4;
  mode = intro;
  
  // score displayer
   dance = createFont("Dance.ttf", 70);
   
   // initialize timer that waits 1 second before starting the ball
   timer = 100;
   
   // initialize sound
   minim = new Minim(this);
   theme = minim.loadFile("sicko mode.mp3");
   lp = minim.loadFile("leftPaddle.wav");
   rp = minim.loadFile("rightPaddle.wav");
   gg = minim.loadFile("clap.wav");
   score = minim.loadFile("score.wav");
   wall = minim.loadFile("wall.wav");
   
   // initialize "sicko pong" text
   textSizee = 150;
   textChange = 2;
}

void draw() {
    if(mode == game){ // game
       game();
   }
   else if(mode == pause){ // pause
      pause(); 
   }
   else if(mode == gameOver){ // gameOver
      gameOver(); 
   }
   else if(mode == intro){
     intro();
   }  
}
void mouseReleased(){
   if(mode == intro)
     introClicks();
   if(mode == gameOver)
     mode = intro;
}
