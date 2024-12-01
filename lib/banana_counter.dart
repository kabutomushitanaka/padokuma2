import 'package:flutter/material.dart';

class BananaCounter extends StatelessWidget {
  const BananaCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //バナナの画像
     final banana = Image.asset('images/fruit_banana_character.png');
     
     //数字の部分
     final text = Text('999');

     //横に並べる
     final row = Row(children: [
       banana,
       text,
     ]);

     //色と大きさを決める
     final con= Container(
       color: Colors.black87,
       child: row,
     );


    return con ;
  }
}
