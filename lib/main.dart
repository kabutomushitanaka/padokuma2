import 'dart:math';
import 'package:flutter/material.dart';

void main(){

  final col = Column(

      mainAxisAlignment: MainAxisAlignment.center ,
      crossAxisAlignment: CrossAxisAlignment.center ,
      children: [
        Image.asset('images/IMG_8421.PNG',
          width: 500, // 幅を100に指定
          height: 500, // 高さを100に指定
        )
    ],
  );

 final row = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [col],
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: row,
      ),
    ),
  );
  runApp(a);

}