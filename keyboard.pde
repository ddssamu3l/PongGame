void keyPressed(){
   if(key == 'w'){
     wkey = true;
   }
   if(key == 's'){
     skey = true;
   }
   if(key == 'p'){
     pkey = true;
   }
   if(key == 'l'){
     lkey = true;
   }
}

void keyReleased(){
    if(key == 'w'){
     wkey = false;
   }
   if(key == 's'){
     skey = false;
   }
   if(key == 'p'){
     pkey = false;
   }
   if(key == 'l'){
     lkey = false;
   } 
}
