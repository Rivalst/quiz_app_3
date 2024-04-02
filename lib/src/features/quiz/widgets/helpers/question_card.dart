import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app_3/src/core/util/extensions.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';
import 'package:quiz_app_3/src/features/app/model/quiz_model/quiz_model.dart';
import 'package:quiz_app_3/src/features/quiz/bloc/quiz_score_bloc.dart';

class QuestionCardWidget extends StatelessWidget {
  const QuestionCardWidget({
    super.key,
    required int quizzesLength,
    required List<Quiz> quizzes,
    required int index,
  })  : _quizzesLength = quizzesLength,
        _quizzes = quizzes,
        _index = index;

  final int _quizzesLength;
  final List<Quiz> _quizzes;
  final int _index;

  @override
  Widget build(BuildContext context) {
    final state = context.read<QuizScoreBloc>().state;

    return SizedBox(
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
                  Row(
                    children: [
                      Text(
                        state.correctAnswers.formatNumber(),
                        style: const TextStyle(
                          color: AppColors.green,
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0,
                        ),
                      ),
                      LinearPercentIndicator(
                        width: 70,
                        lineHeight: 8.0,
                        backgroundColor: AppColors.white,
                        progressColor: AppColors.green,
                        percent: state.correctAnswers / _quizzesLength,
                        barRadius: const Radius.circular(8.0),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      LinearPercentIndicator(
                        width: 70,
                        lineHeight: 8.0,
                        isRTL: true,
                        backgroundColor: AppColors.white,
                        progressColor: AppColors.orange,
                        percent: state.incorrectAnswers / _quizzesLength,
                        barRadius: const Radius.circular(8.0),
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Question ${state.currentQuizIndex + 1}/$_quizzesLength',
                  style: const TextStyle(
                    color: AppColors.lightPurple,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  _quizzes[_index].questionText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
