int scene = 0; //場面切り替え用
int h_x = 100; //主人公の位置（x座標）
int h_y = 100; //主人公の位置（y座標）
int h_speed = 1; //主人公の動く速さ
int enter_f=0; //森のフラグ
int enter_h=0; //洋館のフラグ
int enter_g=0; //墓場のフラグ
boolean left,right,up,down = false; //主人公の移動（ｘ座標）と主人公の移動（ｙ座標）
boolean c_left,c_right,c_up,c_down = false;


void setup(){
  size(1280,800);
//photo1 = loadImage("majo1.png");//画像のロード
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
       break;
     case 99:
       select();
  }
}
