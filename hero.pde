// 主人公の挙動
void hero(){
  
  //場外に出ないようにする
  h_x = constrain(h_x, 0 , width - 48);
  h_y = constrain(h_y, 0 , height - 48);
 
    //以下は移動の挙動
   if (up == true) {
    h_y -= h_speed; 
    image(heroBackWalk, h_x, h_y, 48, 48);
    
  }
  if (down == true) {
    h_y += h_speed;
    //if(frameCount % frameskip == 0){
      //frameRate(120);
    image(heroFrontWalk, h_x, h_y, 48, 48);
          //frameRate(60);

    //}
  }
  if (left == true) {
    h_x -= h_speed;
    //image(heroLeftWalk, h_x, h_y, 48, 48);
    if(down == false && up == false){
      image(heroLeftWalk, h_x, h_y, 48, 48);
    }
  }
  if (right == true) {
    h_x += h_speed;
    //image(heroRightWalk, h_x, h_y, 48, 48);
    if(down == false && up == false){
      image(heroRightWalk, h_x, h_y, 48, 48);
    }
  }
  if(up == false && down == false && left == false && right == false){
    if(before_flag == 3) image(hero_f_1, h_x, h_y, 48, 48);
    if(before_flag == 1) image(hero_b_1, h_x, h_y, 48, 48);
    if(before_flag == 2) image(hero_l_1, h_x, h_y, 48, 48);
    if(before_flag == 4) image(hero_r_1, h_x, h_y, 48, 48);
    
  
  }
  
 //print(before_flag);
//障害物にあたったときの挙動
  if(c_up == true) h_y -= h_speed; 
  if(c_down == true)h_y += h_speed; 
  if(c_left == true)h_x -= h_speed;
  if(c_right == true)h_x += h_speed;
/*
//ドット絵の切り替わり
  if( (h_x+h_y) % 2 == 0){
    fill(255,0,0);
    rect(h_x,h_y,48,48);
  }else{
    fill(0,255,0);
     rect(h_x,h_y,48,48);
     print(2);
  }
  */
}
