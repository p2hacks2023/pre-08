void grave() {
  background(b_grave);
  //キャラクター表示
  hero();
  kyoncy();
  //墓石の当たり判定
  for (int i = 0; i < boti_x.length; i++) {

    if (( h_x+48 >= boti_x[i] &&  h_x <= boti_x[i]+boti_x_gap[i] && h_y+48 >= boti_y[i] && h_y <= boti_y[i]+boti_y_gap[i])) {

      if (h_x+48 == boti_x[i]) {
        h_x -= h_speed;
      }
      if (h_x == boti_x[i]+boti_x_gap[i]) {
        h_x += h_speed;
      }
      if (h_y+48 == boti_y[i] ) {
        h_y -= h_speed;
      }
      if (h_y == boti_y[i]+boti_x_gap[i] ) {
        h_y += h_speed;
      }
    }
  }

  //ヒヤシンス表示
  if (flower_flag == false) {
    image(purple, 100, 240, 48, 48);
  }
  //ヒヤシンス取得
  if (limit_xy(h_x, h_y, 100, 240, 48, 48) == true) {
    if (flower_flag == false) {
      get_se.play();//効果音
    }
    flower_flag = true;
  }
}
