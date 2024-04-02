import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';
import 'package:quiz_app_3/src/features/app/bloc/quiz_bloc.dart';
import 'package:quiz_app_3/src/features/app/model/quiz_model/quiz_model.dart';

import 'package:quiz_app_3/src/features/quiz/bloc/quiz_score_bloc.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/helpers/buttons.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/helpers/half_circle.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/helpers/question_card.dart';
import 'package:quiz_app_3/src/features/quiz/widgets/helpers/timer.dart';
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
    _duration = 2;
    _controller = CountDownController();
    _buttonOff = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuizScoreBloc, QuizScoreState>(
      listener: (context, state) {
        if (_controller.isPaused && state.currentQuizIndex > _index) {
          _controller.reset();
          _controller.start();
          setState(() {
            _buttonOff = false;
          });
        }
      },
      builder: (context, state) {
        _index = state.currentQuizIndex;
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
              const Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: HalfCircleStack(),
              ),
              Positioned(
                top: 150,
                left: 30,
                right: 30,
                child: QuestionCardWidget(
                  quizzesLength: _quizzesLength,
                  quizzes: _quizzes,
                  index: _index,
                ),
              ),
              Positioned(
                top: 115,
                left: 0,
                right: 0,
                child: TimerWidget(
                  duration: _duration,
                  controller: _controller,
                  onComplete: () {
                    if (!_controller.isPaused) {
                      _selectedAnswer(
                        score: 0,
                        isCorrect: false,
                      );
                    }
                  },
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Buttons(
                  quiz: _quizzes[_index],
                  buttonOff: _buttonOff,
                  selectedAnswer: _selectedAnswer,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> _selectedAnswer({
    required int score,
    required bool isCorrect,
  }) async {
    final scoreBloc = context.read<QuizScoreBloc>();
    final currentIndex = scoreBloc.state.currentQuizIndex;

    _controller.pause();

    setState(() {
      _buttonOff = true;
    });

    scoreBloc.add(
      QuizScoreEvent.increment(
        score: score,
        isCorrectAnswer: isCorrect,
      ),
    );

    await Future.delayed(
      const Duration(seconds: 2),
      () {
        if (currentIndex >= _quizzes.length - 1) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => ResultScreen(
                score: scoreBloc.state.score,
              ),
            ),
          );
        }
      },
    );
  }

  late List<Quiz> _quizzes;
  late int _quizzesLength;
  late final int _duration;
  late final CountDownController _controller;
  late int _index;
  late bool _buttonOff;
}
