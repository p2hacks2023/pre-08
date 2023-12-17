int blkcl =255;//暗転用

//1暗転,-1明転
//シーン切り替え前にblkclを255か0にすること
//w_or_bで白黒決める
void blkinout(int clcng, int w_or_b) {
  if (255>=blkcl && blkcl>=0) {
    blkcl -= clcng;

    fill(w_or_b, blkcl);
    rect(0, 0, width, height);
  }
}


float mlsum=0;
//タイマー機能
//選択画面に必ずmlsum=0を入れること
int timer() {
  mlsum+=1.0/60;
  //println(int(mlsum));
  return(int(mlsum));
}

//朝になる機能
void limorn(int dawn) {
  int time_dif=timer();
  fill(255, 185, 150, 60-dawn+time_dif);
  rect(0, 0, width, height);
  println(time_dif);
  if (time_dif>60) {
    CatTime=true;
    blkcl=255;
    scene = 5;
  }
}
