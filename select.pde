void select_collision() {//ステージ移動の当たり判定
  if (h_x >= 540 -48 && h_x <= 540 + 200 && h_y >= 0 && h_y <= 150) {// 上枠 ( -48 はプレイヤーの大きさ分)
    enter_h= 1;//洋館に移動したい、フラグかな　上
    h_x = 600;
    h_y = 700;
    scene = 999;//ロードに移動
  }

  if (h_x >= 0 && h_x <= 150 && h_y >= 300 - 48 && h_y <= 300 + 200) {//左枠 ( -48 はプレイヤーの大きさ分)
    enter_g = 1; //墓に移動したい　左
    scene = 999;//ロードに移動
  }

  if (h_x >= width - 150 - 48 && h_x <= width && h_y >= 300 - 48 && h_y <= 300 + 200) { //右枠 端から幅( 150 )とプレイヤー分( 48 )引く
    enter_f = 1;//  森に移動したい 右
    scene = 999;//ロードに移動
  }

  if (scene == 99) {
    if (h_x >= 540 - 48 && h_x <= 540 + 200 && h_y >= height-150 - 48 && h_y <= height ) {//下枠
      scene = 0; //当たったらタイトルに戻りたい　下
      h_x = 600;
      h_y = 600;
    }
  }
}

void select() {
  background(b_select);
  hero();
  select_collision();
  flower_flag = false;
  mlsum=0;
  CatTime=false;
}

void load() {
  if (enter_f == 1) {//森行き
    h_x = 600;
    h_y = 500;
    scene = 1;
    if (title_bgm.isPlaying()) {//bgmをなっていたら止める
      title_bgm.pause();
    }
    forest_bgm.play();//森のbgm再生
    enter_f = 0;//フラグ初期化
  }

  if (enter_h == 1) {
    h_x = 600;
    h_y = 700;
    scene = 2;//洋館に移動
    if (title_bgm.isPlaying()) {//bgmをなっていたら止める
      title_bgm.pause();
    }
    house_bgm.play();//洋館のbgm再生
    enter_h = 0;//フラグ初期化
  }

  if (enter_g == 1) {
    h_x = 600;
    h_y = 700;
    scene = 3;//墓に移動
    if (title_bgm.isPlaying()) {//bgmをなっていたら止める
      title_bgm.pause();
    }
    grave_bgm.play();//墓のbgm再生
    enter_h = 0;//フラグを初期化
  }
}
