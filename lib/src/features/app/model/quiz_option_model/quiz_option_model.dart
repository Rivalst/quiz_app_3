import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_option_model.freezed.dart';
part 'quiz_option_model.g.dart';

@freezed
class QuizAnswer with _$QuizAnswer {
  const factory QuizAnswer({
    required String text,
    required int score,
  }) = _QuizAnswer;

  factory QuizAnswer.fromJson(Map<String, Object?> json) =>
      _$QuizAnswerFromJson(json);
}
