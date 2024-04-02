import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';
import 'package:quiz_app_3/src/features/quiz/bloc/quiz_score_bloc.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/helpers/icon_text.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/quiz_widget.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizScoreBloc(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: null,
          title: const Padding(
            padding: EdgeInsets.only(left: 30),
            child: IconFromTextWidget(
              icon: Icons.arrow_back,
            ),
          ),
          titleSpacing: 0,
          centerTitle: false,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: RotatedBox(
                quarterTurns: 45,
                child: IconFromTextWidget(
                  icon: Icons.tune,
                ),
              ),
            ),
          ],
        ),
        body: const QuizCard(),
        backgroundColor: AppColors.whitePurple,
      ),
    );
  }
}
