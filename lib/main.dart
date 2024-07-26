import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Magic Decisions'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
        ),
        body: const MagicPage(),
      ),
    ),
  );
} 

class MagicPage extends StatefulWidget {
  const MagicPage({super.key});

  @override
  State<MagicPage> createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int decisionNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  decisionNumber = Random().nextInt(5) + 1;
                });
              }, 
              child: Image(
              width: 500,
              image: AssetImage('images/ball$decisionNumber.png')
            ))
          )
        ],
      ),
    );
  }
}