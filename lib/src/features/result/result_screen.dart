import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int score;

  const ResultScreen({
    required this.score,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Your score $score'),
      ),
    );
  }
}
