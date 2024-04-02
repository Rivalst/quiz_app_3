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
class QuizHelperMysteryOfTiger extends QuizHelper {
  QuizHelperMysteryOfTiger();

  @override
  List<Map<String, dynamic>> get questions => _mysteryOfTigerQuestions;

  final List<Map<String, dynamic>> _mysteryOfTigerQuestions = [
    {
      'questionText': 'What year was Mystery of Tiger first released?',
      'answers': [
        {'text': '2018', 'score': 0},
        {'text': '2019', 'score': 0},
        {'text': '2020', 'score': 100},
        {'text': '2021', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is the main character of Mystery of Tiger?',
      'answers': [
        {'text': 'Jack', 'score': 0},
        {'text': 'Alex', 'score': 0},
        {'text': 'Tiger', 'score': 100},
        {'text': 'Sarah', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the objective of the game?',
      'answers': [
        {'text': 'Find hidden treasure', 'score': 100},
        {'text': 'Defeat the villain', 'score': 0},
        {'text': 'Escape from a jungle', 'score': 0},
        {'text': 'Solve a mystery', 'score': 0},
      ],
    },
    {
      'questionText': 'Where does most of the game take place?',
      'answers': [
        {'text': 'Space station', 'score': 0},
        {'text': 'Underwater city', 'score': 0},
        {'text': 'Jungle', 'score': 100},
        {'text': 'Haunted mansion', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is the antagonist of Mystery of Tiger?',
      'answers': [
        {'text': 'Captain Hook', 'score': 0},
        {'text': 'Doctor Doom', 'score': 0},
        {'text': 'Professor Chaos', 'score': 0},
        {'text': 'The Shadow', 'score': 100},
      ],
    },
    {
      'questionText': 'What is the name of Tiger\'s sidekick?',
      'answers': [
        {'text': 'Leo', 'score': 0},
        {'text': 'Mia', 'score': 0},
        {'text': 'Zoe', 'score': 100},
        {'text': 'Max', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the ultimate goal of Mystery of Tiger?',
      'answers': [
        {'text': 'Survive the jungle', 'score': 0},
        {'text': 'Rescue a kidnapped friend', 'score': 0},
        {'text': 'Uncover ancient artifacts', 'score': 0},
        {'text': 'Defeat the evil organization', 'score': 100},
      ],
    },
    {
      'questionText': 'What is Tiger\'s special ability?',
      'answers': [
        {'text': 'Super strength', 'score': 0},
        {'text': 'Telekinesis', 'score': 0},
        {'text': 'Invisibility', 'score': 100},
        {'text': 'Time manipulation', 'score': 0},
      ],
    },
    {
      'questionText': 'Who created Mystery of Tiger?',
      'answers': [
        {'text': 'Rockstar Games', 'score': 0},
        {'text': 'Ubisoft', 'score': 0},
        {'text': 'Electronic Arts', 'score': 0},
        {'text': 'Blizzard Entertainment', 'score': 100},
      ],
    },
    {
      'questionText': 'What genre does Mystery of Tiger belong to?',
      'answers': [
        {'text': 'Role-playing game', 'score': 0},
        {'text': 'Action-adventure', 'score': 100},
        {'text': 'First-person shooter', 'score': 0},
        {'text': 'Survival horror', 'score': 0},
      ],
    },
    {
      'questionText': 'Which platform was Mystery of Tiger NOT released on?',
      'answers': [
        {'text': 'PlayStation', 'score': 0},
        {'text': 'Xbox', 'score': 0},
        {'text': 'Nintendo Switch', 'score': 0},
        {'text': 'Mobile phones', 'score': 100},
      ],
    },
    {
      'questionText':
          'What is the name of the main jungle in Mystery of Tiger?',
      'answers': [
        {'text': 'Amazon Rainforest', 'score': 0},
        {'text': 'Congo Basin', 'score': 0},
        {'text': 'Tiger\'s Lair', 'score': 100},
        {'text': 'Borneo Jungle', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the currency used in Mystery of Tiger?',
      'answers': [
        {'text': 'Gold coins', 'score': 100},
        {'text': 'Gems', 'score': 0},
        {'text': 'Dollars', 'score': 0},
        {'text': 'Rupees', 'score': 0},
      ],
    },
    {
      'questionText': 'Which animal is NOT encountered in Mystery of Tiger?',
      'answers': [
        {'text': 'Tiger', 'score': 0},
        {'text': 'Elephant', 'score': 0},
        {'text': 'Gorilla', 'score': 0},
        {'text': 'Polar Bear', 'score': 100},
      ],
    },
    {
      'questionText':
          'What is the primary mode of transportation in Mystery of Tiger?',
      'answers': [
        {'text': 'Helicopter', 'score': 100},
        {'text': 'Boat', 'score': 0},
        {'text': 'Jeep', 'score': 0},
        {'text': 'Hot air balloon', 'score': 0},
      ],
    },
    {
      'questionText': 'Which of these is NOT a level in Mystery of Tiger?',
      'answers': [
        {'text': 'Lost Temple', 'score': 0},
        {'text': 'City of Gold', 'score': 0},
        {'text': 'Space Station Sigma', 'score': 100},
        {'text': 'Caves of Doom', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the name of the main antagonist organization in Mystery of Tiger?',
      'answers': [
        {'text': 'Black Lotus Society', 'score': 0},
        {'text': 'Crimson Order', 'score': 0},
        {'text': 'Shadow Syndicate', 'score': 100},
        {'text': 'Viper Brotherhood', 'score': 0},
      ],
    },
    {
      'questionText': 'What is the main plot of Mystery of Tiger?',
      'answers': [
        {'text': 'Prevent a world war', 'score': 0},
        {'text': 'Stop a global pandemic', 'score': 0},
        {'text': 'Save the rainforest', 'score': 0},
        {'text': 'Prevent a doomsday device from activating', 'score': 100},
      ],
    },
    {
      'questionText': 'What is the name of Tiger\'s arch-nemesis?',
      'answers': [
        {'text': 'Dark Claw', 'score': 0},
        {'text': 'Shadow Fang', 'score': 0},
        {'text': 'Night Stalker', 'score': 100},
        {'text': 'Midnight Fury', 'score': 0},
      ],
    },
    {
      'questionText':
          'What is the primary weapon used by Tiger in Mystery of Tiger?',
      'answers': [
        {'text': 'Sword', 'score': 0},
        {'text': 'Pistol', 'score': 0},
        {'text': 'Bow and Arrow', 'score': 100},
        {'text': 'Grenade Launcher', 'score': 0},
      ],
    },
  ];
}

// int

const timerStandardSeconds = 120;
