void collideR(){
  rp.rewind();
  rp.play();
   vx = (rightx-ballx)/20*-1; 
   vy = (bally-righty)/20;
}
void collideL(){
  lp.rewind();
  lp.play();
  vx = (ballx)/20; 
  //vx*=-1;
   vy = (bally-lefty)/20;
}
