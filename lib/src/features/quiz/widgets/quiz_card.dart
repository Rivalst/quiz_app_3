import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_3/src/core/util/extensions.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';
import 'package:quiz_app_3/src/features/app/bloc/quiz_bloc.dart';
import 'package:quiz_app_3/src/features/app/model/quiz_model/quiz_model.dart';

import 'package:quiz_app_3/src/features/quiz/bloc/quiz_score_bloc.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/helpers/half_circle.dart';

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
                      child: const HalfCircleStack()),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          ],
                        )
                      ],
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
            ],
          ),
        );
      },
    );
  }

  late List<Quiz> _quizzes;
  late int _quizzesLength;
}
