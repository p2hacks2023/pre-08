int scene = 99; //場面切り替え用
int h_x = 100; //主人公の位置（x座標）
int h_y = 100; //主人公の位置（y座標）
int h_speed = 2; //主人公の動く速さ
int s_x, s_y= 200; //骸骨の座標
int s_speed = 1; //骸骨の速さ
int enter_f=0; //森のフラグ
int enter_h=0; //洋館のフラグ
int enter_g=0;
boolean left,right,up,down = false; //主人公の移動（ｘ座標）と主人公の移動（ｙ座標）
boolean c_left,c_right,c_up,c_down = false;//壁などの衝突判定用
boolean flower_flag = false; //花の有無判定
boolean a_left,a_right,a_up,a_down = false; //あやかしの衝突判定
PImage b_forest, b_grave,hero_f_1, hero_f_2, hero_f_3,hero_b_1, hero_b_2, hero_b_3, hero_l_1, hero_l_2, hero_l_3, hero_r_1, hero_r_2, hero_r_3;


void setup(){
  size(1280,800);
  //背景
  b_forest = loadImage("picture/forest.png");
  b_grave = loadImage("picture/grave.png");
  //主人公のドット絵
  hero_f_1 = loadImage("picture/hero_front_1.png");
  hero_f_2 = loadImage("picture/hero_front_2.png");
  hero_f_3 = loadImage("picture/hero_front_3.png");
  hero_b_1 = loadImage("picture/hero_back_1.png");
  hero_b_2 = loadImage("picture/hero_back_2.png");
  hero_b_3 = loadImage("picture/hero_back_3.png");
  hero_l_1 = loadImage("picture/hero_left_1.png");
  hero_l_2 = loadImage("picture/hero_left_2.png");
  hero_l_3 = loadImage("picture/hero_left_3.png");
  hero_r_1 = loadImage("picture/hero_right_1.png");
  hero_r_2 = loadImage("picture/hero_right_2.png");
  hero_r_3 = loadImage("picture/hero_right_3.png");
  
}

void draw(){
  background(0);
       
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
    case 99:
       select();
  }
}
