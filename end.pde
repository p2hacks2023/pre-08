void bad_end(boolean endtimechk) {
  fill(0);
  if (endtimechk) {
    background(end_t);//時間でゲームオーバー
  } else {
    background(end_c);//捕まってゲームオーバー
  }
  //再スポーン
  h_x = width/2-24;
  h_y = height/2-24;
}
