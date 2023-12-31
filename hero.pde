// 主人公の挙動
void hero() {

  //場外に出ないようにする
  h_x = constrain(h_x, 0, width - 48);
  h_y = constrain(h_y, 0, height - 48);

  //以下は移動の挙動
  if (up == true) {
    h_y -= h_speed;
    if (down == false) {
      image(heroBackWalk, h_x, h_y, 48, 48);
    }
  }
  if (down == true) {
    h_y += h_speed;

    image(heroFrontWalk, h_x, h_y, 48, 48);
  }
  if (left == true) {
    h_x -= h_speed;
    //image(heroLeftWalk, h_x, h_y, 48, 48);
    if (down == false && up == false) {
      image(heroLeftWalk, h_x, h_y, 48, 48);
    }
  }
  if (right == true) {
    h_x += h_speed;
    //image(heroRightWalk, h_x, h_y, 48, 48);
    if (down == false && up == false && left == false) {
      image(heroRightWalk, h_x, h_y, 48, 48);
    }
  }
  if (up == false && down == false && left == false && right == false) {
    if (before_flag == 3) image(hero_f_1, h_x, h_y, 48, 48);
    if (before_flag == 1) image(hero_b_1, h_x, h_y, 48, 48);
    if (before_flag == 2) image(hero_l_1, h_x, h_y, 48, 48);
    if (before_flag == 4) image(hero_r_1, h_x, h_y, 48, 48);
  }

  //障害物にあたったときの挙動
  if (c_up == true) h_y -= h_speed;
  if (c_down == true)h_y += h_speed;
  if (c_left == true)h_x -= h_speed;
  if (c_right == true)h_x += h_speed;
}
