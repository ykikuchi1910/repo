#! /bin/sh

echo "テストを開始します"
echo "$1と$2 の最大公約数をもとめます"
#echo "答えは3です"

ANS=`cat kotae.txt`
echo "想定の答えは $ANS です"

./kadai3.sh $1 $2 > kekka.txt

RES=`cat kekka.txt`
echo "計算の結果は $RES です"

diff kotae.txt kekka.txt &&echo "＝＞正解" ||echo "＝＞不正解" 
#diff kotae.txt kekka.txt ; echo $?
