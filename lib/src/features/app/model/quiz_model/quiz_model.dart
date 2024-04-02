import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_app_3/src/features/app/model/quiz_option_model/quiz_option_model.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    required String questionText,
    required List<QuizAnswer> answers,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, Object?> json) => _$QuizFromJson(json);
}
