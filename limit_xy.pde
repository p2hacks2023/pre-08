// 当たり判定のメソッド。大文字が能動オブジェクトの座標、小文字が受動オブジェクトの座標。
//後ろ4つの引数はrectの引数と同様の法則で用いる
boolean limit_xy(int X, int Y, int x, int y, int wide, int high){
  if( X+48 >= x &&  X <= x+wide && Y+48 >= y && Y <= y+high){
   return true;
  }else{
   return false;
  }
}
// 上の関数の発展バージョン、壁にぶつかったら進めなくなる
void collision(boolean limit, int X, int Y, int x, int y,int wide,int high){
  
  if(limit == true){
    if(X+48 == x){
      c_left = true;
      //print(X);
    }
    if(X == x+wide){
      c_right = true;
      //print(2);
    }
    if(Y+48 == y){
      c_up = true;
      //print(3);
    }
    if(Y == y+high){
      c_down = true;
      //print(4);
    }
  }else{
    c_left = false;
    c_right = false;
    c_up = false;
    c_down = false;
  }
  
}
