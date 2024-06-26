import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_score_bloc.freezed.dart';

@freezed
class QuizScoreState with _$QuizScoreState {
  const QuizScoreState._();

  factory QuizScoreState.initial({
    @Default(0) int score,
    @Default(0) int correctAnswers,
    @Default(0) int incorrectAnswers,
    @Default(0) int currentQuizIndex,
    @Default(false) bool isButtonsOff,
  }) = _$InitialScoreState;
}

@freezed
class QuizScoreEvent with _$QuizScoreEvent {
  const factory QuizScoreEvent.increment({
    @Default(0) int score,
    @Default(false) bool isCorrectAnswer,
  }) = _IncrementScoreEvent;

  const factory QuizScoreEvent.buttonsStatusChange({
    @Default(false) bool isButtonsOff,
  }) = _ChangeButtonsStatusEvent;
}

class QuizScoreBloc extends Bloc<QuizScoreEvent, QuizScoreState> {
  QuizScoreBloc() : super(QuizScoreState.initial()) {
    on<QuizScoreEvent>(
      (event, emitter) async {
        await event.map(increment: (event) async {
          int correctAnswersIncrement = event.isCorrectAnswer ? 1 : 0;
          int incorrectAnswersIncrement = event.isCorrectAnswer ? 0 : 1;

          emitter(
            state.copyWith(
              score: state.score + event.score,
              correctAnswers: state.correctAnswers + correctAnswersIncrement,
              incorrectAnswers:
                  state.incorrectAnswers + incorrectAnswersIncrement,
            ),
          );
          await Future.delayed(const Duration(seconds: 3));

          emitter(
            state.copyWith(currentQuizIndex: state.currentQuizIndex + 1),
          );
        }, buttonsStatusChange: (event) {
          emitter(
            state.copyWith(isButtonsOff: event.isButtonsOff),
          );
        });
      },
    );
  }
}
