//key操作
void keyPressed(){
  
  if(keyCode == ENTER && scene == 0 || scene == 5)  {
    scene = 99;
  }
  
  if(key == 'w') {
    up = true;
    before_flag = 1;
  }
  if(key == 'a'){ 
    left = true;
    before_flag = 2;
  }
  if(key == 's'){
    down = true;
    before_flag = 3;
  }
  if(key == 'd') {
    right = true;
    before_flag = 4;
  }
  

}

void keyReleased(){
  if(key == 'w') up = false;
  if(key == 'a') left = false;
  if(key == 's') down = false;
  if(key == 'd') right = false;
}
