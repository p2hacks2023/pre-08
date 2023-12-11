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
  //if(h_x <=  0) {
    
  if(c_up == true) h_y -= h_speed; 
  if(c_down == true)h_y += h_speed; 
  if(c_left == true)h_x -= h_speed;
  if(c_right == true)h_x += h_speed;

  
  rect(h_x,h_y,48,48);
}
