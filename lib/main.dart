import 'dart:math';
import 'package:flutter/material.dart';
import 'package:padokuma2/banana_counter.dart';


void main(){

 xxxx(){
   debugPrint('これから通信を恥じみぃです');
   debugPrint('通信ちうデフ');
   debugPrint('通信が終わったンゴ');
 }

  final button = ElevatedButton(

    onPressed: xxxx,
    child: Text('おしてみてンゴ'),

  );


  final b =BananaCounter(number: 88,
  );

  final img =
   //画像
      Image.asset('images/onepiece06_chopper.png',

  );

  // 小さいコンテナ
  final smallCon = Container(
    color: Colors.deepOrange, // オレンジ色
    width: 50,
    height: 50,
  );

  // 縦に並べるカラム
  final col = SingleChildScrollView(
    child:Column(
    children: [
      smallCon, // 小さいコンテナ
      img, // 画像
      smallCon, // 小さいコンテナ
    ],
  ),
  );

  // 大きいコンテナ
  final bigCon = Container(
    color: Colors.blue, // 青色
    width: 400,
    height: 400,
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.all(20),
    child: col, // 中にカラムを丸ごと入れる
  );

  // アプリ
  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: button, // 大きいコンテナを表示する
      ),
    ),
  );
  runApp(a);

}