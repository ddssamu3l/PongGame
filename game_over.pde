void gameOver(){
  theme.pause();
  gg.play();
    stroke(0);
  textAlign(CENTER , CENTER);
  textSize(200);
  textFont(dance);
  if(lScore == 3)
    text("LEFT PLAYER WINS!", width/2, height/2);
  else
    text("RIGHT PLAYER WINS!", width/2, height/2);
}
