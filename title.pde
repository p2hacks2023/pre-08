//最初の画面
void title(){
  background(b_title);
  text("press enter",600,600);
  
  if(i==0){
    title_bgm.play();
  }
  i = 1;//bgmの重複止める
}
