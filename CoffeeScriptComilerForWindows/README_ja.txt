 * * * * * * * * * * * * * * * * * *
 * CoffeeScript Compiler v1.1.0    *
 * http://coffeescript.org         *
 *                                 *
 * Copyright 2011, Jeremy Ashkenas *
 * MIT License で公開されています  *
 * * * * * * * * * * * * * * * * * *
 *                .bat for Windows *
 *                            v0.1 *
 *                         長島 徹 *
 * * * * * * * * * * * * * * * * * *

Windows で CoffeeScript をコンパイルするための.batファイルです。
コンパイラ コードは埋め込まれているため、"cfsc.bat" ひとつでコンパイルできます。

** 機能 **

1. CoffeeScript をコンパイルする
2. 持続的なコンパイル


** 使い方 **

<コンパイルする>
$ cfsc

引数なしで "cfsc.bat" ファイルを実行すると、"./coffee" 以下にある CoffeeScript をコンパイルします。
コンパイル結果は "./js" フォルダに出力されます。

<持続的なコンパイルをする>
$ cfsc -cc

"-cc"オプションをつけて "cfsc.bat" ファイルを実行すると、持続的コンパイルモードになります。
コンパイラは "./coffee" フォルダ以下を監視し、ソースコードが更新されると自動的に再コンパイルします。
監視を止めるには Ctrl+C を押下してください。
