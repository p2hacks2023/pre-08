//public class Ayakashi{
  
//  int a_x,a_y; //あやかしの座標
//  int a_speed; //あやかしの速度
  
//  public void attack(int a_x,int a_y, int a_speed){
    
//  }
  
  
//}

void skelton(){
    limit_xy(s_x,s_y,300,300,50,50);
    a_collision(limit_xy(s_x,s_y,300,300,50,50),s_x,s_y,300,300,50,50);
    print(a_left,a_right,a_up,a_down);
    
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
  
}
