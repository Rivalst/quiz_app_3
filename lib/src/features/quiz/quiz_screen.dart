import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';
import 'package:quiz_app_3/src/features/quiz/bloc/quiz_score_bloc.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/quiz_card.dart';

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
          title: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              // TODO: MOVE TO METHOD
              String.fromCharCode(Icons.arrow_back.codePoint),
              style: TextStyle(
                inherit: false,
                color: AppColors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
                fontFamily: Icons.arrow_back.fontFamily,
                package: Icons.arrow_back.fontPackage,
              ),
            ),
          ),
          titleSpacing: 0,
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: RotatedBox(
                quarterTurns: 45,
                child: Text(
                  // TODO: MOVE TO METHOD
                  String.fromCharCode(Icons.tune.codePoint),
                  style: TextStyle(
                    inherit: false,
                    color: AppColors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: Icons.tune.fontFamily,
                    package: Icons.tune.fontPackage,
                  ),
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
