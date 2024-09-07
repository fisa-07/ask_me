import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      body: const AskMePage(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 10.0,
        shadowColor: Colors.black,
        title: const Text(
          'Ask Me',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ));
}

class AskMePage extends StatefulWidget {
  const AskMePage({super.key});

  @override
  State<AskMePage> createState() => _AskMePageState();
}

class _AskMePageState extends State<AskMePage> {
  int answerNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                answerNo = Random().nextInt(5) + 1;
              });
            },
            child: Image(
              image: AssetImage('images/ball$answerNo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
