void setupData() {
 //チャプターごとにセリフをリストに追加
  chapters = new ArrayList<ArrayList<String>>();
  
//オープニング
  ArrayList<String> opening = new ArrayList<String>();
  opening.add("ここはとある森の中");
  opening.add("この周辺におばけが出るという噂があった");
  opening.add("人を愛しながら、未練を残して死んでしまった哀しいおばけ");
  opening.add("貴方は彼らにせめてもの弔いにと森を進む");
  opening.add("ある花を携えて...");
  opening.add("どこからだろうか");
  opening.add("森の中でカラカラと陽気な音が聞こえてきた―――");
  chapters.add(opening);

  //第一章　森・ガイコツ
  ArrayList<String> chapter1 = new ArrayList<String>();
  chapter1.add("これは...");
  chapter1.add("黄色のヒヤシンスか。花をもらうなんてことは、長いことなかったな。");
  chapter1.add("それにしても何故ヒヤシンスを…？");
  chapter1.add("ふむふむ、なるほど。ヒヤシンスの花言葉が「哀しみを超えた愛」だからか。");
  chapter1.add("ワシはこうして楽しく踊っているが、生前は愛した人も…。");
  chapter1.add("ささ、辛気臭い話なんてやめて、一緒に踊ろうぞ!");
  chapter1.add("館の紳士夫人らも誘ってみていいかのう?");
  chapter1.add("彼らもきっと退屈しておる。");
  chapter1.add("花でも差して踊るのが一番の退屈しのぎさ！");
  chapters.add(chapter1);

 //第二章　洋館・幽霊
 ArrayList<String> chapter2_1_1 = new ArrayList<String>(); //男に先に渡せたとき
 chapter2_1_1.add("君は…。いや、何でもない。");
 chapter2_1_1.add("この花は綺麗だね。");
 chapter2_1_1.add("もしよければ彼女にも渡してもらえないかい？");
 chapter2_1_1.add("黄色い花がいいな。すごく似合うからさ。");
 chapters.add(chapter2_1_1);
 
 ArrayList<String> chapter2_1_2 = new ArrayList<String>(); //女に先に渡せたとき
 chapter2_1_2.add("あなたは…。");
 chapter2_1_2.add("そうね、ありがとう。花を贈ってくれるのね。");
 chapter2_1_2.add("青い方を彼に贈ることはできない？");
 chapter2_1_2.add("きっと喜ぶわ。");
 chapters.add(chapter2_1_2);
 
 ArrayList<String> chapter2_2 = new ArrayList<String>(); //両方に渡せたとき
 chapter2_2.add("女：ありがとうね、私たちも未練なく逝けそうだわ。");
 chapter2_2.add("男：それにしても、よくここまで来たね。森で迷わなかったかい？");
 chapter2_2.add("女：...そう。ガイコツさんが教えてくれたのね。");
 chapter2_2.add("男：彼が、一緒に踊ろうって言ってたのか？踊りなんでここ最近はしてないから、うまくできるかな");
 chapter2_2.add("女：あら、ならわたしは一人で踊りに行きますよ？");
 chapter2_2.add("男：そんな殺生な。分かった、へたでも笑わないでくれよ？");
 chapter2_2.add("女：それは大丈夫、楽しむ形が良い踊りを成すのよ。");
 chapter2_2.add("男：ゴホン、ところでキミは、私たちと一緒に行くかい？");
 chapter2_2.add("主人公：（まだ行くべきところがある）");
 chapter2_2.add("女：…そうね。強い想いは、どんなものだって妨げられないものね。");
 chapter2_2.add("男：私たちも、一度死んだ後にお墓で再開したんだ。探している人がいるなら、そこを訪れてみたらいいと思うよ。");
 chapter2_2.add("頑張ってね、愛しの―――");
 chapters.add(chapter2_2);
 
 //第３章　墓地・キョンシー
 ArrayList<String> chapter3_1 = new ArrayList<String>(); //お札を貼ったとき
 chapter3_1.add("…？…！");
 chapters.add(chapter3_1);
 
 
 ArrayList<String> chapter3_2 = new ArrayList<String>(); //花をわたせたとき
 chapter3_2.add("ん。あまり見かけない花だね。…プレゼント？");
 chapter3_2.add("そうか。初めてかも。君からもらうプレゼント。");
 chapter3_2.add("もらう前にこんなになっちゃったからね。");
 chapter3_2.add("ああ、そうか。君は自分のことをあまり知らないのか。");
 chapter3_2.add("…踊りのことをなぜ知っているのかって？");
 chapter3_2.add("ふふ、小鳥がさえずっていたんだよ。陽気なダンスを踊りながらね。");
 chapters.add(chapter3_2);
}
