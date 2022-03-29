import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int diceNumber = 1;
int diceNumber2 = 1;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        elevation: 18,
        title: Center(child: Text('Ludo App')),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    diceNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$diceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(
                    () {
                      diceNumber2 = Random().nextInt(6) + 1;
                    },
                  );
                },
                child: Image.asset('images/dice$diceNumber2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
