import gifAnimation.*;
//Gif用
Gif heroFrontWalk;
Gif heroBackWalk;
Gif heroLeftWalk;
Gif heroRightWalk;
Gif sklFrontWalk;
Gif sklBackWalk;
Gif sklLeftWalk;
Gif sklRightWalk;

int frameskip =2;
int scene = 0; //場面切り替え用
int tree_x[] = {22,460,958,1114,120,682,326,814,1112,60,594,958,68,492,214,626,920,1112};
int tree_y[] = {16,8,48,26,176,66,288,216,214,402,392,456,586,506,658,648,594,622};
int tree_x_gap[] = {110,126,110,126,126,110,110,126,126,110,126,110,126,110,110,126,126,126};
int tree_y_gap[] = {126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126};
int boti_x[] = {30,212,394,576,758,940,1122,121,303,485,667,849,1031,30,212,394,576,758,940,1122};
int boti_y[] = {135,135,135,135,135,135,135,397,397,397,397,397,397,397,659,659,659,659,659,659,659};
int boti_x_gap[] = {127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127};
int boti_y_gap[] = {127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127};
//キャラクターのパラメーター
int h_x = 600; //主人公の位置（x座標）
int h_y = 600; //主人公の位置（y座標）
int h_speed = 10; //主人公の動く速さ
int s_x =200;
int s_y= 200; //骸骨の座標
int s_speed = 2; //骸骨の速さ
int g1_x =200; //redwomanが幽霊1
int g1_y= 200; //幽霊1の座標
int g1_speed = 1; //幽霊1の速さ
int g2_x =800;//greenmanのx座標
int g2_y= 200; //幽霊2の座標
int g2_speed = 1; //幽霊2の速さ
//幽霊たちの速さ調整用
int interval_g1 = 60 * 3; // 3秒分のフレーム数
int interval_g2 = 60 * 5; // 5秒分のフレーム数
int lastTriggerFrame = 0;
int lastTriggerFrame_g2 = 0;

int k_x =200;
int k_y= 200; //キョンシーの座標
int k_speed = 1;//キョンシーの速さ
int enter_f=0; //森のフラグ
int enter_h=0; //洋館のフラグ
int enter_g=0;
int before_flag = 1;
int before_sx, before_sy;
int before_time = 0;
int after_time = 0;
boolean left,right,up,down = false; //主人公の移動（ｘ座標）と主人公の移動（ｙ座標）
boolean c_left = false;
boolean c_right = false;
boolean c_up = false;
boolean c_down = false;//壁などの衝突判定用
boolean flower_flag = false; //花の有無判定
boolean a_left,a_right,a_up,a_down = false; //あやかしの衝突判定
boolean escape,escape2 = false;

PImage b_forest, b_grave, b_house, b_select, b_title,hero_f_1, hero_f_2, hero_f_3,hero_b_1, hero_b_2, hero_b_3, hero_l_1, hero_l_2, hero_l_3, hero_r_1, hero_r_2, hero_r_3,
       pink,purple,red,white,yellow,blue,h_f,skl_f,skl_b,skl_l,skl_r, rw_b, rw_f, rw_l, rw_r, gm_b, gm_f, gm_l, gm_r, kyo_f, kyo_b, kyo_l, kyo_r, end_t, end_c;


void setup(){
  size(1280,800);
  frameRate(120);
  
  //背景
  b_forest = loadImage("picture/forest.png");
  b_grave = loadImage("picture/grave.png");
  b_house = loadImage("picture/house.png");
  b_select = loadImage("picture/select.png");  
  b_title = loadImage("picture/title.png");
  //主人公のドット絵
  hero_f_1 = loadImage("picture/hero_front_1.png");
  hero_f_2 = loadImage("picture/hero_front_2.png");
  hero_f_3 = loadImage("picture/hero_front_3.png");
  hero_b_1 = loadImage("picture/hero_back_1.png");
  hero_b_2 = loadImage("picture/hero_back_2.png");
  hero_b_3 = loadImage("picture/hero_back_3.png");
  hero_l_1 = loadImage("picture/hero_L_1.png");
  hero_l_2 = loadImage("picture/hero_L_2.png");
  hero_l_3 = loadImage("picture/hero_L_3.png");
  hero_r_1 = loadImage("picture/hero_R_1.png");
  hero_r_2 = loadImage("picture/hero_R_2.png");
  hero_r_3 = loadImage("picture/hero_R_3.png");
  //ヒヤシンス
  pink = loadImage("picture/pink.png");
  purple = loadImage("picture/purple.png");
  red = loadImage("picture/red.png");
  white = loadImage("picture/white.png");
  yellow = loadImage("picture/yellow.png");
  blue = loadImage("picture/blue.png");
  //骸骨
  skl_f = loadImage("picture/skl_front1.png");//止まった時のドット絵
  skl_b = loadImage("picture/skl_back1.png");
  skl_l = loadImage("picture/skl_l1.png");
  skl_r = loadImage("picture/skl_r1.png");
  //幽霊1 red
  rw_b = loadImage("picture/wg_back.png");
  rw_f = loadImage("picture/wg_front.png");
  rw_r = loadImage("picture/wg_r.png");
  rw_l = loadImage("picture/wg_l.png");
  //幽霊2 green
  gm_b = loadImage("picture/mg_back.png");
  gm_f = loadImage("picture/mg_front.png");
  gm_r = loadImage("picture/mg_r.png");
  gm_l = loadImage("picture/mg_l.png");
  //キョンシー
  kyo_b = loadImage("picture/kyon_back.png");
  kyo_f = loadImage("picture/kyon_front.png");
  kyo_r = loadImage("picture/kyon_r.png");
  kyo_l = loadImage("picture/kyon_l.png");
  
  //エンディング
  end_t = loadImage("picture/go_time.png");
  end_c = loadImage("picture/go_catch.png");
    
  //gif
  frameRate(120);
  //プレイやー
  heroFrontWalk = new Gif(this, "picture/walkingFront2.gif");
  heroBackWalk = new Gif(this, "picture/walkingBack.gif");
  heroLeftWalk = new Gif(this, "picture/walkingLeft2.gif");
  heroRightWalk = new Gif(this, "picture/walkingRight2.gif");
  heroFrontWalk.play();
  heroBackWalk.play();
  heroLeftWalk.loop();
  heroRightWalk.loop();
  //骸骨
  sklFrontWalk = new Gif(this, "picture/skl_walkingFront.gif");
  sklBackWalk = new Gif(this, "picture/skl_walkingBack.gif");
  sklLeftWalk = new Gif(this, "picture/skl_walkingLeft.gif");
  sklRightWalk = new Gif(this, "picture/skl_walkingRight.gif");
  sklFrontWalk.play();
  sklBackWalk.play();
  sklLeftWalk.loop();
  sklRightWalk.loop();
  
  frameRate(60);
   
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
      house();
      break;
    case 3:
      //grave();
      break;
    case 4:
      //end();
    case 5:
      bad_end();
      break;
    case 6:
      story_skelton();
      break;
    case 99:
       select();
       break; 
  }
  
}
