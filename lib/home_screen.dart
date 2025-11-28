import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',

            //without the help of opacity
            color: const Color.fromARGB(150, 255, 255, 255),
            width: 200,
          ),

          //with the help of opacity
          //   Opacity(
          //     opacity: 0.5,
          //  child:  Image.asset('assets/images/quiz-logo.png',
          //   width: 200),
          //   ),
          const SizedBox(height: 40),
          const Text(
            "Learn The Flutter In Fun Way!!",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(height: 40),

          // this outlinedButton.icon help to add icons in the button
          OutlinedButton.icon(
            onPressed: startQuiz,

            //styling the button
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 139, 28, 231),
              textStyle: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.arrow_right_alt, size: 40),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
