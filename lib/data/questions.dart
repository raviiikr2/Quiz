import 'package:adv_app/model/quiz_question.dart';
 const questions = [
  QuizQuestion(
    'What is Flutter primarily used for?', 
    [
      'UI toolkit for building natively compiled apps',
      'Backend framework',
      'Database system',
      'Operating system'
    ],
  ),

  QuizQuestion(
    'Which language is used to write Flutter apps?', 
    [
      'Dart',
      'Java',
      'Kotlin',
      'Swift'
    ],
  ),

  QuizQuestion(
    'Which widget is used for immutable UI in Flutter?', 
    [
      'StatelessWidget',
      'StatefulWidget',
      'InheritedWidget',
      'Container'
    ],
  ),

  QuizQuestion(
    'Which method is used to update the UI in a StatefulWidget?', 
    [
      'setState()',
      'initState()',
      'dispose()',
      'build()'
    ],
  ),

  // ⭐ NEW QUESTIONS
  QuizQuestion(
    'What is the purpose of the build() method in Flutter?',
    [
      'To describe how the UI should look',
      'To initialize variables',
      'To update the app state',
      'To dispose resources'
    ],
  ),

  QuizQuestion(
    'Which widget is commonly used for layouts in a vertical direction?',
    [
      'Column',
      'Row',
      'Stack',
      'GridView'
    ],
  ),

  QuizQuestion(
    'Which command is used to create a new Flutter project?',
    [
      'flutter create project_name',
      'flutter init project_name',
      'flutter new project_name',
      'flutter start project_name'
    ],
  ),
];
