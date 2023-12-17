//がいこつのステージ
void forest() {

  background(b_forest);
  //主人公の木の当たり判定
  for (int i = 0; i < tree_x.length; i++) {
    if (( h_x+48 >= tree_x[i] &&  h_x <= tree_x[i]+tree_x_gap[i] && h_y+48 >= tree_y[i] && h_y <= tree_y[i]+tree_y_gap[i])) {
      if (h_x+48 == tree_x[i]) {
        h_x -= h_speed;
      }
      if (h_x == tree_x[i]+tree_x_gap[i]) {
        h_x += h_speed;
      }
      if (h_y+48 == tree_y[i] ) {
        h_y -= h_speed;
      }
      if (h_y == tree_y[i]+tree_x_gap[i] ) {
        h_y += h_speed;
      }
    }
  }

  //キャラクターの表示
  hero();
  skelton();
  //黄色ヒヤシンス表示
  if (flower_flag == false) {
    image(yellow, 900, 150, 48, 48);
  }
  //ヒヤシンスに触れたらフラグオン
  if (limit_xy(h_x, h_y, 900, 150, 48, 48) == true) {
    if (flower_flag == false) {
      get_se.play();//効果音
    }
    flower_flag = true;
  }
}
