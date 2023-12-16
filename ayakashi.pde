//public class Ayakashi{
  
//  int a_x,a_y; //あやかしの座標
//  int a_speed; //あやかしの速度
  
//  public void attack(int a_x,int a_y, int a_speed){
    
//  }
  
  
//}

void skelton(){
    s_x = constrain(s_x, 0 , width - 48);
    s_y = constrain(s_y, 0 , height - 48);
    //limit_xy(s_x,s_y,300,300,50,50);
    //a_collision(limit_xy(s_x,s_y,300,300,50,50),s_x,s_y,300,300,50,50);
    //print(a_left,a_right,a_up,a_down);
    
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
    
    if(chase(s_x,s_y) == 1) s_x -= s_speed;  
    if(chase(s_x,s_y) == 2) s_x += s_speed;
    if(chase(s_x,s_y) == 3) s_y -= s_speed;
    if(chase(s_x,s_y) == 4) s_y += s_speed;  
    
    rect(s_x,s_y,48,48);
  }
  if(flower_flag == true){
    if(chase(s_x,s_y) == 1) s_x += s_speed;  
    if(chase(s_x,s_y) == 2) s_x -= s_speed;
    if(chase(s_x,s_y) == 3) s_y += s_speed;
    if(chase(s_x,s_y) == 4) s_y -= s_speed;  
    
    rect(s_x,s_y,48,48);
  }
  
}

void ghost1(){
      g1_x = constrain(g1_x, 0 , width - 48);
    g1_y = constrain(g1_y, 0 , height - 48);
    //limit_xy(s_x,s_y,300,300,50,50);
    //a_collision(limit_xy(s_x,s_y,300,300,50,50),s_x,s_y,300,300,50,50);
    //print(a_left,a_right,a_up,a_down);
    
  //if(a_up == true){
  //  s_y -= s_speed; 
  //  s_x += s_speed;
  //}
  //if(a_down == true){
  //  s_y += s_speed;
  //  s_x += s_speed;
  //}
  //if(a_left == true){
  //  s_x -= s_speed;
  //  s_y += s_speed;
  //}
  //if(a_right == true){
  //  s_x += s_speed;
  //  s_y += s_speed;
  //}
  
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
    //limit_xy(s_x,s_y,300,300,50,50);
    //a_collision(limit_xy(s_x,s_y,300,300,50,50),s_x,s_y,300,300,50,50);
    //print(a_left,a_right,a_up,a_down);
    
  //if(a_up == true){
  //  s_y -= s_speed; 
  //  s_x += s_speed;
  //}
  //if(a_down == true){
  //  s_y += s_speed;
  //  s_x += s_speed;
  //}
  //if(a_left == true){
  //  s_x -= s_speed;
  //  s_y += s_speed;
  //}
  //if(a_right == true){
  //  s_x += s_speed;
  //  s_y += s_speed;
  //}
  
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
    //limit_xy(s_x,s_y,300,300,50,50);
    //a_collision(limit_xy(s_x,s_y,300,300,50,50),s_x,s_y,300,300,50,50);
    //print(a_left,a_right,a_up,a_down);
    
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
