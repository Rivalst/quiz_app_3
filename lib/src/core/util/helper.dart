/// {@template dependencies}
/// Sealed class helper for quizzes
/// {@endtemplate}
sealed class QuizHelper {
  /// Getter for quizzes
  List<Map<String, dynamic>> get questions;
}

/// {@template dependencies}
/// There we can take quiz for a game "Mystery Of Tiger"
/// {@endtemplate}
class QuizHelperOlympusOfZeusQuestions extends QuizHelper {
  QuizHelperOlympusOfZeusQuestions();

  @override
  List<Map<String, dynamic>> get questions => _olympusOfZeusQuestions;

  final List<Map<String, dynamic>> _olympusOfZeusQuestions = [
    {
      'questionText':
          'Who is the main antagonist of the "Olympus of Zeus" game?',
      'answers': [
        {'text': 'Ares', 'score': 0},
        {'text': 'Hades', 'score': 100},
        {'text': 'Zeus', 'score': 0},
        {'text': 'Poseidon', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the name of the mythical land where "Olympus of Zeus" takes place?',
      'answers': [
        {'text': 'Atlantis', 'score': 0},
        {'text': 'El Dorado', 'score': 0},
        {'text': 'Asgard', 'score': 0},
        {'text': 'Elysium', 'score': 100},
      ],
    },
    {
      'questionText': 'Who is the protagonist of "Olympus of Zeus"?',
      'answers': [
        {'text': 'Perseus', 'score': 0},
        {'text': 'Heracles', 'score': 0},
        {'text': 'Alexios', 'score': 100},
        {'text': 'Achilles', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the main objective of the protagonist in "Olympus of Zeus"?',
      'answers': [
        {'text': 'To defeat Zeus', 'score': 0},
        {'text': 'To find the Golden Fleece', 'score': 0},
        {'text': 'To rescue Athena', 'score': 0},
        {'text': 'To reclaim Zeus\'s lightning bolt', 'score': 100},
      ],
    },
    {
      'questionText':
          'Which god or goddess aids the protagonist in "Olympus of Zeus"?',
      'answers': [
        {'text': 'Hermes', 'score': 0},
        {'text': 'Athena', 'score': 100},
        {'text': 'Apollo', 'score': 0},
        {'text': 'Artemis', 'score': 0},
      ],
    },
    {
      'questionText': 'In Greek mythology, who is the wife of Zeus?',
      'answers': [
        {'text': 'Athena', 'score': 0},
        {'text': 'Hera', 'score': 100},
        {'text': 'Aphrodite', 'score': 0},
        {'text': 'Artemis', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which creature does the protagonist encounter in the underworld in "Olympus of Zeus"?',
      'answers': [
        {'text': 'Cerberus', 'score': 100},
        {'text': 'Medusa', 'score': 0},
        {'text': 'Minotaur', 'score': 0},
        {'text': 'Sphinx', 'score': 0},
      ],
    },
    {
      'questionText':
          'What magical artifact aids the protagonist in "Olympus of Zeus"?',
      'answers': [
        {'text': 'Golden Fleece', 'score': 0},
        {'text': 'Medusa\'s head', 'score': 0},
        {'text': 'Pandora\'s Box', 'score': 0},
        {'text': 'Caduceus', 'score': 100},
      ],
    },
    {
      'questionText':
          'Which ancient Greek city serves as the primary setting for "Olympus of Zeus"?',
      'answers': [
        {'text': 'Athens', 'score': 0},
        {'text': 'Sparta', 'score': 0},
        {'text': 'Olympia', 'score': 100},
        {'text': 'Corinth', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the name of the mythical creature with the body of a lion and the head of a human or other animal?',
      'answers': [
        {'text': 'Cyclops', 'score': 0},
        {'text': 'Minotaur', 'score': 100},
        {'text': 'Sphinx', 'score': 0},
        {'text': 'Centaur', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is the god of the sea in Greek mythology?',
      'answers': [
        {'text': 'Zeus', 'score': 0},
        {'text': 'Ares', 'score': 0},
        {'text': 'Poseidon', 'score': 100},
        {'text': 'Hades', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the name of the protagonist\'s divine parent in "Olympus of Zeus"?',
      'answers': [
        {'text': 'Apollo', 'score': 0},
        {'text': 'Athena', 'score': 100},
        {'text': 'Hermes', 'score': 0},
        {'text': 'Hera', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is the goddess of wisdom in Greek mythology?',
      'answers': [
        {'text': 'Athena', 'score': 100},
        {'text': 'Hera', 'score': 0},
        {'text': 'Artemis', 'score': 0},
        {'text': 'Aphrodite', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the Roman name for the Greek god Zeus?',
      'answers': [
        {'text': 'Apollo', 'score': 0},
        {'text': 'Jupiter', 'score': 100},
        {'text': 'Neptune', 'score': 0},
        {'text': 'Mercury', 'score': 0},
      ],
    },
    {
      'questionText':
          'Who is the goddess of love and beauty in Greek mythology?',
      'answers': [
        {'text': 'Athena', 'score': 0},
        {'text': 'Hera', 'score': 0},
        {'text': 'Aphrodite', 'score': 100},
        {'text': 'Artemis', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is the god of war in Greek mythology?',
      'answers': [
        {'text': 'Zeus', 'score': 0},
        {'text': 'Poseidon', 'score': 0},
        {'text': 'Ares', 'score': 100},
        {'text': 'Hades', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is the goddess of the hunt in Greek mythology?',
      'answers': [
        {'text': 'Athena', 'score': 0},
        {'text': 'Hera', 'score': 0},
        {'text': 'Artemis', 'score': 100},
        {'text': 'Aphrodite', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is the goddess of the rainbow in Greek mythology?',
      'answers': [
        {'text': 'Hera', 'score': 0},
        {'text': 'Iris', 'score': 100},
        {'text': 'Athena', 'score': 0},
        {'text': 'Artemis', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is the god of fire in Greek mythology?',
      'answers': [
        {'text': 'Hephaestus', 'score': 100},
        {'text': 'Apollo', 'score': 0},
        {'text': 'Ares', 'score': 0},
        {'text': 'Dionysus', 'score': 0},
      ],
    },
  ];
}

// int

const timerStandardSeconds = 120;
