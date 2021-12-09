import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text('Ludu Game'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: LuduGame(),
      ),
    ),
  );
}

class LuduGame extends StatefulWidget {
  @override
  _LuduGameState createState() => _LuduGameState();
}

class _LuduGameState extends State<LuduGame> {
  int leftLuduNumber = 6;
  int rightLuduNumber = 1;

  void changeLuduFace1() {
    setState(() {
      leftLuduNumber = Random().nextInt(6) + 1;
    });
  }

  void changeLuduFace2() {
    setState(() {
      rightLuduNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeLuduFace1();
              },
              child: Image.asset('images/Ludu$leftLuduNumber.png'),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeLuduFace2();
              },
              child: Image.asset('images/Ludu$rightLuduNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}