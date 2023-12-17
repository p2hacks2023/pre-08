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
  if(flower_flag == false){
  for(int i = 0; i < tree_x.length; i++){
    if(( s_x+48 >= tree_x[i] &&  s_x <= tree_x[i]+tree_x_gap[i] && s_y+48 >= tree_y[i] && s_y <= tree_y[i]+tree_y_gap[i])){
      
      if(s_x+48 == tree_x[i]){
        s_x -= s_speed;
        
          if(s_y <= h_y){
            //print(1);         
              s_y += s_speed; 
          }
          if(s_y > h_y){
            //print(2); 
            s_y -= s_speed;
          }
      }
      if(s_x == tree_x[i]+tree_x_gap[i]){
        s_x += s_speed;
          if(s_y <= h_y){
            //print(3);
              s_y += s_speed;          
        }
          if(s_y > h_y){
            //print(4); 
            s_y -= s_speed;
        }
      }
      if(s_y+48 == tree_y[i] ){
        s_y -= s_speed;
          if(s_x <= h_x){
            //print(5);
              s_x += s_speed;
        }
        if(s_x > h_x){
          //print(6);
              s_x -= s_speed;
        }
      }
      if(s_y == tree_y[i]+tree_y_gap[i] ){
        s_y += s_speed;
        if(s_x <= h_x){
          //print(7);
              s_x += s_speed;
        }
        if(s_x > h_x){
          //print(8);
              s_x -= s_speed;
        }
      }
    }
  }
  }
  

  if(chase(s_x,s_y) == 1) image(sklLeftWalk, s_x, s_y, 48, 48);  
  if(chase(s_x,s_y) == 2) image(sklRightWalk, s_x, s_y, 48, 48); 
  if(chase(s_x,s_y) == 3) image(sklBackWalk, s_x, s_y, 48, 48); 
  if(chase(s_x,s_y) == 4) image(sklFrontWalk, s_x, s_y, 48, 48);
   
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
    if(h_x == s_x && h_y == s_y){//捕まる
      scene = 5;
      if (forest_bgm.isPlaying()) {
        forest_bgm.pause();  // または forest_bgm.stop();
        catch_se.play();
    }
}
    
  }
  if(flower_flag == true){

    //if(chase(s_x,s_y) == 1) s_x += s_speed;  
    //if(chase(s_x,s_y) == 2) s_x -= s_speed;
    //if(chase(s_x,s_y) == 3) s_y += s_speed;
    //if(chase(s_x,s_y) == 4) s_y -= s_speed;  
      if(s_x >= 247 && escape == false &&  escape2 == false){
        s_x -= s_speed;
        
      }
      if(s_x <= 247 && s_y <= 620 && escape2 == false){
        s_y += s_speed;
        escape = true;
      }
      if(s_y >= 620 && escape == true && escape2 == false){
        s_x += s_speed;
        if(s_x >= 880){
        escape2 = true;
        s_x = 880;
        }
      }
      //print(escape2);
      //if(escape2 == true){
      //  s_x -= s_speed;
      //}
      
      
    
      
    
    
    
    //println(s_x,s_y);
    

    //rect(s_x,s_y,48,48);
    if(limit_xy(h_x,h_y,s_x,s_y,48,48)){//捕まえた
      com_se.play();
      displayingDialog = true;
      ani_flag = 2;
      scene = 12;
      if (forest_bgm.isPlaying()) {
        forest_bgm.pause();  // または forest_bgm.stop();
    }
    title_bgm.play();
    }
    //print(limit_xy(h_x,h_y,s_x,s_y,48,48));
  }
  
  
}

void ghost1(){//red
   g1_x = constrain(g1_x, 110 , 1150);
   g1_y = constrain(g1_y, 60 , 670);
   
   // 3秒ごとの処理
  if (frameCount - lastTriggerFrame >= interval_g1) {
    g1_speed = int(random(2)); // 幽霊1の速さ
    println("g1_speed: " + g1_speed); // デバッグ用
    // 最終トリガーフレームを更新
    lastTriggerFrame = frameCount;
  }
    
  if(chase(g1_x,g1_y) == 1) image(rw_l, g1_x, g1_y, 48, 48); 
  if(chase(g1_x,g1_y) == 2) image(rw_r, g1_x, g1_y, 48, 48);
  if(chase(g1_x,g1_y) == 3) image(rw_b, g1_x, g1_y, 48, 48);
  if(chase(g1_x,g1_y) == 4) image(rw_f, g1_x, g1_y, 48, 48);
  
  //ヒヤシンスもってないときの挙動
  if(flower_flag == false){
    
    if(chase(g1_x,g1_y) == 1) g1_x -= g1_speed;  
    if(chase(g1_x,g1_y) == 2) g1_x += g1_speed;
    if(chase(g1_x,g1_y) == 3) g1_y -= g1_speed;
    if(chase(g1_x,g1_y) == 4) g1_y += g1_speed;  
    
    if(h_x == g1_x && h_y == g1_y){
      scene = 5;
      catch_se.play();
       if (house_bgm.isPlaying()) {
        house_bgm.pause();
      }
    }
    
   // rect(g1_x,g1_y,48,48);
  }
  if(flower_flag == true){
    if(chase(g1_x,g1_y) == 1) g1_x += g1_speed;  
    if(chase(g1_x,g1_y) == 2) g1_x -= g1_speed;
    if(chase(g1_x,g1_y) == 3) g1_y += g1_speed;
    if(chase(g1_x,g1_y) == 4) g1_y -= g1_speed;   
    
   // rect(g1_x,g1_y,48,48);
  }
}

