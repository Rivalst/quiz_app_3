
import 'package:flutter/material.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
    // return BlocBuilder<QuizBloc, QuizzesState>(builder: (context, state) {
    //   return state.when(
    //     initial: () {
    //       return const SplashScreen();
    //     },
    //     loading: () {
    //       return const SplashScreen();
    //     },
    //     loaded: (quizzes) {
    //       return const QuizScreen();
    //     },
    //     error: (quizzes, messages) {
    //       // in this place we can added error screen
    //       return const ColoredBox(color: Colors.red);
    //     },
    //   );
    // });
  }
}
