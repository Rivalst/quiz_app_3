import 'package:flutter/material.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';
import 'package:quiz_app_3/src/features/app/model/quiz_model/quiz_model.dart';

class Buttons extends StatefulWidget {
  final Quiz quiz;
  final Function({
    required int score,
    required bool isCorrect,
  }) selectedAnswer;

  const Buttons({
    super.key,
    required this.quiz,
    required this.selectedAnswer,
  });

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  String? _selectedAnswer;
  bool _answered = false;

  @override
  void didUpdateWidget(covariant Buttons oldWidget) {
    if (oldWidget.quiz.questionText != widget.quiz.questionText) {
      setState(() {
        _selectedAnswer = null;
        _answered = false;
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 16.0, 40.0, 80.0),
      child: Column(
        children: widget.quiz.answers.map(
          (e) {
            return _AnswerButton(
              answer: e.text,
              score: e.score,
              answered: _answered,
              isSelected: e.text == _selectedAnswer,
              onPressed: _selectedAnswer == null
                  ? () {
                      final isCorrect = e.score > 0;

                      widget.selectedAnswer(
                        score: e.score,
                        isCorrect: isCorrect,
                      );
                      setState(
                        () {
                          _selectedAnswer = e.text;
                          _answered = true;
                        },
                      );
                    }
                  : () => null,
            );
          },
        ).toList(),
      ),
    );
  }
}

class _AnswerButton extends StatelessWidget {
  final String answer;
  final VoidCallback onPressed;
  final bool isSelected;
  final bool answered;
  final int score;

  const _AnswerButton({
    required this.answer,
    required this.onPressed,
    required this.isSelected,
    required this.answered,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    IconData? icon;
    Color iconBackgroundColor;
    Color borderColor;

    if (isSelected) {
      if (answered && score <= 0) {
        // Если кнопка выбрана и ответ дан, и score <= 0, показываем иконку Icons.close
        icon = Icons.close;
        iconBackgroundColor = AppColors.red;
        borderColor = Colors.transparent;
      } else if (answered && score > 0) {
        // Если кнопка выбрана и ответ дан, и score > 0, показываем иконку Icons.done
        icon = Icons.done;
        iconBackgroundColor = AppColors.purple;
        borderColor = Colors.transparent;
      } else {
        // Иначе (кнопка выбрана, но ответ еще не дан), не показываем иконку
        icon = null;
        iconBackgroundColor = Colors.transparent;
        borderColor = Colors.grey;
      }
    } else {
      // Если кнопка не выбрана, не показываем иконку
      icon = null;
      iconBackgroundColor = Colors.transparent;
      borderColor = Colors.grey;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.white,
            surfaceTintColor: AppColors.white,
            shadowColor: AppColors.white,
            side: const BorderSide(
              color: AppColors.purple,
              width: 2.5,
            ),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    answer,
                    softWrap: true,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconBackgroundColor,
                  border: Border.all(
                    color: borderColor
                  ),
                ),
                child: icon != null
                    ? Icon(
                        icon,
                        color: Colors.white,
                        size: 20.0,
                      )
                    : null,
              ),
              // isSelected
              //     ? Container(
              //         width: 25,
              //         height: 25,
              //         decoration: const BoxDecoration(
              //           shape: BoxShape.circle,
              //           color: Colors.deepPurple,
              //         ),
              //         child: const Icon(
              //           Icons.done,
              //           color: Colors.white,
              //           size: 20.0,
              //         ),
              //       )
              //     : Container(
              //         width: 25,
              //         height: 25,
              //         decoration: BoxDecoration(
              //           shape: BoxShape.circle,
              //           border: Border.all(
              //             color: Colors.grey,
              //           ),
              //         ),
              //       ),
            ],
          ),
        ),
      ),
    );
  }
}
