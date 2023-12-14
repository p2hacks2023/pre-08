//がいこつのステージ
void forest(){

  image(b_forest, 100, 100, 1280, 800);
  
  rect(300,300,50,50);
  limit_xy(h_x,h_y,300,300,50,50);
  
  //print(limit_xy(h_x,h_y,300,300,50,50));
  collision(limit_xy(h_x,h_y,300,300,50,50), h_x, h_y, 300, 300, 50,50);//障害物の当たり判定
  hero();
  //print(h_x);
  skelton();
  //print(c_left,c_right,c_up,c_down);
}
