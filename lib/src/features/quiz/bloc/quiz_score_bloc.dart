import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_score_bloc.freezed.dart';

@freezed
class QuizScoreState with _$QuizScoreState {
  const QuizScoreState._();

  (
    int score,
    int correctAnswers,
    int incorrectAnswers,
    int currentQuizIndex
  ) get count => when<
          (
            int score,
            int correctAnswers,
            int incorrectAnswers,
            int currentQuizIndex
          )>(
        initial: (score, correctAnswers, incorrectAnswers, currentQuizIndex,) =>
            (score, correctAnswers, incorrectAnswers, currentQuizIndex),
      );

  factory QuizScoreState.initial({
    @Default(0) int score,
    @Default(0) int correctAnswers,
    @Default(0) int incorrectAnswers,
    @Default(0) int currentQuizIndex,
  }) = _$InitialScoreState;
}

@freezed
class QuizScoreEvent with _$QuizScoreEvent {
  const factory QuizScoreEvent.increment({
    @Default(0) int score,
    @Default(false) bool isCorrectAnswer,
  }) = _IncrementScoreEvent;
}

class QuizScoreBloc extends Bloc<QuizScoreEvent, QuizScoreState> {
  QuizScoreBloc() : super(QuizScoreState.initial()) {
    on<QuizScoreEvent>(
      (event, emitter) {
        event.map(
          increment: (event) {
            int correctAnswersIncrement = event.isCorrectAnswer ? 1 : 0;
            int incorrectAnswersIncrement = event.isCorrectAnswer ? 0 : 1;

            emitter(
              state.copyWith(
                score: state.score + event.score,
                correctAnswers: state.correctAnswers + correctAnswersIncrement,
                incorrectAnswers:
                    state.incorrectAnswers + incorrectAnswersIncrement,
                currentQuizIndex: state.currentQuizIndex + 1,
              ),
            );
          },
        );
      },
    );
  }
}
