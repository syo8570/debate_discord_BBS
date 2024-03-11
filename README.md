# 空想ディベート掲示板(仮)

■サービス概要
どんなサービスなのかを３行で説明してください。

「もしも早く走る【飲み物】を挙げろって言われたら、何が浮かぶ？」<br>
お硬い話ばかりしがちなディベート。こんな一見くだらない議題を元に話しても、各々が主張をし合えばそれは立派なディベートです！<br>
これはそんな会話を楽しんだり、体験した皆さんの討論結果を投稿し共有して楽しむサービスです。<br>
***
■ このサービスへの思い・作りたい理由

私はディベートなど人と意見を交わす事が好きなのですが、真面目な話ばかりでは疲れてしまう事がどうしても起きてしまいます。<br>
そんな中、友人が雑談中にふと話を振ってくれました。


「お前、一番強そうな名前の食べ物ってなんだと思う？」


そんな発端から始まった会話が、意図せず各々の主張をするディベートと瓜二つの状況に発展。<br>
にも関わらず、とても気楽で楽しく繰り広げる事が出来ました。

真剣なディベートも楽しいですが、人と意見がぶつかり合うディベートは苦手な人も多いかと思います。

そんな時、こうして気楽に試せるようなディベートを提供出来るサービスがあれば。<br>
時には何かしらの交流会でのレクリエーションで。<br>
時には学生など、ディベートの練習をしてみたいけど勝手が分からない時の第一歩として。<br>
苦手意識を上書きし、ディベートがなんだか怖い言い合いという意識を払拭して楽しんで頂ける場を提供したいです。<br>
***
■ ユーザー層について

* ディベートを練習したい、気軽に楽しみたい人
* ディベートをしてみたいが、敷居が高くて触れられていない人
* 学生や会社員など、仲間内や交流会などで会話を繰り広げるツールに
* 理想は学生や新社会人などに触れてもらい、ディベートを通して自己主張の仕方の練習と、思考の多角化へのキッカケにして欲しい
***
■サービスの利用イメージ

* ディスコードを利用してのディベート機能<br>
	ディスコードを利用し任意のサーバーへディスコードBOTを招待し、<br>
  コマンドを使用することで議題の提案機能を利用する事が出来ます。<br>
	ユーザーは自らで議題を考えずに済むため、インスタントディベートツールとして利用する事が出来ます。<br>

* 掲示板を見返して発想を深める
  どんな結果になったのか、どんな過程があったのか、<br>
  そんな情報を共有して各々が読んでいく事で、自分にはない物の見方をする事が出来ます。<br>
   そうする事で違う着眼点を知る事が出来、ひいては発想力を増やす力に繋げていく事が期待出来ます。<br>
***
■ ユーザーの獲得について
* Xを利用しての拡散
***
■サービスの差別化ポイント・推しポイント<br>

政治や科学などのディベートを目的とした掲示板、集まりはサイトとしても複数存在しており、 <br>
最近では学生や新社会人をターゲットとしたディベート習熟のオンラインサービスなども存在しています。<br>

しかし、それらは前者は真面目な議題の結論を出すため、または発想を深めるため。<br>
後者はスキルアップの為の手段としていて、あくまで実践的/社会的評価に繋がるからやる、やらせるといった理由になっているかと思われます。<br>

それらは当然必要な事だとは思いますが、いかんせん慣れていない人からすると敷居が高いものであり、<br>
ともすれば苦手意識が芽生えてしまいやすい危険性も存在しています。<br>

対して、このサービスでは一見意味がわからない、正解の見えない議題を提示する事でディベート、<br>
すなわち違う意見をぶつける事に抵抗感を感じづらくなり、<br>
そこからディベートに慣れていく下地の構築していく事が出来る事が期待出来ます。

また、出題される突飛な議題は一般的な【正解】と呼ばれるものが考えづらく、<br>
それゆえにその人の人間性や価値観、考え方が非常に出やすくなります。<br>

「なんでその考えになったの？」「その発想はなかったなぁ」そんな風に、純粋な疑問や新しい着眼点を知る事が出来る事もある。<br>
それもまたこの空想ディベートの面白い所であり、私が使用者に楽しんで頂きたい本質でもあります。
***
■ 機能候補　MVPリリース
* 会員登録 
* ログイン
* 議題一覧ページ
	* 投稿
	* (各投稿の内容を尊重するため、コメント機能はあえて未実装予定) 
* DiscordBOTの招待機能
	* TOPページとヘッダーにボタンを追加、押す事でディスコードBOTの招待を出来るようにする
***
■ 機能候補　本リリース
* 掲示板へのいいね機能
* 掲示板のお気に入り機能
* BOTの録音機能
* 録音データのアップロード/ダウンロード機能
***
■ 機能の実装方針予定
* Ruby 3.2.2
* Ruby on Rails 7系
* DiscordAPI
* PostgreSQL
* Heroku

***
画面変移図
figma:
https://www.figma.com/file/Hm2sZcgNL5EImMbM8ZCbX9/%E7%A9%BA%E6%83%B3%E3%83%87%E3%82%A3%E3%83%99%E3%83%BC%E3%83%88%E6%8E%B2%E7%A4%BA%E6%9D%BF%EF%BC%88%E4%BB%AE%EF%BC%89?type=design&node-id=0-1&mode=design&t=iB3Wn9WxXig4GM7R-0

***
ER図(MVP時点)
https://gyazo.com/462f8f9ed95bed9979bef3ecf13e6e25
![ER図](https://github.com/syo8570/debate_discord/assets/124409063/9721729a-51e7-4d57-9b8b-0d7720a28397)

