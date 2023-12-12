int scene = 0; //場面切り替え用
int h_x = 100; //主人公の位置（x座標）
int h_y = 100; //主人公の位置（y座標）
int h_speed = 2; //主人公の動く速さ
int s_x, s_y= 200; //骸骨の座標
int s_speed = 1; //骸骨の速さ
boolean left,right,up,down = false; //主人公の移動（ｘ座標）と主人公の移動（ｙ座標）
boolean c_left,c_right,c_up,c_down = false;//壁などの衝突判定用
boolean flower_flag = false; //花の有無判定
boolean a_left,a_right,a_up,a_down = false; //あやかしの衝突判定


void setup(){
  size(1280,800);
  
}

void draw(){
  
  switch(scene) {
    case 0:
      title();
      break;  
    case 1:
      forest();
      break; 
    case 2:
      //house();
      break;
    case 3:
      //grave();
      break;
    case 4:
      //end();
  }
}
