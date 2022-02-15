import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('ASK ME ANYTHING'),
          ),
          body: AskMeApp(),
        ),
      ),
    );

class AskMeApp extends StatefulWidget {
  const AskMeApp({Key key}) : super(key: key);

  @override
  _AskMeAppState createState() => _AskMeAppState();
}

class _AskMeAppState extends State<AskMeApp> {
  int ballimagenumber = 1;
  void changeballno() {
    ballimagenumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              changeballno();
            });
          },
          child: Image.asset('images/ball$ballimagenumber.png'),
        ),
      ),
    ]);
  }
}
