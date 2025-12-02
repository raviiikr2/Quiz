import 'package:flutter/material.dart';
import 'package:adv_app/answer_button.dart';
import 'package:adv_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
 const QuestionScreen({required  this.onSelectAnswer, super.key});
  final void Function (String answer) onSelectAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {

  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer){
      widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex +=1;
    }); 
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: EdgeInsets.all(40),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              // styling based on google font
              style: GoogleFonts.lato(
                fontSize: 20,
                color: const Color.fromARGB(255, 237, 223, 252),
              fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...currentQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(item, (){
                answerQuestion(item);
              });
            }),
          ],
        ),
      ),
    );
  }

  // hard coded line we have to optimize it

  // AnswerButton(currentQuestion.answers[0], () {}),
  // SizedBox(height: 20),

  // AnswerButton(currentQuestion.answers[1], () {}),
  // SizedBox(height: 20),

  // AnswerButton(currentQuestion.answers[2], () {}),
  // SizedBox(height: 20),

  // AnswerButton(currentQuestion.answers[3], () {}),
}
