import 'package:quiz_app_3/src/core/util/dependencies.dart';
import 'package:quiz_app_3/src/core/util/helper.dart';
import 'package:quiz_app_3/src/core/util/logger.dart';
import 'package:quiz_app_3/src/features/app/data/quiz_data/local/quiz_data_local.dart';
import 'package:quiz_app_3/src/features/app/data/quiz_data/quiz_repository.dart';

/// {@template initialization_processor}
/// A class which is responsible for processing initialization steps.
/// {@endtemplate}
final class InitializationProcessor {
  /// {@macro initialization_processor}
  const InitializationProcessor();

  Future<Dependencies> _initDependencies() async {
    final quizHelper = QuizHelperMysteryOfTiger();
    final quizData = QuizDataLocalProviderImpl(quizHelper: quizHelper);
    final quizRepository = QuizRepositoryImpl(quizDataProvider: quizData);

    return Dependencies(quizRepository: quizRepository);
  }

  /// Method that starts the initialization process
  /// and returns the result of the initialization.
  ///
  /// This method may contain additional steps that need initialization
  /// before the application starts
  /// (for example, caching or enabling tracking manager)
  Future<InitializationResult> initialize() async {
    final stopwatch = Stopwatch()..start();

    logger.info('Initializing dependencies...');
    // initialize dependencies
    final dependencies = await _initDependencies();
    logger.info('Dependencies initialized');

    stopwatch.stop();
    final result = InitializationResult(
      dependencies: dependencies,
      msSpent: stopwatch.elapsedMilliseconds,
    );
    return result;
  }
}
