//key操作
void keyPressed(){
  
  if(keyCode == ENTER && scene == 0)  {
    //print(1);
    scene = 1;
  }
  if(key == 'w') up = true;
  if(key == 'a') left = true;
  if(key == 's') down = true;
  if(key == 'd') right = true;
  

}

void keyReleased(){
  if(key == 'w') up = false;
  if(key == 'a') left = false;
  if(key == 's') down = false;
  if(key == 'd') right = false;
}
