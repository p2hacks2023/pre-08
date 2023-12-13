void select_collision(){//ステージ移動の当たり判定
  if(h_x >= 540 && h_x <= 540 + 200 && h_y >= 0 && h_y <= 150){// 上枠
      enter_h= 1;//洋館に移動したい、フラグかな　上
      fill(0,255,255);
  }else{
    enter_h= 0;
  }
  if(h_x >= 540 && h_x <= 540 + 200 && h_y >= height-150 && h_y <= height){//下枠
     scene =0; //当たったらタイトルに戻りたい　下
  }
  if(h_x >= 0 && h_x <= 150 && h_y >= 300 - 48 && h_y <= 300 + 200){//左枠
    enter_g = 1; //墓に移動したい　右
    fill(255,0,255);
  }else{
    enter_g = 0;
  }
  if(h_x >= width - 150 - 48 && h_x <= width && h_y >= 300 - 48 && h_y <= 300 + 200){ //右枠
    enter_f = 1;//森に移動したい 左
    fill(255,255,0);
  }else{
    enter_f = 0;
  }
}

void select(){
  hero();
  select_collision();
  
  
  
  //後で消す
  rect(540,0,200,150);//上の当たり判定枠
  rect(540,height-150,200,150);//下の当たり判定枠
  rect(0,300,150,200);//左の当たり判定枠
  rect(width-150,300,150,200);////右の当たり判定枠
  
  line(0,height/2,width,height/2);
  line(width/2,0,width/2,height);
  

}
