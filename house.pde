void house() {
  background(b_house);

  //キャラクター表示
  hero();
  ghost1();//red
  ghost2();//green
  //ヒヤシンス2つ表示
  if (flower_flag == false) {
    image(blue, 200, 150, 48, 48);
  }
  if (flower_flag2 == false) {
    image(yellow, 1000, 150, 48, 48);
  }
  //ヒヤシンス2つの取得処理
  if (limit_xy(h_x, h_y, 1000, 150, 48, 48) == true) {
    if (flower_flag2 == false) {
      get_se.play();
    }
    flower_flag2 = true;
  }
  if (limit_xy(h_x, h_y, 200, 150, 48, 48) == true) {
    if (flower_flag == false) {
      get_se.play();
    }
    flower_flag = true;
  }
}
