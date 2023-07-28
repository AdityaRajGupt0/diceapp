import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int leftdice = 1;
  int rightdice = 1;
  var ChangeImage = 'assets/dice1.png';
  var ChangeImage2 = 'assets/dice2.png';
  void roll(){
    setState(() {
      int leftdice = Random().nextInt(6)+1;
      int rightdice = Random().nextInt(6)+1;

      ChangeImage = 'assets/dice$leftdice.png';


    });

  }
  void roll2(){
    setState(() {
      int leftdice = Random().nextInt(6)+1;
      int rightdice = Random().nextInt(6)+1;
      ChangeImage2 = 'assets/dice$rightdice.png';


    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.green,

          title: Text('Dice App'),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                  child: GestureDetector(
                      onTap: roll,
                      child: Image.asset(ChangeImage))),

              SizedBox(
                width: 80,
              ),

              Expanded(
                  child: GestureDetector(
                      onDoubleTap: roll2,
                      child: Image.asset(ChangeImage2)))
            ],
          ),
        )
    );
  }
}