import 'package:flutter/material.dart';


class BananaCounter extends StatelessWidget {
  //バナナの数
  final int number;
  const BananaCounter({
    super.key,
    required this.number,}) ;

  @override
  Widget build(BuildContext context) {
    final banana = Image.asset(
      'images/fruit_banana_character.png',
      width: 100, // 画像のサイズを指定
      height: 100,
    );

    final text = Text(
      '$number',
      style: const TextStyle(
          color: Colors.white,
          fontSize: 24
      ),
    );

    final row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        banana,
        text,
      ],
    );

    final con = Container(
        width: 300, // 横幅
        height: 100, // 高さ
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
      color: Colors.black87,
          borderRadius: BorderRadius.circular(12), // 角を少し丸くする
        ),
      child: row,
    );

    return con;
  }
}
