import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_3/src/core/util/extensions.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';
import 'package:quiz_app_3/src/features/app/bloc/quiz_bloc.dart';
import 'package:quiz_app_3/src/features/app/model/quiz_model/quiz_model.dart';

import 'package:quiz_app_3/src/features/quiz/bloc/quiz_score_bloc.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/helpers/buttons.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/helpers/half_circle.dart';
import 'package:quiz_app_3/src/features/result/result_screen.dart';

class QuizCard extends StatefulWidget {
  const QuizCard({super.key});

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  @override
  void initState() {
    _quizzes = context.read<QuizBloc>().state.quizzes!;
    _quizzesLength = _quizzes.length;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizScoreBloc, QuizScoreState>(
      builder: (context, state) {
        final index = state.currentQuizIndex;
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 25.0,
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: AppColors.white,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: SizedBox(
                  height: 250,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: AppColors.purple,
                    ),
                    child: const HalfCircleStack(),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                left: 30,
                right: 30,
                child: SizedBox(
                  height: 180,
                  child: Card(
                    color: AppColors.white,
                    surfaceTintColor: AppColors.white,
                    shadowColor: AppColors.whitePurple,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                state.correctAnswers.formatNumber(),
                                style: const TextStyle(
                                  color: AppColors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.0,
                                ),
                              ),
                              Text(
                                state.incorrectAnswers.formatNumber(),
                                style: const TextStyle(
                                  color: AppColors.orange,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Question ${state.currentQuizIndex + 1}/$_quizzesLength',
                              style: const TextStyle(
                                  color: AppColors.lightPurple,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              _quizzes[index].questionText,
                              textAlign: TextAlign.center,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 115,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 80,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Buttons(
                  quiz: _quizzes[index],
                  selectedAnswer: _selectedAnswer,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  void _selectedAnswer({
    required int score,
    required bool isCorrect,
  }) {
    final scoreBloc = context.read<QuizScoreBloc>();
    final currentIndex = scoreBloc.state.currentQuizIndex;

    scoreBloc.add(
        QuizScoreEvent.increment(score: score, isCorrectAnswer: isCorrect));

    if (currentIndex >= _quizzes.length - 1) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            score: scoreBloc.state.score,
          ),
        ),
      );
      return;
    }
  }

  late List<Quiz> _quizzes;
  late int _quizzesLength;
}
