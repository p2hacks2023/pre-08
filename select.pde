void select(){
  
  hero();
  
  
  
  
  
  
  //後で消す
  rect(540,0,200,150);//上の当たり判定枠
  rect(540,height-150,200,150);//下の当たり判定枠
  rect(0,300,150,200);//左の当たり判定枠
  rect(width-150,300,150,200);////右の当たり判定枠
  line(0,height/2,width,height/2);
  line(width/2,0,width/2,height);
  

}
