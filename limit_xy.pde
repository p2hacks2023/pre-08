// 当たり判定のメソッド。大文字が能動オブジェクトの座標、小文字が受動オブジェクトの座標。
//後ろ4つの引数はrectの引数と同様の法則で用いる
boolean limit_xy(int X, int Y, int x, int y, int wide, int high){
  if( X+48 >= x &&  X <= x+wide && Y+48 >= y && Y <= y+high){
   return true;
  }else{
   return false;
  }
}
// 上の関数の発展バージョン、主人公用。壁にぶつかったら進めなくなる（）
void collision(boolean limit, int X, int Y, int x, int y,int wide,int high){
  
  if(limit == true){
    if(X+48 == x){
      c_left = true;
      print(1);
    }
    if(X == x+wide){
      c_right = true;
      print(2);
    }
    if(Y+48 == y){
      c_up = true;
      print(3);
    }
    if(Y == y+high){
      c_down = true;
      print(4);
    }
  }else{
    c_left = false;
    c_right = false;
    c_up = false;
    c_down = false;
  }
  
}
void a_collision(boolean limit, int X, int Y, int x, int y,int wide,int high){
  
  if(limit == true){
    if(X+48 == x){
      a_left = true;
      //print(X);
    }
    if(X == x+wide){
      a_right = true;
      //print(2);
    }
    if(Y+48 == y){
      a_up = true;
      //print(3);
    }
    if(Y == y+high){
      a_down = true;
      //print(4);
    }
  }else{
    a_left = false;
    a_right = false;
    a_up = false;
    a_down = false;
  }
  
}
int chase(int a_x, int a_y){
  int dis_x = a_x - h_x;
  int dis_y = a_y - h_y;

  int abs_x = abs(dis_x);
  int abs_y = abs(dis_y);
  //print(dis_x);
  //print(dis_y);
  //print(abs_x);
  //print(abs_y);
  if(abs_x >= abs_y && dis_x > 0){
    return 1;
  }else if(abs_x >= abs_y && dis_x < 0){
    return 2;
  }else if(abs_x <= abs_y && dis_y > 0){
    return 3;
  }else if(abs_x <= abs_y && dis_y < 0){
    return 4;
  }else{
  return 0;
}
}
