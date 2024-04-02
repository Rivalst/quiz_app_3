import 'package:flutter/material.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';

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
          child: SizedBox(
            height: 125,
            width: 250,
            child: Card(
              color: AppColors.white,
              surfaceTintColor: AppColors.white,
              shadowColor: AppColors.whitePurple,
              child: Center(
                child: Text(
                  'Your score: $score',
                  style: const TextStyle(
                      color: AppColors.purple,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.whitePurple);
  }
}
