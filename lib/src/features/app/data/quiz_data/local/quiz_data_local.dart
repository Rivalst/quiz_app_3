import 'dart:async';

import 'package:quiz_app_3/src/core/util/helper.dart';
import 'package:quiz_app_3/src/features/app/data/quiz_data/quiz_data.dart';
import 'package:quiz_app_3/src/features/app/model/quiz_model/quiz_model.dart';

/// {@template dependencies}
/// Implements interface [QuizDataProvider]
/// {@endtemplate}
class QuizDataLocalProviderImpl implements QuizDataProvider {
  final QuizHelper _quizHelper;

  const QuizDataLocalProviderImpl({required QuizHelper quizHelper})
      : _quizHelper = quizHelper;

  @override
  Future<List<Quiz>> getAllQuizzes() async {
    // completer for simulate future
    final completer = Completer<List<Quiz>>();

    final allQuizzes = _quizFromJson(_quizHelper.questions);
    completer.complete(allQuizzes);

    return completer.future;
  }

  @override
  Future<List<Quiz>> getRandomAllQuizzes() {
    // completer for simulate future
    final completer = Completer<List<Quiz>>();
    final allQuizzes = _quizFromJson(_quizHelper.questions);

    // there is we shuffle own quiz
    allQuizzes.shuffle();

    completer.complete(allQuizzes);

    return completer.future;
  }

  List<Quiz> _quizFromJson(List<Map<String, dynamic>> quizzes) {
    final List<Quiz> allQuizzes = [];
    for (var quiz in quizzes) {
      final quizFromJson = Quiz.fromJson(quiz);
      allQuizzes.add(quizFromJson);
    }

    return allQuizzes;
  }
}
