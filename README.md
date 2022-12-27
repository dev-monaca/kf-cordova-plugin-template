# Cordova Plugin Template

Cordovaプラグインを新規作成する際の以下の２種類のツールを用意しました。

- プラグインテンプレート  
  最小限のプラグインのテンプレート
- VSCode用ユーザースニペット  
  プラグインのコードを自動入力できるスニペット

## プラグインテンプレート

- ソースコードをダウンロードしてください。
- 以下の必須パラメータを作成したいプラグインの設定に書き換えてお使いください。
- 複数のファイルで同じパラメータが定義されている場合は、必ず同じ値を指定してください。
- (6)NativeServiceは(1)PluginNameと同じ値に設定するケースが多いです。

### 必須パラメータ  
- (1)PluginName プラグイン名
- (2)PluginID   プラグインID
- (3)Version  バージョン番号
- (4)JSInterface  JavaScriptインターフェース名
- (5)JSFilePath   JavaScriptファイルパス
- (6)NativeService  ネイティブサービス名
- (7)NativeAction   ネイティブアクション名
- (8)iOSNativeClass iOSネイティブクラス名
- (9)iOSNativeFile  iOSネイティブファイル名
- (10)AndroidSNativeClass Androidネイティブクラス名
- (11)AndroidNativeFile   Androidネイティブファイル名

## Visual Studio Code用ユーザースニペット

VSCodeを使ってこれらのコードを自動的に入力できるユーザースニペット用定義ファイルを`snippets/vscode/*`に準備しました。

### ユーザースニペットとは？

ユーザーが定義したコード(定型分)を自動的に入力してくれる機能です。

### 登録方法

ファイルの拡張子単位でスニペットを登録します。

Preferences - Configure Your Snippets を実行
Select Snippets file or Create Snippetsでファイルの種類を選択

| ファイル | 拡張子 | スニペット |
|---|---|
|package.json|.json|JSON|
|plugin.xml|.xml|XML|
|JS Interface class|.js|Javascript|
|Android Native class|.java|Java|
|iOS Native Class(source)|.m|Objective-C|
|iOS Native Class(header)|.h|C++|

.hファイルのスニペットは`Objective-C`に登録しても呼び出せないので`C++`として登録します。

### 使い方

![insert snippet](/docs/insert_snippet.gif)

1. 空のファイルを新規作成します。
2. キーボードで`cord-plg`と入力するとスニペットの選択が表示されるので`cordova-plugin-xxxx`を選択します。
3. カーソル位置にコードが挿入されます。
4. プラグイン名などのパラメータがプレースホルダになっているので入力してください。  
Tabキーで次のパラメータの入力に切り替わります。

## まとめ

このように新規のCordovaプラグインを作成するための方法を２種類提供させて頂きました。
ユーザースニペットはVSCode用のみでの提供になっていますが、各自のテキストエディタやIDEに
合わせて設定してみてください。

ユーザースニペットは今回はコード全体を出力する形式になっていますが、部分的なコードを定義することもできます。
例えば`plugin.xml`や`config.xml`の`<edit-config>`句や`<config-file>`句を定義しておけば
`manifest`ファイルや`plist`ファイルを書き換える処理を追加したい際に便利です。
ニーズがあれば今後追加していきたいと思います。
