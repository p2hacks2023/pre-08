void grave(){
    background(b_grave);
      


   hero();
   kyoncy();

  if(flower_flag == false){
    image(purple,100, 150, 48, 48);
  }

  if(limit_xy(h_x,h_y,50,150,48,48) == true){
    flower_flag = true; 
  }
}
