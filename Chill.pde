import gifAnimation.*;

Gif heroFrontWalk;
Gif heroBackWalk;
Gif heroLeftWalk;
Gif heroRightWalk;



int frameskip =2;
int scene = 0; //場面切り替え用
int tree_x[] = {22,460,958,1114,120,682,326,814,1112,60,594,958,68,586,214,626,920,1112};
int tree_y[] = {16,8,48,26,176,66,288,216,214,402,392,456,586,506,658,648,594,622};
int tree_x_gap[] = {110,126,110,126,126,110,110,126,126,110,126,110,126,110,110,126,126,126};
int tree_y_gap[] = {126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126,126};
int h_x = 500; //主人公の位置（x座標）
int h_y = 400; //主人公の位置（y座標）
int h_speed = 2; //主人公の動く速さ
int s_x =200;
int s_y= 200; //骸骨の座標
int s_speed = 1; //骸骨の速さ
int g1_x =200;
int g1_y= 200; //幽霊1の座標
int g1_speed = 1; //幽霊1の速さ
int g2_x =200;
int g2_y= 200; //幽霊1の座標
int g2_speed = 1; //幽霊1の速さ
int k_x =200;
int k_y= 200; //キョンシーの座標
int k_speed = 1;//キョンシーの速さ
int enter_f=0; //森のフラグ
int enter_h=0; //洋館のフラグ
int enter_g=0;
int before_flag = 1;
//int 
boolean left,right,up,down = false; //主人公の移動（ｘ座標）と主人公の移動（ｙ座標）
boolean c_left = false;
boolean c_right = false;
boolean c_up = false;
boolean c_down = false;//壁などの衝突判定用
boolean flower_flag = false; //花の有無判定
boolean a_left,a_right,a_up,a_down = false; //あやかしの衝突判定
PImage b_forest, b_grave,hero_f_1, hero_f_2, hero_f_3,hero_b_1, hero_b_2, hero_b_3, hero_l_1, hero_l_2, hero_l_3, hero_r_1, hero_r_2, hero_r_3,pink,purple,red,white,yellow,blue,h_f,skl_f,skl_b;



void setup(){
  size(1280,800);
  frameRate(120);
  
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
  hero_l_1 = loadImage("picture/hero_L_1.png");
  hero_l_2 = loadImage("picture/hero_L_2.png");
  hero_l_3 = loadImage("picture/hero_L_3.png");
  hero_r_1 = loadImage("picture/hero_R_1.png");
  hero_r_2 = loadImage("picture/hero_R_2.png");
  hero_r_3 = loadImage("picture/hero_R_3.png");
  //オブジェクト
  pink = loadImage("picture/pink.png");
  purple = loadImage("picture/purple.png");
  red = loadImage("picture/red.png");
  white = loadImage("picture/white.png");
  yellow = loadImage("picture/yellow.png");
  blue = loadImage("picture/blue.png");
  
  //gif
  frameRate(120);
  heroFrontWalk = new Gif(this, "picture/walkingFront2.gif");
  heroBackWalk = new Gif(this, "picture/walkingBack.gif");
  heroLeftWalk = new Gif(this, "picture/walkingLeft2.gif");
  heroRightWalk = new Gif(this, "picture/walkingRight2.gif");
  heroFrontWalk.play();
  heroBackWalk.play();
  heroLeftWalk.loop();
  heroRightWalk.loop();
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
