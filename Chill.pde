import gifAnimation.*;
import processing.sound. *;//音を入れるライブラリ

//Gif用
Gif heroFrontWalk;
Gif heroBackWalk;
Gif heroLeftWalk;
Gif heroRightWalk;
Gif sklFrontWalk;
Gif sklBackWalk;
Gif sklLeftWalk;
Gif sklRightWalk;
//音楽用
SoundFile  get_se, catch_se, com_se, forest_bgm, title_bgm, grave_bgm, house_bgm;
//文章の表示用
PFont customFont;
ArrayList<ArrayList<String>> chapters;
int ani_flag = 0;
int currentChapter = 0;
int currentLine = 0;
int currentChar = 0;
int frameDelay = 2;
boolean displayingDialog = true; //オープニングとエンディングのモード
//機能用
int i = 0;//bgm判定用
int scene = 0; //場面切り替え用
//木の座標
int tree_x[] = {22, 460, 958, 1114, 120, 682, 326, 814, 1112, 60, 594, 958, 68, 492, 214, 626, 920, 1112};
int tree_y[] = {16, 8, 48, 26, 176, 66, 288, 216, 214, 402, 392, 456, 586, 506, 658, 648, 594, 622};
int tree_x_gap[] = {110, 126, 110, 126, 126, 110, 110, 126, 126, 110, 126, 110, 126, 110, 110, 126, 126, 126};
int tree_y_gap[] = {126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126};
//墓の座標
int boti_x[] = {30, 212, 394, 576, 758, 940, 1122, 120, 302, 484, 666, 848, 1030, 30, 212, 394, 576, 758, 940, 1122};
int boti_y[] = {134, 134, 134, 134, 134, 134, 134, 396, 396, 396, 396, 396, 396, 396, 658, 658, 658, 658, 658, 658, 658};
int boti_x_gap[] = {126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126};
int boti_y_gap[] = {126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126};
//キャラクターのパラメーター
int h_x = 600; //主人公の位置（x座標）
int h_y = 600; //主人公の位置（y座標）
int h_speed = 2; //主人公の動く速さ
int s_x =200; //骸骨のx座標
int s_y= 200; //骸骨のy座標
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
int lastTriggerFrame = 0; // 時間計測用
int lastTriggerFrame_g2 = 0;//時間計測用
//キョンシー
int k_x =200;
int k_y= 200; //キョンシーの座標
int k_speed = 1;//キョンシーの速さ
int interval_k = 60 * 7;//7秒ごとの計測
int k_x_tel = 5;//テレポート範囲 x
int k_y_tel = 5;//テレポート範囲 y
int lastTriggerFrame_k = 0;// 時間計測用

//ステージ関連
//フラグ
int enter_f=0; //森のフラグ
int enter_h=0; //洋館のフラグ
int enter_g=0; //墓のフラグ
int before_flag = 1;
int before_sx, before_sy;
int before_time = 0;
int after_time = 0;
boolean left, right, up, down = false; //主人公の移動（ｘ座標）と主人公の移動（ｙ座標）
boolean c_left = false;//壁などの衝突判定
boolean c_right = false;//
boolean c_up = false;//
boolean c_down = false;//壁などの衝突判定用
boolean flower_flag = false; //花の有無判定
boolean flower_flag2 = false; //花の有無判定
boolean a_left, a_right, a_up, a_down = false; //あやかしの衝突判定
boolean escape, escape2 = false;//スケルトンの逃走用
boolean CatTime=false;//時間
//画像用
PImage b_forest, b_grave, b_house, b_select, b_title, hero_f_1, hero_f_2, hero_f_3, hero_b_1, hero_b_2, hero_b_3, hero_l_1, hero_l_2, hero_l_3, hero_r_1, hero_r_2, hero_r_3,
  pink, purple, red, white, yellow, blue, h_f, skl_f, skl_b, skl_l, skl_r, rw_b, rw_f, rw_l, rw_r, gm_b, gm_f, gm_l, gm_r, kyo_f, kyo_b, kyo_l, kyo_r, end_t, end_c, endskl;


void setup() {
  size(1280, 800);
  setupData();
  frameRate(120);

  //日本語に変換
  customFont = createFont("DotGothic16/DotGothic16-Regular.ttf", 32);
  textFont(customFont);

  //音楽
  get_se = new SoundFile(this, "sound/hya_get.mp3");//ヒヤシンスゲット
  catch_se = new SoundFile(this, "sound/tukamaru.mp3");//捕まった
  com_se = new SoundFile(this, "sound/comunication.mp3");//捕まえた
  forest_bgm = new SoundFile(this, "sound/forest_bgm.mp3");//森
  title_bgm = new SoundFile(this, "sound/title_bgm.mp3");//タイトルとセレクト
  grave_bgm = new SoundFile(this, "sound/grave_bgm.mp3");//墓
  house_bgm = new SoundFile(this, "sound/house_bgm.mp3");//洋館

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

  endskl = loadImage("picture/itimaie_skl.png");

  frameRate(60);
}

void draw() {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(32);
  fill(255);
  //println(scene);
  switch(scene) {
  case 0:
    title();
    break;
  case 1:
    forest();
    break;
  case 2:
    house();
    h_x = constrain(h_x, 110, 1150);
    h_y = constrain(h_y, 60, 670);
    break;
  case 3:
    grave();
    break;
  case 4:
    //end();
  case 5:
    bad_end(CatTime);
    blkinout(1, 0);
    break;
  case 6:
    story_skelton();//骸骨会話
    break;
  case 10:
    displayDialog(chapters.get(currentChapter).get(currentLine));
    break;
  case 11:
    background(endskl);
    displayDialog(chapters.get(currentChapter).get(currentLine));
    break;
  case 12:
    displayDialog(chapters.get(currentChapter).get(currentLine));
    break;
  case 17:
    displayDialog(chapters.get(currentChapter).get(currentLine));
    break;
  case 99:
    select();
    break;
  case 999:
    load();
    break;
  }
}
