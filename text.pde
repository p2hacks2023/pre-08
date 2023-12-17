//セリフを表示する関数
void displayDialog(String dialog) {
  //一定フレームごとに次の文字を表示
  if (frameCount % 3 == 0 && currentChar < dialog.length()) {
    currentChar++;
  }

  if (currentChapter == 0) {//テキストを表示と位置
    text(dialog.substring(0, currentChar), width / 2, height / 2);
  } else {
    text(dialog.substring(0, currentChar), width / 2, 650);
  }
}
