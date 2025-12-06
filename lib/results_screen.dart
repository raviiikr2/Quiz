import 'package:adv_app/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_app/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chooseAnswer,this.reStartQuiz, {super.key});

  final List<String> chooseAnswer;
  final void Function () reStartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chooseAnswer.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswer[i],
      });
    }
    return summary;
  }

  int getCorrectAnswerCount() {
    int correct = 0;
    for (var i = 0; i < chooseAnswer.length; i++) {
      if (chooseAnswer[i] == questions[i].answers[0]) {
        correct++;
      }
    }
    return correct;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 139, 28, 231),  // optional
      // backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            Text(
              "You answered ${getCorrectAnswerCount()} out of ${questions.length} correctly!",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            //  Scrollable Summary List
            Expanded(
              child: SingleChildScrollView(
                child: QuestionSummary(getSummaryData()),
              ),
            ),

            const SizedBox(height: 20),

            OutlinedButton.icon(
              onPressed: reStartQuiz,
              style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 139, 28, 231),
              textStyle: TextStyle(fontSize: 20),
            ),
              icon: Icon(Icons.refresh),
              label: Text('Restart!'),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
