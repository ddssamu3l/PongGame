void intro(){
    background(#F7E4AF);
   gg.pause();
   gg.rewind();
    theme.play();
      // initialize score
  lScore = rScore = 0;
    strokeWeight(5);
    fill(255);
     tactile(50, 550, 350, 200);
    rect(50, 550, 350, 200);
    tactile(width/2+50, 550, 350, 200);
    rect(width/2+50, 550, 350, 200);
    
    // text
    fill(0);
  textAlign(CENTER , CENTER);
  textSize(100);
  textFont(dance);
  text("1 PLAYER", 220, 650);
  text("2 PLAYER", width/2+230, 650);
  textSize(textSizee);
  fill(#F03127);
  text("SICKO PONG", width/2, height/2-150);
  textSizee-=textChange;
  if(textSizee<=50 || textSizee>=150)
    textChange*=-1;
   
}
void tactile(int x, int y, int w, int h){
   if(mouseX>=x && mouseX<= x+w && mouseY>=y && mouseY <=y+h)
     stroke(255, 0, 0);
    else
      stroke(0);
}
void introClicks(){
    if(mouseX>=50 && mouseX<= 50+350 && mouseY>=550 && mouseY <550+200){
     AI = true;
     mode = game;}
    if(mouseX>=width/2+50 && mouseX<=width/2+50+350 && mouseY>=550 && mouseY <550+200){
      AI = false;
      mode = game;}
}
