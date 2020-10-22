void game(){
  // paddles
  if(lScore >=3 || rScore >=3)
    mode = gameOver;
  background(#F7E4AF);
  stroke(0);
  strokeWeight(5);
  line(width/2, 0, width/2, height);
  fill(#6C5E3A);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  timer--;
  
  // ball
  circle(ballx, bally, balld);
  if(timer<0){
  ballx+=vx;
  bally+=vy;}
  
   // homescreenText
  fill(0);
  textAlign(CENTER , CENTER);
  textSize(60);
  textFont(dance);
  text(lScore, width/4, 100);
  text(rScore, (width/4)*3, 100);
  
  // moving padddles
  if(wkey&&lefty>=50+leftd/2 ) lefty-=4;
  if(skey && lefty<=height-50-leftd/2 )lefty+=4;
  
  if(!AI){
    if(lkey&& righty<=height-50-rightd/2)righty+=4;
    if(pkey&&righty >=50+rightd/2 )righty-=4;
  }
  // AI controls right side
  else{
   if(vx>0 && ballx>= width/2+20){
     if(bally>righty)
       righty+=3;
   
   if(bally<righty)
     righty-=3;
   }
  }
 
 
  if(dist(ballx, bally, rightx, righty)<=balld/2+rightd/2){ // collide with slider
     collideR(); 
  }
  else if(dist(ballx, bally, leftx, lefty)<=balld/2+leftd/2){ // collide with slider
     collideL(); 
  }
     
  if(bally-balld/2<=0 || bally+balld/2>=height){ // bounces off of top wall and bot wall
  wall.rewind();
  wall.play();
     vy*=-1; 
  }
  
  // checks for scoring
  if(ballx+balld/2<=0){
    score.rewind();
    score.play();
     rScore++;
     ballx = width/2;
     bally = height/2;
     vx*=-1;
     timer = 100;
  }
  else if(ballx-balld/2>=width){
    score.rewind();
    score.play();
     lScore++;
     ballx = width/2;
     bally = height/2;
     vx*=-1;
     timer = 100;
  }
}
