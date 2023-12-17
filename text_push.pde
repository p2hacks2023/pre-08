void mousePressed() {
if (displayingDialog) {
    // セリフの表示が完了している場合
    if (currentChar >= chapters.get(currentChapter).get(currentLine).length()) {
      currentLine++;
      currentChar = 0;

      // 最後のセリフを表示したらボタンを押して次の章に進む
      if (currentLine >= chapters.get(currentChapter).size()) {
        currentChapter++;
        currentLine = 0;
        currentChar = 0;
        displayingDialog = false;
        if(ani_flag == 0){
          scene = 99;
        }
        if(ani_flag == 1){
          scene = 1;
        }

        // 最後の章を表示したらセリフ表示モードを終了する
        //if (currentChapter >= chapters.size()) {
          //displayingDialog = false;
        //}
      }
    }
  }
}
