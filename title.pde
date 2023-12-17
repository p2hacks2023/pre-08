//最初の画面
void title() {
  background(b_title);
  text("press enter", 600, 750);
  h_x = 600; //主人公の位置（x座標）
  h_y = 600; //主人公の位置（y座標）
  if (i==0) {
    title_bgm.play();//bgm再生
  }
  i = 1;//bgmの重複止める
}
