//public class Ayakashi{
  
//  int a_x,a_y; //あやかしの座標
//  int a_speed; //あやかしの速度
  
//  public void attack(int a_x,int a_y, int a_speed){
    
//  }
  
  
//}

void skelton(){
    s_x = constrain(s_x, 0 , width - 48);
    s_y = constrain(s_y, 0 , height - 48);

    
  if(a_up == true){
    s_y -= s_speed; 
    s_x += s_speed;
  }
  if(a_down == true){
    s_y += s_speed;
    s_x += s_speed;
  }
  if(a_left == true){
    s_x -= s_speed;
    s_y += s_speed;
  }
  if(a_right == true){
    s_x += s_speed;
    s_y += s_speed;

  }
  //当たり判定
  for(int i = 0; i < tree_x.length; i++){
    
    if(( s_x+48 >= tree_x[i] &&  s_x <= tree_x[i]+tree_x_gap[i] && s_y+48 >= tree_y[i] && s_y <= tree_y[i]+tree_y_gap[i])){
      
      if(s_x+48 == tree_x[i]){
        s_x -= s_speed;
        //print(2);
      }
      if(s_x == tree_x[i]+tree_x_gap[i]){
        s_x += s_speed;
        //print(3);
      }
      if(s_y+48 == tree_y[i] ){
        s_y -= s_speed;
        //print(4);
      }
      if(s_y == tree_y[i]+tree_x_gap[i] ){
        s_y += s_speed;
        //print(5);
      }
    }
  }
  
  //静止時
  if(s_x == h_x && s_y == h_y){
    image(skl_f,s_x, s_y, 48, 48);
  }
  //左に歩く
  if(a_down == false && a_up == false){
    //print(1);
    if(a_left == false){
      image(sklLeftWalk, s_x, s_y, 48, 48);
     // print(1);

    }
  //右に歩く
    if(a_right == false){
      image(sklRightWalk, s_x, s_y, 48, 48);
          //print(1);

   }
 }
 
  //上に歩く
  if(a_up == true){
    image(sklFrontWalk, s_x, s_y, 48, 48);
  }
  //下に歩く
  if(a_down == true){
    image(sklBackWalk, s_x, s_y, 48, 48);
  }
   
  //ヒヤシンスもってないときの挙動
  if(flower_flag == false){
    //左
    if(chase(s_x,s_y) == 1) {
      s_x -= s_speed;
  }
  //右
    if(chase(s_x,s_y) == 2) {
      s_x += s_speed;
  }
  //下
    if(chase(s_x,s_y) == 3) {
      s_y -= s_speed;
  }
  //上
    if(chase(s_x,s_y) == 4) {
      s_y += s_speed;
  } 
    if(h_x == s_x && h_y == s_y){
      scene = 5;
    }
    
  }
  if(flower_flag == true){
    if(chase(s_x,s_y) == 1) s_x += s_speed;  
    if(chase(s_x,s_y) == 2) s_x -= s_speed;
    if(chase(s_x,s_y) == 3) s_y += s_speed;
    if(chase(s_x,s_y) == 4) s_y -= s_speed;  
    
    //rect(s_x,s_y,48,48);
    if(h_x == s_x && h_y == s_y){
      scene = 6;
    }
  }
  
  
}

void ghost1(){
      g1_x = constrain(g1_x, 0 , width - 48);
    g1_y = constrain(g1_y, 0 , height - 48);

  
  //ヒヤシンスもってないときの挙動
  if(flower_flag == false){
    
    if(chase(g1_x,g1_y) == 1) g1_x -= s_speed;  
    if(chase(g1_x,g1_y) == 2) g1_x += s_speed;
    if(chase(g1_x,g1_y) == 3) g1_y -= s_speed;
    if(chase(g1_x,g1_y) == 4) g1_y += s_speed;  
    
    rect(g1_x,g1_y,48,48);
  }
  if(flower_flag == true){
    if(chase(g1_x,g1_y) == 1) g1_x += s_speed;  
    if(chase(g1_x,g1_y) == 2) g1_x -= s_speed;
    if(chase(g1_x,g1_y) == 3) g1_y += s_speed;
    if(chase(g1_x,g1_y) == 4) g1_y -= s_speed;   
    
    rect(g1_x,g1_y,48,48);
  }
}

void ghost2(){
      g2_x = constrain(g2_x, 0 , width - 48);
    g2_y = constrain(g2_y, 0 , height - 48);

  //ヒヤシンスもってないときの挙動
  if(flower_flag == false){
    
    if(chase(g2_x,g2_y) == 1) g2_x -= g2_speed;  
    if(chase(g2_x,g2_y) == 2) g2_x += g2_speed;
    if(chase(g2_x,g2_y) == 3) g2_y -= g2_speed;
    if(chase(g2_x,g2_y) == 4) g2_y += g2_speed;  
    
    rect(g2_x,g2_y,48,48);
  }
  if(flower_flag == true){
    if(chase(g2_x,g2_y) == 1) g2_x += s_speed;  
    if(chase(g2_x,g2_y) == 2) g2_x -= s_speed;
    if(chase(g2_x,g2_y) == 3) g2_y += s_speed;
    if(chase(g2_x,g2_y) == 4) g2_y -= s_speed;   
    
    rect(g2_x,g2_y,48,48);
  }
}

void kyoncy(){
        g2_x = constrain(g2_x, 0 , width - 48);
    g2_y = constrain(g2_y, 0 , height - 48);
 

    
  if(a_up == true){
    s_y -= s_speed; 
    s_x += s_speed;
  }
  if(a_down == true){
    s_y += s_speed;
    s_x += s_speed;
  }
  if(a_left == true){
    s_x -= s_speed;
    s_y += s_speed;
  }
  if(a_right == true){
    s_x += s_speed;
    s_y += s_speed;
  }
  
  //ヒヤシンスもってないときの挙動
  if(flower_flag == false){
    
    if(chase(g2_x,g2_y) == 1) g2_x -= g2_speed;  
    if(chase(g2_x,g2_y) == 2) g2_x += g2_speed;
    if(chase(g2_x,g2_y) == 3) g2_y -= g2_speed;
    if(chase(g2_x,g2_y) == 4) g2_y += g2_speed;
    
    rect(g2_x,g2_y,48,48);
  }
  if(flower_flag == true){
    if(chase(g2_x,g2_y) == 1) g2_x += s_speed;  
    if(chase(g2_x,g2_y) == 2) g2_x -= s_speed;
    if(chase(g2_x,g2_y) == 3) g2_y += s_speed;
    if(chase(g2_x,g2_y) == 4) g2_y -= s_speed;   
    
    rect(g2_x,g2_y,48,48);
  }
}
