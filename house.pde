void house(){
    background(b_house);
  
    //for(int i = 0; i < tree_x.length; i++){
    
    
    
    //if(( h_x+48 >= boti_x[i] &&  h_x <= tree_x[i]+tree_x_gap[i] && h_y+48 >= tree_y[i] && h_y <= tree_y[i]+tree_y_gap[i])){
      
    //  if(h_x+48 == tree_x[i]){
    //    h_x -= h_speed;
    //    //print(2);
    //  }
    //  if(h_x == tree_x[i]+tree_x_gap[i]){
    //    h_x += h_speed;
    //    //print(3);
    //  }
    //  if(h_y+48 == tree_y[i] ){
    //    h_y -= h_speed;
    //    //print(4);
    //  }
    //  if(h_y == tree_y[i]+tree_x_gap[i] ){
    //    h_y += h_speed;
    //    //print(5);
    //  }
    //}
  //}

    hero();
    ghost1();//red
    ghost2();//green

  if(flower_flag == false){
    image(blue,200, 150, 48, 48);
  }
  if(flower_flag2 == false){
    image(yellow,1000, 150, 48, 48);
  }

  if(limit_xy(h_x,h_y,1000,150,48,48) == true){
    flower_flag2 = true; 
  }
  if(limit_xy(h_x,h_y,200,150,48,48) == true){
    flower_flag = true; 
  }
  
  
  
}
