//がいこつのステージ
void forest(){

  background(b_forest);
  
  rect(300,300,50,50);
  limit_xy(h_x,h_y,300,300,50,50);
  
  //print(limit_xy(h_x,h_y,300,300,50,50));
  collision(limit_xy(h_x,h_y,300,300,50,50), h_x, h_y, 300, 300, 50,50);  //障害物の当たり判定
  //collision(limit_xy(h_x,h_y,22,116,111,111), h_x, h_y, 116, 111,111,111);
  hero();

  skelton();

  if(limit_xy(h_x,h_y,500,500,50,50) == true){
    flower_flag = true; 
  }
  //print(limit_xy(h_x,h_y,s_x,s_y,48,48));
}
