//がいこつのステージ
void forest(){

  
  
  fill(255);
  rect(300,300,50,50);
  limit_xy(h_x,h_y,300,300,50,50);
  
  //print(limit_xy(h_x,h_y,300,300,50,50));
  collision(limit_xy(h_x,h_y,300,300,50,50), h_x, h_y, 300, 300, 50,50);
  hero();
  //print(h_x);
  skelton();
  //print(c_left,c_right,c_up,c_down);
}