void ghost2(){//green
    g2_x = constrain(g2_x, 110 , 1150);
    g2_y = constrain(g2_y, 60 , 670);
    
    if(frameCount - lastTriggerFrame_g2 >= interval_g2) {
      g2_speed = int(random(2)); // 幽霊2の速さ
      println("g2_speed: " + g2_speed); // デバッグ用
      //最終トリガーフレームを更新
      lastTriggerFrame_g2 = frameCount;
   }

  if(chase(g2_x,g2_y) == 1) image(gm_l, g2_x, g2_y, 48, 48);  
  if(chase(g2_x,g2_y) == 2) image(gm_r, g2_x, g2_y, 48, 48); 
  if(chase(g2_x,g2_y) == 3) image(gm_b, g2_x, g2_y, 48, 48); 
  if(chase(g2_x,g2_y) == 4) image(gm_f, g2_x, g2_y, 48, 48);   
    
  //ヒヤシンスもってないときの挙動
  if(flower_flag2 == false){
    
    if(chase(g2_x,g2_y) == 1) g2_x -= g2_speed;  
    if(chase(g2_x,g2_y) == 2) g2_x += g2_speed;
    if(chase(g2_x,g2_y) == 3) g2_y -= g2_speed;
    if(chase(g2_x,g2_y) == 4) g2_y += g2_speed;  
    
    if(h_x == g2_x && h_y == g2_y){
      scene = 5;
        catch_se.play();
       if (house_bgm.isPlaying()) {
        house_bgm.pause();
      }
    }
    //rect(g2_x,g2_y,48,48);
  }
  if(flower_flag2 == true){
    if(chase(g2_x,g2_y) == 1) g2_x += s_speed;  
    if(chase(g2_x,g2_y) == 2) g2_x -= s_speed;
    if(chase(g2_x,g2_y) == 3) g2_y += s_speed;
    if(chase(g2_x,g2_y) == 4) g2_y -= s_speed;   
    
    //rect(g2_x,g2_y,48,48);
  }
}


void kyoncy(){
  
    k_x = constrain(k_x, 0 , width - 48);
    k_y = constrain(k_y, 0 , height - 48);
     
 //画像
  if(chase(k_x,k_y) == 1) image(kyo_l, k_x, k_y, 48, 48); 
  if(chase(k_x,k_y) == 2) image(kyo_r, k_x, k_y, 48, 48);
  if(chase(k_x,k_y) == 3) image(kyo_b, k_x, k_y, 48, 48);
  if(chase(k_x,k_y) == 4) image(kyo_f, k_x, k_y, 48, 48);
    
    //なかったら
   if(flower_flag == false){
    if(chase(k_x,k_y) == 1) k_x -= k_speed;  
    if(chase(k_x,k_y) == 2) k_x += k_speed;
    if(chase(k_x,k_y) == 3) k_y -= k_speed;
    if(chase(k_x,k_y) == 4) k_y += k_speed;  
    
    if(frameCount - lastTriggerFrame_k >= interval_k) {
      if(h_x <= width/2){
        int k_x_tel = int(random(50,101)); // キョンシーの速さ;
        k_x = h_x + k_x_tel;
      }
      if(h_y <= height /2){
        int k_y_tel = int(random(50,101)); // キョンシーの速さ;
        k_y = h_y + k_y_tel;
      }
      if(h_x >= width/2){
        int k_x_tel = int(random(50,101)); // キョンシーの速さ;
        k_x = h_x - k_x_tel;
      }
      if(h_y >= height /2){
        int k_y_tel = int(random(50,101)); // キョンシーの速さ;
        k_y = h_y - k_y_tel;
      }
      //最終トリガーフレームを更新
      lastTriggerFrame_k = frameCount;
   }
    
    //追いついたらゲームオーバー
    if(h_x == k_x && h_y == k_y){
      scene = 5;
      catch_se.play();
       if (grave_bgm.isPlaying()) {
        grave_bgm.pause();
      }
    }
   // rect(g1_x,g1_y,48,48);
  }
   //あったら
   if(flower_flag == true){
    if(chase(k_x,k_y) == 1) k_x += k_speed;  
    if(chase(k_x,k_y) == 2) k_x -= k_speed;
    if(chase(k_x,k_y) == 3) k_y += k_speed;
    if(chase(k_x,k_y) == 4) k_y -= k_speed;   
   // rect(g1_x,g1_y,48,48);
   
   if(frameCount - lastTriggerFrame_k >= interval_k) {
      if(h_x <= width/2){
        int k_x_tel = int(random(60,101)); // キョンシーの速さ;
        k_x = h_x + k_x_tel;
      }
      if(h_y <= height /2){
        int k_y_tel = int(random(60,101)); // キョンシーの速さ;
        k_y = h_y + k_y_tel;
      }
      if(h_x >= width/2){
        int k_x_tel = int(random(60,101)); // キョンシーの速さ;
        k_x = h_x - k_x_tel;
      }
      if(h_y >= height /2){
        int k_y_tel = int(random(60,101)); // キョンシーの速さ;
        k_y = h_y - k_y_tel;
      }
      //最終トリガーフレームを更新
      lastTriggerFrame_k = frameCount;
   }
   
  }
}
