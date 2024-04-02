import 'package:quiz_app_3/src/features/app/data/quiz_data/quiz_data.dart';
import 'package:quiz_app_3/src/features/app/model/quiz_model/quiz_model.dart';

/// {@template dependencies}
/// Interface for a quiz repository
/// {@endtemplate}
abstract interface class QuizRepository {
  Future<List<Quiz>> getAllQuizzes();
  Future<List<Quiz>> getRandomAllQuizzes();
}

class QuizRepositoryImpl implements QuizRepository {
  final QuizDataProvider _quizData;
  const QuizRepositoryImpl({
    required QuizDataProvider quizDataProvider,
  }): _quizData = quizDataProvider;

  @override
  Future<List<Quiz>> getAllQuizzes() async {
    final allQuizzes = await _quizData.getAllQuizzes();
    return allQuizzes;
  }

  @override
  Future<List<Quiz>> getRandomAllQuizzes() async {
    final randomQuizzes = await _quizData.getRandomAllQuizzes();
    return randomQuizzes;
  }
}
