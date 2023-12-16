//がいこつのステージ
void forest(){

  background(b_forest);
  
  rect(300,300,50,50);
  //limit_xy(h_x,h_y,300,300,50,50);
  for(int i = 0; i < tree_x.length; i++){
    
    if(( h_x+48 >= tree_x[i] &&  h_x <= tree_x[i]+tree_x_gap[i] && h_y+48 >= tree_y[i] && h_y <= tree_y[i]+tree_y_gap[i])){
      println(h_x,h_y);
      if(h_x+48 == tree_x[i]){
        h_x -= h_speed;
        //print(2);
      }
      if(h_x == tree_x[i]+tree_x_gap[i]){
        h_x += h_speed;
        //print(3);
      }
      if(h_y+48 == tree_y[i] ){
        h_y -= h_speed;
        //print(4);
      }
      if(h_y == tree_y[i]+tree_x_gap[i] ){
        h_y += h_speed;
        //print(5);
      }
    }
  }
  for(int i = 0; i < tree_x.length; i++){
    fill(255,0,0,100);
    rect(tree_x[i],tree_y[i],tree_x_gap[i],tree_x_gap[i]);
  }
  
  //collision( h_x,h_y,tree_x[0],tree_y[0],tree_x_gap[0] ,tree_x_gap[0] );
  //print(limit_xy(h_x,h_y,300,300,50,50));

  //print(limit_xy( h_x, h_y, 460, 9, 127,120));  //障害物の当たり判定
  //collision(h_x, h_y, 116, 111,111,111);

  //collision( h_x, h_y, 300, 300, 50,50);//障害物の当たり判定
  //collision(h_x, h_y, 22, 16, 111,127);//障害物の当たり判定
  //print(limit_xy( h_x, h_y, 1112, 622, 127,120));
//print(c_left,c_right,c_up,c_down );
  hero();

  skelton();

  if(limit_xy(h_x,h_y,500,500,50,50) == true){
    flower_flag = true; 
  }
  //print(limit_xy(h_x,h_y,s_x,s_y,48,48));
}
