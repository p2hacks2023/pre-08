void hero(){
 
    //以下は移動の挙動
   if (up == true) {
    h_y -= 2; 
  }
  if (down == true) {
    h_y += 2;
  }
  if (left == true) {
    h_x -= 2;
  }
  if (right == true) {
    h_x += 2;
  }

  
  rect(h_x,h_y,48,48);
}
