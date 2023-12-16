int blkcl =255;

//1暗転,-1明転
//シーン切り替え前にblkclを255か0にすること
//w_or_bで白黒決める
void blkinout(int clcng, int w_or_b) {

  if (255>=blkcl && blkcl>=0) {
    blkcl -= clcng;

    fill(w_or_b, clcng);
    rect(0, 0, width, height);
  }
}


float mlsum=0;
//タイマー機能
//選択画面に必ずmlsum=0を入れること
//timerが規定の秒数以上になったときのif文作ってね

int timer(){
mlsum+=1.0/60;  
//println(int(mlsum));
return(int(mlsum));
}


////朝になる機能
//void limorn(){




//}
