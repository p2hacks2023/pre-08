void grave(){
    background(b_grave);

   hero();
   kyoncy();
   
     for(int i = 0; i < boti_x.length; i++){
    
    if(( h_x+48 >= boti_x[i] &&  h_x <= boti_x[i]+boti_x_gap[i] && h_y+48 >= boti_y[i] && h_y <= boti_y[i]+boti_y_gap[i])){
      
      if(h_x+48 == boti_x[i]){
        h_x -= h_speed;
        //print(2);
      }
      if(h_x == boti_x[i]+boti_x_gap[i]){
        h_x += h_speed;
        //print(3);
      }
      if(h_y+48 == boti_y[i] ){
        h_y -= h_speed;
        //print(4);
      }
      if(h_y == boti_y[i]+boti_x_gap[i] ){
        h_y += h_speed;
        //print(5);
      }
    }
  }


  if(flower_flag == false){
    image(purple,100, 240, 48, 48);
  }

  if(limit_xy(h_x,h_y,100, 240, 48, 48) == true){
    flower_flag = true; 
  }
}
