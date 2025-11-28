import 'package:adv_app/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_app/home_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
 var  activeScreen = 'home-screen';

  void switchScreen() {
    setState(() {
      activeScreen =  'question-screen';
    });
  }

  @override

  Widget build(context) {
    Widget screenWidget = HomeScreen(switchScreen);

    if(activeScreen == 'question-screen'){
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
       home: Scaffold(
        backgroundColor: Color.fromARGB(244, 133, 3, 240),
        body : screenWidget
      ),
    );
  }
}
