import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            backgroundColor: Colors.blueAccent.shade700,
          ),
          backgroundColor: Colors.blue,
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MagicBall();
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  @override
  int num = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: TextButton(
          onPressed: () {
            setState(() {
              num = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$num.png'),
        ),
      ),
    );
    ;
  }
}
