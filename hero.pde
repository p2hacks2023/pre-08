// 主人公の挙動
void hero(){
 
    //以下は移動の挙動
   if (up == true) {
    h_y -= h_speed; 
  }
  if (down == true) {
    h_y += h_speed;
  }
  if (left == true) {
    h_x -= h_speed;
  }
  if (right == true) {
    h_x += h_speed;
  }
  
 
//障害物にあたったときの挙動
  if(c_up == true) h_y -= h_speed; 
  if(c_down == true)h_y += h_speed; 
  if(c_left == true)h_x -= h_speed;
  if(c_right == true)h_x += h_speed;

//ドット絵の切り替わり
  if( (h_x+h_y) % 2 == 0){
    fill(255,0,0);
    rect(h_x,h_y,48,48);
  }else{
    fill(0,255,0);
     rect(h_x,h_y,48,48);
     print(2);
  }
}
