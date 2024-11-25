import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Janken Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JankenScreen(),
    );
  }
}

class JankenScreen extends StatefulWidget {
  @override
  _JankenScreenState createState() => _JankenScreenState();
}

class _JankenScreenState extends State<JankenScreen> {
  String _userChoice = '';
  String _computerChoice = '';
  String _result = '';

  // ユーザーの選択肢を受け取ってゲームを開始
  void _playGame(String userChoice) {
    final choices = ['グーーーーー', 'チョキ', 'パー'];
    final random = Random();

    // コンピューターの選択肢をランダムに決定
    _computerChoice = choices[random.nextInt(3)];

    // ユーザーの選択肢を設定
    _userChoice = userChoice;

    // 勝敗の判定
    if (_userChoice == _computerChoice) {
      _result = '引き分け';
    } else if (
    (_userChoice == 'グー' && _computerChoice == 'チョキ') ||
        (_userChoice == 'チョキ' && _computerChoice == 'パー') ||
        (_userChoice == 'パー' && _computerChoice == 'グー')
    ) {
      _result = 'あなたの勝ち';
    } else {
      _result = 'コンピューターの勝ち';
    }

    // 状態を更新
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('じゃんけんゲーム'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'あなたの選択: $_userChoice',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'コンピューターの選択: $_computerChoice',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              '結果: $_result',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _playGame('グー'),
                  child: Text('グー'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => _playGame('チョキ'),
                  child: Text('チョキ'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => _playGame('パー'),
                  child: Text('パー'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
