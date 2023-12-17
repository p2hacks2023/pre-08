//セリフを表示する関数
void displayDialog(String dialog) {
  //一定フレームごとに次の文字を表示
  if (frameCount % 3 == 0 && currentChar < dialog.length()) {
    currentChar++;
  }

  //現在のセリフを表示
  text(dialog.substring(0, currentChar), width / 2, height / 2);
}
