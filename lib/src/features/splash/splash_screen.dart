import 'package:flutter/material.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Quizzes is loading',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey.withOpacity(0.8),
                ),
              ),
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
      backgroundColor: AppColors.lightPurple,
    );
  }
}
