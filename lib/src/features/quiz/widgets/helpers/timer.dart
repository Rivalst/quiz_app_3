import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_3/src/core/util/theme.dart';

class TimerWidget extends StatelessWidget {
  final VoidCallback onComplete;

  const TimerWidget({
    required this.onComplete,
    super.key,
    required int duration,
    required CountDownController controller,
  })  : _duration = duration,
        _controller = controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircularCountDownTimer(
              width: 80,
              height: 80,
              duration: _duration,
              initialDuration: 0,
              isReverse: true,
              isReverseAnimation: true,
              fillColor: Colors.purple,
              ringColor: Colors.transparent,
              controller: _controller,
              onComplete: onComplete),
        ),
      ),
    );
  }

  final int _duration;
  final CountDownController _controller;
}
