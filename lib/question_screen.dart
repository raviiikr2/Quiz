import 'package:flutter/material.dart';
import 'package:adv_app/answer_button.dart';
import 'package:adv_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text, style: TextStyle(color: Colors.white)),
          SizedBox(height: 20),
          AnswerButton(currentQuestion.answers[0],
          () {
            
          }),
          SizedBox(height: 20),

          AnswerButton(currentQuestion.answers[1], () {}),
          SizedBox(height: 20),

          AnswerButton(currentQuestion.answers[2], () {}),
          SizedBox(height: 20),

          AnswerButton(currentQuestion.answers[3], () {}),
        ],
      ),
    );
  }
}
