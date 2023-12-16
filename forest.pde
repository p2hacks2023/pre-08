//がいこつのステージ
void forest(){
  

  background(b_forest);
  

  for(int i = 0; i < tree_x.length; i++){
    
    if(( h_x+48 >= tree_x[i] &&  h_x <= tree_x[i]+tree_x_gap[i] && h_y+48 >= tree_y[i] && h_y <= tree_y[i]+tree_y_gap[i])){
      
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
  //for(int i = 0; i < tree_x.length; i++){
  //  rect(tree_x[i],tree_y[i],tree_x_gap[i],tree_y_gap[i]);
  //}

  
  hero();

  skelton();

  if(flower_flag == false){
    image(yellow,900, 150, 48, 48);
  }

  if(limit_xy(h_x,h_y,900,150,48,48) == true){
    if (flower_flag == false){
    get_se.play();
    }
    flower_flag = true; 
  }
  //print(limit_xy(h_x,h_y,s_x,s_y,48,48));
}
